#include <iostream>
using namespace std;

void add(int m, int n){
    cout << m+n << endl;    
}

void add(int m, const int n){
    n = 1;
    cout << m+n << endl;
}

int main(void){
    int m=1, n=2;
    add(m, n);
    add(m, n);
    return 0;
}