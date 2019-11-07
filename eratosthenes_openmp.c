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

    char *flag = (char*)malloc(sizeof(char)*((N+1)/2+1));
    memset(flag, 0, ((N+1)/2+1));

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
    for(temp=2;temp<=(k+1)/2;++temp){
        if(flag[temp]==1){
            continue;
        }else{
            int i=2;
            int oddNumber=2*temp-1;
            int current=oddNumber*i;
            for(i=2;current<=N;){
                if(current%2 != 0) flag[(current+1)/2]=1;
                ++i;
                current = oddNumber*i;
            }
        }
    }

#ifdef PRINTPRIME
    for(temp=2;temp<((N+1)/2+1);++temp){
        if(flag[temp]==0) printf("%d ", 2*temp-1);
    }
#endif
    return 0;
}