#include <unistd.h>
#include <stdio.h>

int main(void){
    int messageLen;
    int fd0[2];
    int fd1[2];
    pid_t pid;
    char message[8];
    int status=101;
    int receiveN;

    if(pipe(fd0)<0 || pipe(fd1)<0){
        printf("pipe ERROR!\n");
        return 1;
    }
    if((pid=fork()) < 0){
        printf("fork ERROR!\n");
        return 2;
    }else if(pid > 0){
        close(fd0[1]);
        recordStatus = 0;
        while(1){
            write(fd1[1], "MESSAGE", 8);
            printf("process%d: %d\n", pid, status);
            receiveN = read(fd0[0], message, 8);
            status += 1;
            printf("process%d: %d\n", pid, status);
        }
    }else{
        close(fd1[1]);
        recordStatus = 0;
        while(1){
            receiveN = read(fd1[0], message, 8);
            status += 1;
            printf("process%d: %d\n", pid, status);
            sleep(1);
            write(fd0[1], "MESSAGE", 8);
            printf("process%d: %d\n", pid, status);
        }
    }
    return 0;
}