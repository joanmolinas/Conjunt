#include <iostream>
#include "conjunt.hpp"

string show_bool(bool b) {
    return b ? "true" : "false";
}

int main() {
    conjunt<int> a;
    a.insereix(1);
    // a.insereix(5);
    // a.insereix(7);
    a.print(cout);
    cout<<endl;

    // cout<<show_bool(a.conte(2))<<endl;
    // cout<<show_bool(a.conte(-1))<<endl;
    // cout<<show_bool(a.conte(5))<<endl;
    // cout<<a.card()<<endl;
    // a.print(cout);
    // cout<<endl;

    conjunt<int> b;
    b.insereix(1);
    // b.insereix(2);
    // b.insereix(4);
    // b.insereix(6);
    // b.insereix(8);
    b.insereix(9);
    b.print(cout);
    cout<<endl;

    conjunt<int> c = a + b;
    // conjunt<int> c2 = a - b;
    // conjunt<int> c3 = a * b;
    c.print(cout);
    c.print_reversed(cout);
    // c2.print(cout);
    // c3.print(cout);
    //
    //
    //  conjunt<int> d;
    //  d.insereix(1);
    //  d.insereix(2);
    //  d.insereix(3);
    //
    //  conjunt<int> e;
    //  e.insereix(1);
    //  e.insereix(2);
    //  e.insereix(4);
    //
    //  conjunt<int> f = e;
    //  f.print(cout);
    //
    //  bool equals = d!=e;
    //  cout<<"Differents "<<equals<<endl;

    //  conjunt<int> d;
    //  d.insereix(1);
    //  d.insereix(11);
    //  d.insereix(2);
    //  d.insereix(10);
    //  d.insereix(3);
    //  d.insereix(9);
    //  d.insereix(4);
    //  d.insereix(8);
    //  d.insereix(5);
    //  d.insereix(7);
    //  d.print(cout);
    //  d.print_reversed(cout);
     //
     //
    //  conjunt<int> b(d);
    //  b.print(cout);
    //  b.print_reversed(cout);

    return 0;
}
