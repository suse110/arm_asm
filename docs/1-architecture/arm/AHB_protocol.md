![](image/AHB_protocol/1651301426689.png)


* Burst传输不能跨越1K边界，即到达1K边界需要用NONSEQ发起一次新的传输

  **为什么burst传输不能跨越1K边界？**
  ARM的回答：The 1KB restriction you refer to is not a restriction on maximum slave size but a constraint within AHB that says that a burst must not cross a 1KB boundary. The limit is designed to prevent bursts crossing from one device to another and to give a reasonable trade-off between burst size and efficiency. In practise, this means that a master must ALWAYS break a burst that would otherwise cross the 1KB boundary and restart it with a non-sequential transfer.
