#include <stdio.h>
#include <math.h>
int main(void)
{
    double x, y;
    for(y=1; y>=-1; y-=0.05, putchar('\n')){
        for(x=-1; x<=1; x+=0.025)
            putchar(" *"[
                x*x + y*y < 1 &&
                fabs(atan2(y, x)) > 0.5 &&
                x*x + pow(y-0.5, 2) > 0.02
            ]);
    }
    return 0;
}