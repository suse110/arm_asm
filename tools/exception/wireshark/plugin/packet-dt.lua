-- https://zhuanlan.zhihu.com/p/114669991
do
    --协议名称为DT，在Packet Details窗格显示为Nselab.Zachary DT
    local p_DT = Proto("DT","Nselab.Zachary DT")
    --协议的各个字段
    local f_identifier = ProtoField.uint8("DT.identifier","Identifier", base.HEX)
    --这里的base是显示的时候的进制，详细可参考https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html#lua_class_ProtoField
    local f_speed = ProtoField.uint8("DT.speed", "Speed", base.HEX)

    --这里把DT协议的全部字段都加到p_DT这个变量的fields字段里
    p_DT.fields = {f_identifier, f_speed}

    --这里是获取data这个解析器
    local data_dis = Dissector.get("data")

    local function DT_dissector(buf,pkt,root)
        local buf_len = buf:len();
        --先检查报文长度，太短的不是我的协议
        if buf_len < 16 then return false end

        --验证一下identifier这个字段是不是0x12,如果不是的话，认为不是我要解析的packet
        local v_identifier = buf(0, 1)
        if (v_identifier:uint() ~= 0x12)
        then return false end

        --取出其他字段的值
        local v_speed = buf(1, 1)

        --现在知道是我的协议了，放心大胆添加Packet Details
        local t = root:add(p_DT,buf)
        --在Packet List窗格的Protocol列可以展示出协议的名称
        pkt.cols.protocol = "DT"
        --这里是把对应的字段的值填写正确，只有t:add过的才会显示在Packet Details信息里. 所以在之前定义fields的时候要把所有可能出现的都写上，但是实际解析的时候，如果某些字段没出现，就不要在这里add
        t:add(f_identifier,v_identifier)
        t:add(f_speed,v_speed)

        local raw_data = buf(2, buf:len() - 2)
        Dissector.get("eth_maybefcs"):call(raw_data:tvb(), pkt, root)
        pkt.cols.protocol:append("-DT")
        return true
    end

    --这段代码是目的Packet符合条件时，被Wireshark自动调用的，是p_DT的成员方法
    function p_DT.dissector(buf,pkt,root) 
        if DT_dissector(buf,pkt,root) then
            --valid DT diagram
        else
            --data这个dissector几乎是必不可少的；当发现不是我的协议时，就应该调用data
            data_dis:call(buf,pkt,root)
        end
    end

    local udp_encap_table = DissectorTable.get("udp.port")
    --因为我们的DT协议的接受端口肯定是50002，所以这里只需要添加到"udp.port"这个DissectorTable里，并且指定值为50002即可。
    udp_encap_table:add(50002, p_DT)
end
