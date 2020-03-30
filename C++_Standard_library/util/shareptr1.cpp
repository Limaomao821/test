#include <iostream>
#include <string>
#include <vector>
#include <memory>

using namespace std;

int main(void){
    shared_ptr<string> pNico(new string("nico"));
    shared_ptr<string> pJutta(new string("jutta"));

    (*pNico)[0] = 'N';
    pJutta->replace(0,1,"J");

    vector< shared_ptr<string> > whoMadeCoffe;
    whoMadeCoffe.push_back(pJutta);
    whoMadeCoffe.push_back(pJutta);
    whoMadeCoffe.push_back(pNico);
    whoMadeCoffe.push_back(pJutta);
    whoMadeCoffe.push_back(pNico);

    for(auto ptr:whoMadeCoffe){
        cout << *ptr << " ";
    }
    cout << endl;

    *pNico = "Nicolai";

    for(auto ptr:whoMadeCoffe){
        cout << *ptr << " ";
    }
    cout << endl;

    cout << "use_count: " << whoMadeCoffe[0].use_count() << endl;
}