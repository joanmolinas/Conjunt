#include <iostream>
#include "conjunt.hpp"

string show_bool(bool b) {
    return b ? "true" : "false";
}

int main() {
    conjunt<int> a;
    a.insereix(1);
    a.insereix(2);
    a.print(cout);
    cout<<endl;

    cout<<show_bool(a.conte(2))<<endl;
    cout<<show_bool(a.conte(-1))<<endl;
    cout<<show_bool(a.conte(5))<<endl;
    cout<<a.card()<<endl;
    a.print(cout);
    cout<<endl;

    conjunt<int> b;
    b.insereix(2);
    b.insereix(3);
    b.insereix(4);
    b.print(cout);
    cout<<endl;
    
    conjunt<int> c = a + b;
    conjunt<int> c2 = a - b;
    conjunt<int> c3 = a * b;
    c.print(cout);
    c2.print(cout);
    c3.print(cout);


     conjunt<int> d;
     d.insereix(1);
     d.insereix(2);
     d.insereix(3);

     conjunt<int> e;
     e.insereix(1);
     e.insereix(2);
     e.insereix(4);

     conjunt<int> f = e;
     f.print(cout);

     bool equals = d!=e;
     cout<<"Differents "<<equals<<endl;


    return 0;
}
