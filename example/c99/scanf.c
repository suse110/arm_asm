#include<stdio.h>
#define MAX 100
//  要巧妙使用scanf，支持正则式，而且可以超越每次读到空白就终止的限制
int  main(){
    int i = 0;
    char s1[MAX],s2[MAX];
 
    //scanf("%[^\n]\n",s1);
    //read till meet '\n',and then trash the \n
    
    //scanf("%[^,]",s1); //?? also will  trash the coma
    //scanf("%[^,],",s1); // this does not trash the coma
    
    //this * can make us skip some input
    //for example,we just care the last-name
    scanf("%*s %s",s1);
 
    printf("%s\n",s1);
 
 
 
    return 0;
}

#include <stdio.h>
 
int main(){
    
    int n = 6;
    int val = 1000;
    char s[100];
    printf("%*d", n, val);// with a minimum width of n,default right aligned    
    printf("hello\n");
 
    //scanf("%*d");//read an integer and ignore it
 
    //scanf has regex built into it
    //read only selected chars into a string
    //scanf("%[abcd]s", s);
 
    
    //read everything excepted heading with abcd
    //scanf("%[^abcd]s" ,s);
 
    /* some complain that scanf reads upto a whitespace, 
    so this trick can be used to consume everything upto a newline */
    scanf("%[^\n]s", s); 
    // reads all chars (including whitespaces) till newline is encountered.
 
    printf("s = %s\n", s); 
    /* Another trick with scanf is to consume what is required. 
    For example - If  a user enters his date of birth in YYYY-MM-DD 
    then you can directly read the year month and date into integer variables */
    //scanf("%d-%d-%d", &yy, &mm, &dd); 
    /* where yy, mm, dd are variables.
    Note that this will work only with that format of input. 
    Anything else like YYYY/MM/DD,and the program will mostly crash. 
    You specify a hyphen, it expects only a hyphen! */
 
    return 0;
}
//利用scanf的返回值来识别是否到达文件尾EOF；当errno=0时%m格式会输出“Success”;brk(0)可以作为 return 0 的替代；

#include <stdio.h>
 
int main(){
    int n;
    //util reach EOF(ctrl + D) 
    while(~scanf("%d",&n)){
        //logic process
        printf("%d^2 = %d\n", n, n*n);
    }   
 
    // %m print success only if errno = 0
    printf("%m\n");
    brk(0);

    scanf("%[^, ]", a);//不会删除逗号
    scanf("%[^, ],", a);//这是一个逗号
    scanf("%[^\n]\n,", a);//会一直读取到'\n'，然后再丢弃'\n'
    scanf("%*s%s", last_name);
}


