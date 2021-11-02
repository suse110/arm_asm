#include <stdio.h>
#include "fifo.h"
#include "CuTest.h"

fifo_t *fifo_init(unsigned char *buffer, unsigned int size);
fifo_t *fifo_alloc(unsigned int size);
unsigned int fifo_put(fifo_t *fifo, const unsigned char *buffer, unsigned int len);
unsigned int fifo_get(fifo_t *fifo, unsigned char *buffer, unsigned int len);


static fifo_t *fifo;
#define FIFO_MAX_SIZE 8
void test_fifo_init(CuTest* tc)
{
    static unsigned char buffer[FIFO_MAX_SIZE];
    fifo = fifo_init(buffer, FIFO_MAX_SIZE);
	
	CuAssert(tc, "fifo init return null", fifo != NULL);
}

void test_fifo_alloc(CuTest* tc)
{
    fifo = fifo_alloc(FIFO_MAX_SIZE);
	
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
    len1 = fifo_put(fifo, pchr, FIFO_MAX_SIZE);
    len2 = fifo_get(fifo, gchr, 5);
    for (i=0; i <5; i++) {
        CuAssertIntEquals(tc, pchr[i], gchr[i]);
    }
	len1 = fifo_put(fifo, &pchr[3], 5);
    len2 = fifo_get(fifo, gchr, FIFO_MAX_SIZE);
    CuAssertIntEquals(tc, 5, len1);
    CuAssertIntEquals(tc, 5, len2);
    for (i=0; i <5; i++) {
        CuAssertIntEquals(tc, pchr[(i+3)%FIFO_MAX_SIZE], gchr[i]);
    }
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
    return 0;
}
