#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>

int main(void){
    //find prime number in range [1,N]
    int N;

    printf("input N to find prime number in range [1,N]:\n");
    scanf("%d", &N);

    char *flag = (char*)malloc(sizeof(char)*(N+1));
    memset(flag, 0, N+1);

#ifndef SINGLETHREAD
    int processor_num = omp_get_num_procs();
    omp_set_num_threads(processor_num);
    printf("%d\n", processor_num);
#endif

    int temp=2;
    int k = sqrt(N);
#ifndef SINGLETHREAD
    #pragma omp parallel for schedule(dynamic)
#endif
    for(temp=2;temp<=k;++temp){
        int i=2;
        int current=temp*i;
        for(i=2;current<=N;){
            flag[current]=1;
            ++i;
            current = temp*i;
        }
    }

    return 0;
}