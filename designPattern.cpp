#include <iostream>
using namespace std;

class operation{
public:
    double getResult(double numberA, double numberB, char symbol){
        try{
            switch(symbol){
            case '+':
                return numberA + numberB;
            case '-':
                return numberA - numberB;
            case '*':
                return numberA * numberB;
            case '/':
                if(numberB == 0) throw numberB;
                else return numberA / numberB;
            default:
                throw symbol;
        }
        }catch(double){
            cout << "cannot be zero.\n";
        }catch(...){
            cout << "illegal input.\n";
        }

    }
};

int main(void){
    double numberA, numberB;
    char symbol;
    cin >> numberA >> numberB >> symbol;
    operation cal;
    double result = cal.getResult(numberA, numberB, symbol);
    cout << result;
    return 0;
}