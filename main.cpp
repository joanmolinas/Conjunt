#include <iostream>
#include "conjunt.hpp"
using namespace std;
string show_bool(bool b) {
    return b ? "true" : "false";
}

int main() {
    conjunt<int> a;
    conjunt<int> b;
    b.insereix(11);
    b.intersectar(a);
    b.print(cout);
    cout<<a.card()<<endl;

    try {
      a.min();
    } catch(error e) {
      cout<<"necessita que estigui ple"<<endl;
    }

    return 0;
}
