/* gcc fifo_test.c -o fifo_test */
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(void)
{
    const int N = 4;          /* quatro processos-filho */
    for(int i=0;i<N;i++) {
        pid_t pid = fork();
        if(pid == 0) {
            printf("Filho %d START pid=%d\n", i, getpid());
            /* CPU-bound por ~3s */
            for(volatile unsigned long k=0; k<600000000UL; k++);
            printf("Filho %d END   pid=%d\n", i, getpid());
            _exit(0);
        }
    }

    /* Pai espera todos os filhos */
    for(int i=0;i<N;i++) wait(NULL);
    puts("PAI terminou.");
    return 0;
}
