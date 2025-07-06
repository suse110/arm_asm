# 数据流解析的方式：

## 状态机

根据协议不同阶段，用不同状态机状态表示，比如head阶段，length阶段，payload阶段

## buffer里有足够多数据时再处理

1. 比如有header长度的数据后才读出数据解析
2. 从header解析出payload的数据长度
3. 有payload长度数据后在从buffer里读payload个byte的数据
