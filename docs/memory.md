## Why DMA needs non-bufferable buffers?
> i am sure what is the use of non-cacheable(data need to be be required from cache because of genuinity i,e Speech and audio). But what non-bufferable means?

* Bufferable means that any writes to the memory may be temporarily 
buffered in the CPU before going out to the memory.

* If you write something to bufferable memory, and then immediately start a DMA process from that memory, the data may still be in the write buffer, and the DMA engine will grab the old data from the memory before the write has been completed.

* It is still possible to use bufferable (and/or cacheable) memory for DMA operations, as long as you ensure that the data has been written to memory before starting the DMA write. In some cases, this is a better solution that making the memory non-cacheable or non-bufferable.


https://www.sciencedirect.com/topics/engineering/memory-map
https://www.sciencedirect.com/topics/engineering/memory-attribute