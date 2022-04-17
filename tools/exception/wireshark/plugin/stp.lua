-- 我自定义的协议
-- struct ssstp_protocol
-- {
	-- char type;
	-- unsigned short length;
	-- unsigned short flag;
	-- unsigned short id;
	-- char* data;
-- }
print("hello stp")
-- 定义自己的协议协议名称为SSSTP，在Packet Details窗格显示为 Serial Transmission Protocol
ssstp_proto = Proto("SSSTP", "Serial Transmission Protocol")


-- -- for bit field
-- F_esp3_flag_size1_bit_0123 = ProtoField.uint8("esp3.flag_bit","b0123", base.HEX, None, 0x0F)
-- F_esp3_flag_size1_bit_4567 = ProtoField.uint8("esp3.flag_bit","b4567", base.HEX, None, 0xF0)

-- 协议的各个字段
-- 创建几个ProtoField对象，就是主界面中部Packet Details窗格中能显示的那些属性
-- 第一个参数用于过滤器的字段，第二个是数据显示时的名称，第三个是数据类型
ssstp_type = ProtoField.uint8("ssstp.type", "type", base.HEX) 
ssstp_length = ProtoField.uint16("ssstp.length", "length", base.DEC)
ssstp_flag = ProtoField.uint16("ssstp.flag", "flag", base.HEX,
--这个字段的数字值都有相应的含义，可以自动对应成字符串
{
    [0] = "no format", 
    [1] = "error", 
    [2] = "warning", 
    [3] = "info", 
    [4] = "debug",
    [5] = "debug1",
    [6] = "debug2",
    [7] = "debug3",
    [8] = "debug4"
})
--所有可能的字段都要定义，到时没有t:add就不会显示
ssstp_id = ProtoField.uint16("ssstp.id", "id", base.HEX)
ssstp_payload = ProtoField.none("ssstp.payload", "payload", base.HEX)

--把ProtoField对象加到Proto对象上
ssstp_proto.fields = {
    ssstp_type,
    ssstp_length,
    ssstp_flag,
    ssstp_id,
    ssstp_payload,
}

-- 用Dissector.get函数可以获得另外一个协议的解析组件
-- data这个dissector几乎是必不可少的；当发现不是我的协议时，就应该调用data
local data_dis = Dissector.get("data")
-- data_dis:call(tvb, pinfo, tree)

-- pinfo.cols.info:set 怎么用？

-- 为Proto对象添加一个名为dissector的函数，Wireshark会对每个“相关”数据包调用这个函数
-- tvb: data buffer, 一个Tvb 对象
-- pinfo: 显示的信息，pinfo对象
-- tree：包结构的关系，显示在图形化中的树形结构，Treeitem对象
function ssstp_proto.dissector(tvb, pinfo, tree)
	if tvb:len() == 0 then return end
	head_len = 7
    print("----")
    print(tvb)

    print("----")
    
    --显示在protocol列的名字
    pinfo.cols.protocol = ssstp_proto.name
    --显示在数据查看,会在Packet Details窗格中增加一行协议
	local subtree = tree:add(ssstp_proto, tvb(), "STP data") 
    -- 在Packet Details窗格中增加一行属性，并指定要鼠标点击该属性时Packet Bytes窗格中会选中哪些字节
    local head_st = subtree:add(ssstp_proto, tvb(0,head_len), "header")
    local payload_st = subtree:add(ssstp_proto, tvb(head_len, tvb:len() - head_len), "payload")

    -- 根据字段大小，添加到子树
    head_st:add_le(ssstp_type, tvb(0,1)):append_text("(Type)") -- 解析成具体的类型提示追加在字段后面
    head_st:add_le(ssstp_length, tvb(1,2)):append_text("(Length)")
    head_st:add_le(ssstp_flag, tvb(3,2)):append_text("(Flag)")
    head_st:add_le(ssstp_id, tvb(5,2)):append_text("(ID)")

    -- 字段一并显示到info列上
    local type    = tvb(0,1):le_uint()
    local length  = tvb(1,2):le_uint() --要复用的可以定义成变量
    local flag    = tvb(3,2):le_uint()
    local id      = tvb(5,2):le_uint()
    local payload = tvb(head_len, length - 4)
    
    -- DissectorTable
    -- 剩下的字节为payload
    payload_st:add_le(ssstp_payload, payload)

    print(string.format("type    = %x", type))
    print(string.format("length  = %x", length))
    print(string.format("flag    = %x", flag))
    print(string.format("id      = %x", id))
    print(string.format("payload = %s", payload))
    local info_str = string.format("[type]:%x [len]:%x [flag]:%x [id]:%x", type, length, flag, id)
    pinfo.cols.info:append(info_str)

end
local dt = DissectorTable.list()
for _,name in ipairs(dt) do
    print(name)
end
--所有的dissector都是以“table”的形式组织的，table表示上级协议
--这个是获得udp协议的DissectorTable，并且以端口号排列
local udp_port = DissectorTable.get("udp.port") --如果获取tcp就是tcp.port
print(type(udp_port))
--抓到源或目的为10000端口的数据，按ssstp_proto的规则来解析.解析规则为ssstp_proto.dissector，会自动调用
-- udp_port:add(10000, ssstp_proto)
register_postdissector(ssstp_proto)
