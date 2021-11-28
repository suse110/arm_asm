#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "ringbuffer.h"
#include "CuTest.h"


#define FIFO_MAX_SIZE 128

bool rb_memcheck(uint8_t *buffer1, uint8_t *buffer2, uint32_t length)
{
    for (uint32_t i=0; i < length; i++) {
        if (buffer1[i] != buffer2[i]) {
            return false;
        }
    }
    return true;
}

void test_rb_write_1(CuTest* tc)
{
    uint8_t rbuffer[FIFO_MAX_SIZE];
    uint8_t wbuffer[FIFO_MAX_SIZE];
    uint32_t len;
    ringbuffer_t *rb;

    //init初始化测试
    uint8_t buffer[FIFO_MAX_SIZE];
    rb = rb_init(buffer, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, true, rb_empty(rb));
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->size);
    CuAssertIntEquals(tc, 0, rb->wptr);
    CuAssertIntEquals(tc, 0, rb->rptr);

    //alloc初始化测试
    rb = rb_alloc(FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->size);
    
    memset(wbuffer, 0x55, FIFO_MAX_SIZE);
    memset(rbuffer, 0x00, FIFO_MAX_SIZE);
    // write/read 测试
    len = rb_write(rb, wbuffer, FIFO_MAX_SIZE/2);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE/2, len);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE/2, rb->wptr);
	CuAssertIntEquals(tc, 0, rb->rptr);
    len = rb_write(rb, wbuffer, FIFO_MAX_SIZE/2);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE/2, len);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->wptr);
	CuAssertIntEquals(tc, 0, rb->rptr);
    len = rb_read(rb, rbuffer, FIFO_MAX_SIZE);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->wptr);
	CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->rptr);
	CuAssertIntEquals(tc, true, rb_memcheck(rbuffer, wbuffer, FIFO_MAX_SIZE));
	CuAssertIntEquals(tc, len, FIFO_MAX_SIZE);


    rb_reset(rb);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->size);
    CuAssertIntEquals(tc, 0, rb->wptr);
    CuAssertIntEquals(tc, 0, rb->rptr);
    rb_free(rb);
    CuAssertIntEquals(tc, (unsigned long)NULL, (unsigned long)rb->buffer);   

    rb = rb_alloc(FIFO_MAX_SIZE - 1);
    CuAssertIntEquals(tc, true, rb_empty(rb));
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->size); 
    rb_free(rb);
    rb = rb_alloc(FIFO_MAX_SIZE + 1);
    CuAssertIntEquals(tc, true, rb_empty(rb));
    CuAssertIntEquals(tc, FIFO_MAX_SIZE*2, rb->size); 
    rb_free(rb);
}

void test_rb_write_2(CuTest* tc) 
{

    uint8_t pchr[FIFO_MAX_SIZE];
    uint8_t gchr[FIFO_MAX_SIZE] = {0};
    uint32_t len1, len2, i;
    ringbuffer_t *rb;
    uint8_t buffer[FIFO_MAX_SIZE];
    rb = rb_init(buffer, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->size);

	CuAssert(tc, "rb init return null", rb != NULL);

    for (i=0; i <FIFO_MAX_SIZE; i++) {
        pchr[i] = i;
    }
    rb_reset(rb);
    CuAssertIntEquals(tc, 0, rb->rptr);
    CuAssertIntEquals(tc, 0, rb->wptr);

    CuAssertIntEquals(tc, true, rb_empty(rb));

    //FIFO 放满
    len1 = rb_write(rb, pchr, FIFO_MAX_SIZE+1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, len1);//
    CuAssertIntEquals(tc, 0, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->wptr);
    len1 = rb_write(rb, pchr, 1);
    CuAssertIntEquals(tc, 0, len1);
    CuAssertIntEquals(tc, 0, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->wptr);
    CuAssertIntEquals(tc, false, rb_empty(rb));

    len2 = rb_read(rb, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    
    CuAssertIntEquals(tc, pchr[0], gchr[0]);
    CuAssertIntEquals(tc, pchr[1], gchr[1]);
    CuAssertIntEquals(tc, pchr[2], gchr[2]);
    CuAssertIntEquals(tc, pchr[3], gchr[3]);
    CuAssertIntEquals(tc, pchr[4], gchr[4]);
    
	len1 = rb_write(rb, &pchr[3], 5);
    CuAssertIntEquals(tc, 5, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE+5, rb->wptr);

    len2 = rb_read(rb, gchr, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, 5, len1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, len2);
    
    CuAssertIntEquals(tc, pchr[5], gchr[0]);
    CuAssertIntEquals(tc, pchr[6], gchr[1]);
    CuAssertIntEquals(tc, pchr[7], gchr[2]);
    CuAssertIntEquals(tc, pchr[8], gchr[3]);
    CuAssertIntEquals(tc, pchr[9], gchr[4]);
    CuAssertIntEquals(tc, pchr[10], gchr[5]);
    CuAssertIntEquals(tc, pchr[11], gchr[6]);
    CuAssertIntEquals(tc, pchr[12], gchr[7]);
    printf("[%s] rptr=%d\n", __func__, rb->rptr);
    printf("[%s] wptr=%d\n", __func__, rb->wptr);

    CuAssertIntEquals(tc, 0, rb->rptr);
    CuAssertIntEquals(tc, 0, rb->wptr);
    CuAssertIntEquals(tc, true, rb_empty(rb));

    //放满rb
    len1 = rb_write(rb, pchr, FIFO_MAX_SIZE+1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, len1);
    CuAssertIntEquals(tc, true, rb_full(rb));
    //取走FIFO_MAX_SIZE-1个
    len2 = rb_read(rb, gchr, FIFO_MAX_SIZE - 1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb->wptr);
    CuAssertIntEquals(tc, false, rb_full(rb));
    
    //放入FIFO_MAX_SIZE-1个
    len1 = rb_write(rb, pchr, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, len1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE*2-1, rb->wptr);

    //取走5个
    len2 = rb_read(rb, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5, rb->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE*2-1, rb->wptr);
    //放5个
    len2 = rb_write(rb, pchr, 50);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5, rb->rptr);
    CuAssertIntEquals(tc, 4, rb->wptr);
    CuAssertIntEquals(tc, false, rb_empty(rb));

    // CuAssertIntEquals(tc, FIFO_MAX_SIZE, rb_data_len(rb));

    //取走5个
    len2 = rb_read(rb, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5+5, rb->rptr);
    CuAssertIntEquals(tc, 4, rb->wptr);

}

CuSuite* CuGetSuite(void)
{
	CuSuite* suite = CuSuiteNew();

	SUITE_ADD_TEST(suite, test_rb_write_1);
	// SUITE_ADD_TEST(suite, test_rb_write_2);
}

void RunAllTests(void)
{
	CuString *output = CuStringNew();
	CuSuite* suite = CuSuiteNew();

	CuSuiteAddSuite(suite, CuGetSuite());

	CuSuiteRun(suite);
	CuSuiteSummary(suite, output);
	CuSuiteDetails(suite, output);
	printf("%s\n", output->buffer);
}

int main(void)
{
	RunAllTests();
    uint8_t a = 2;
    uint8_t b = 7;
    uint8_t c = a - b;
    int d = c + 2;
    printf("c=%u d=%d\n",c,(int)d);
    uint32_t val = 0xFFFFFFFF - 2;
    printf("val+2=%x\r\n", val+2);
    printf("val+3=%x\r\n", val+3);
    uint32_t a1=0;
    uint32_t a2=0xFFFFFFFB;
    printf("a1-a2=%x\r\n", a1-a2);
    return 0;
}
