#define likely(x) __builtin_expect(!!(x), 1) //x大概率为真
#define unlikely(x) __builtin_expect(!!(x), 0) //x大概率为假

static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static void uart_print(const char* s)
{
    while (*s != '\0') {
        *UART_DR = *s;
        s++;
    }
}
    char array[2800] = {2};

void likely_test(int n)
{
    int x=n, y = 3;
    char arr[28];
    if (likely(x)) {
        y += 1;
        y += 1;
        y += 1;
    } else {
        y += 2;
        y += 2;
        y += 2;
        y += 2;
    }
    arr[0] = '0' + y;
    arr[1] = '\0';
    array[1] = 1;
    uart_print(arr);
    uart_print(array);
}
int switch_case_test(int a)
{
    int b = 0;
    switch(a) {
    case 9: b += a; //break;
    case 8: b += a; //break;
    case 7: b += a; //break;
    case 6: b += a; //break;
    case 5: b += a; //break;
    case 4: b += a; //break;
    case 3: b += a; //break;
    case 2: b += a; //break;
    case 1: b += a; //break;
    case 0: b += a; //break;
    default:break;
    }
    return b;
}
void c_entry(void)
{
    uart_print("hello world\n");
    int x = 3;
    likely_test(x);
    for (int i=9; i; i--) {
        x += switch_case_test(i);
    }
    
    while(1);
}
