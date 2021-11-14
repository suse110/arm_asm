#include <stdio.h>
#include "fifo.h"
#include "CuTest.h"

fifo_t *fifo_init(unsigned char *buffer, unsigned int size);
fifo_t *fifo_alloc(unsigned int size);
unsigned int fifo_put(fifo_t *fifo, const unsigned char *buffer, unsigned int len);
unsigned int fifo_get(fifo_t *fifo, unsigned char *buffer, unsigned int len);


static fifo_t *fifo;
#define FIFO_MAX_SIZE 128
void test_fifo_init(CuTest* tc)
{
    static unsigned char buffer[FIFO_MAX_SIZE];
    fifo = fifo_init(buffer, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo->size);

	CuAssert(tc, "fifo init return null", fifo != NULL);
}

void test_fifo_alloc(CuTest* tc)
{
    fifo = fifo_alloc(FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo->size);

	CuAssert(tc, "fifo alloc return null", fifo != NULL);
}
void test_fifo_put_1(CuTest* tc)
{
    unsigned char pchr = 1;
    unsigned char gchr = 0;
    unsigned int len1, len2;

    len1 = fifo_put(fifo, &pchr, 1);
    len2 = fifo_get(fifo, &gchr, 1);
	
	CuAssert(tc, "fifo alloc return null", (len1==len2) && (pchr == gchr) && (pchr==1));
}

void test_fifo_put_2(CuTest* tc) 
{
    unsigned char pchr[FIFO_MAX_SIZE];
    unsigned char gchr[FIFO_MAX_SIZE] = {0};
    unsigned int len1, len2, i;
    for (i=0; i <FIFO_MAX_SIZE; i++) {
        pchr[i] = i;
    }
    fifo_reset(fifo);
    CuAssertIntEquals(tc, 0, fifo->rptr);
    CuAssertIntEquals(tc, 0, fifo->wptr);

    CuAssertIntEquals(tc, true, fifo_empty(fifo));

    //FIFO 放满
    len1 = fifo_put(fifo, pchr, FIFO_MAX_SIZE+1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, len1);//
    CuAssertIntEquals(tc, 0, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo->wptr);
    len1 = fifo_put(fifo, pchr, 1);
    CuAssertIntEquals(tc, 0, len1);
    CuAssertIntEquals(tc, 0, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo->wptr);
    CuAssertIntEquals(tc, false, fifo_empty(fifo));

    len2 = fifo_get(fifo, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    
    CuAssertIntEquals(tc, pchr[0], gchr[0]);
    CuAssertIntEquals(tc, pchr[1], gchr[1]);
    CuAssertIntEquals(tc, pchr[2], gchr[2]);
    CuAssertIntEquals(tc, pchr[3], gchr[3]);
    CuAssertIntEquals(tc, pchr[4], gchr[4]);
    
	len1 = fifo_put(fifo, &pchr[3], 5);
    CuAssertIntEquals(tc, 5, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE+5, fifo->wptr);

    len2 = fifo_get(fifo, gchr, FIFO_MAX_SIZE);
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
    printf("[%s] rptr=%d\n", __func__, fifo->rptr);
    printf("[%s] wptr=%d\n", __func__, fifo->wptr);

    CuAssertIntEquals(tc, 0, fifo->rptr);
    CuAssertIntEquals(tc, 0, fifo->wptr);
    CuAssertIntEquals(tc, true, fifo_empty(fifo));

    //放满fifo
    len1 = fifo_put(fifo, pchr, FIFO_MAX_SIZE+1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, len1);
    CuAssertIntEquals(tc, true, fifo_full(fifo));
    //取走FIFO_MAX_SIZE-1个
    len2 = fifo_get(fifo, gchr, FIFO_MAX_SIZE - 1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo->wptr);
    CuAssertIntEquals(tc, false, fifo_full(fifo));
    
    //放入FIFO_MAX_SIZE-1个
    len1 = fifo_put(fifo, pchr, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, len1);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE*2-1, fifo->wptr);

    //取走5个
    len2 = fifo_get(fifo, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5, fifo->rptr);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE*2-1, fifo->wptr);
    //放5个
    len2 = fifo_put(fifo, pchr, 50);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5, fifo->rptr);
    CuAssertIntEquals(tc, 4, fifo->wptr);
    CuAssertIntEquals(tc, false, fifo_empty(fifo));

    // CuAssertIntEquals(tc, FIFO_MAX_SIZE, fifo_data_len(fifo));

    //取走5个
    len2 = fifo_get(fifo, gchr, 5);
    CuAssertIntEquals(tc, 5, len2);
    CuAssertIntEquals(tc, FIFO_MAX_SIZE - 1 + 5+5, fifo->rptr);
    CuAssertIntEquals(tc, 4, fifo->wptr);

}

CuSuite* CuGetSuite(void)
{
	CuSuite* suite = CuSuiteNew();

	SUITE_ADD_TEST(suite, test_fifo_init);
	SUITE_ADD_TEST(suite, test_fifo_alloc);
	SUITE_ADD_TEST(suite, test_fifo_put_1);
	SUITE_ADD_TEST(suite, test_fifo_put_2);
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
    unsigned char a = 2;
    unsigned char b = 7;
    unsigned char c = a - b;
    int d = c + 2;
    printf("c=%u d=%d\n",c,(int)d);
    return 0;
}
