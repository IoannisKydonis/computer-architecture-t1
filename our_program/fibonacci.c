#include <stdio.h>
#include <stdlib.h>

int fib(int num) {
    // F(n) = F(n - 1) + F(n - 2) with base cases F(0) = 0 and F(1) = 1
    return num <= 1 ? num : fib(num - 1) + fib(num - 2);
}

int main(int argc, char **argv) {
    // Check for illegal input
    if (argc > 2)
        return 1;

    // If no argument is passed then set 20 as default
    int num = argc == 2 ? atoi(argv[1]) : 20;

    // Check for invalid input
    if (num < 0)
        return 1;

    // Calculate and print Fibonacci series
    int i;
    for (i = 0; i <= num; i++)
        printf("%d ", fib(i));
    printf("\n");
    return 0;
}