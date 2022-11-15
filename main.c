#include<stdio.h>
#include"operation.h"
int main(){
    int a = 400;
    int b = 900;
    printf("%d\n",min(a,b));
    printf("%d\n",max(a,b));
    printf("%d\n",gcd(a,b));
    return 0;
}