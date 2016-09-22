/*Driver per la classe generica conjunt (basat en gen_driver)
  Modificacio amb data: 10-10-2012 (introduccio de TypeTraits) 
*/

#include <string>
#include <iostream>
#include <esin/error>
#include <esin/gen_driver>
#include <esin/util>

#include "conjunt.hpp"

/* TypeTraits */
template <>
const char* TypeTraits<conjunt<int> >::name = "conjunt<int>";

template <>
const char* TypeTraits<conjunt<string> >::name = "conjunt<string>";

// imprimir 
template <typename T>
ostream& operator<<(ostream& os, const conjunt<T>& cj) {
  cj.print(os);
  return os;
}

ostream& operator<=(ostream& os, const bool b) {
  os << (b ? "true" : "false");
  return os;
}

void* user_init(gen_driver& dr) {
  string id = dr.args(1);
  string tid = dr.args(2);
  if (tid == "conjunt<int>") { 
    if (dr.nargs() != 2)
      throw error(gen_driver::WrongNumArgs,gen_driver::nom_mod,gen_driver::WrongNumArgsMsg);
    return static_cast<void*>(new conjunt<int>);
  }
  if (tid == "conjunt<string>") { 
    if (dr.nargs() != 2)
      throw error(gen_driver::WrongNumArgs,gen_driver::nom_mod,gen_driver::WrongNumArgsMsg);
    return static_cast<void*>(new conjunt<string>);
  }
  throw error(gen_driver::WrongTypeArgs,gen_driver::nom_mod,gen_driver::WrongTypeArgsMsg);

}



template <typename T>
void print(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  dr.get_ostream() << (*cj) << endl;
}

template <typename T>
void insereix(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  T* x = dr.template object<T>(1);
  cj -> insereix(*x);
}    

template <>
void insereix<int>(gen_driver& dr) {
  conjunt<int>* cj = dr.object<conjunt<int> >();
  cj -> insereix(util::toint(dr.args(1)));
}    

template <>
void insereix<string>(gen_driver& dr) {
  conjunt<string>* cj = dr.object<conjunt<string> >();
  cj -> insereix(dr.args(1));
}    


template <typename T>
void unir(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  cj -> unir (*dr.template object<conjunt<T> >(1));
  dr.get_ostream() << (*cj) << endl;
}    

template <typename T>
void intersectar(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  cj -> intersectar(*dr.template object<conjunt<T> >(1));
  dr.get_ostream() << (*cj) << endl;
}    

template <typename T>
void restar(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  cj -> restar(*dr.template object<conjunt<T> >(1));
  dr.get_ostream() << (*cj) << endl;
}    

template <typename T>
void conte(gen_driver& dr) {
  (dr.get_ostream() <= 
   dr.template object<conjunt<T> >() -> conte(*dr.template object<T>(1))) << endl;
}    

template <>
void conte<int>(gen_driver& dr) {
  (dr.get_ostream() <= 
   dr.object<conjunt<int> >() -> conte(util::toint(dr.args(1)))) << endl;
}    

template <>
void conte<string>(gen_driver& dr) {
  (dr.get_ostream() <= 
   dr.object<conjunt<string> >() -> conte(dr.args(1))) << endl;
}    


template <typename T>
void max(gen_driver& dr) {
  dr.get_ostream() << 
   dr.template object<conjunt<T> >() -> max() << endl;
}    

template <typename T>
void min(gen_driver& dr) {
  dr.get_ostream() <<
   dr.template object<conjunt<T> >() -> min() << endl;
}    

template <typename T>
void card(gen_driver& dr) {
  dr.get_ostream() <<
   dr.template object<conjunt<T> >() -> card() << endl;
}    

template <typename T>
void equal(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj == *dr.template object<conjunt<T> >(1))) << endl;
}    

template <typename T>
void not_equal(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj != *dr.template object<conjunt<T> >(1))) << endl;
}    
/*
template <typename T>
void menor(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj < *dr.template object<conjunt<T> >(1))) << endl;
}    

template <typename T>
void menor_o_igual(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj <= *dr.template object<conjunt<T> >(1))) << endl;
}    

template <typename T>
void mayor(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj > *dr.template object<conjunt<T> >(1))) << endl;
}    

template <typename T>
void mayor_o_igual(gen_driver& dr) {
  conjunt<T>* cj = dr.template object<conjunt<T> >();
  (dr.get_ostream() <= (*cj >= *dr.template object<conjunt<T> >(1))) << endl;
}    
*/

template <typename T>
void suma(gen_driver &dr){
  conjunt<T>* cj = dr.template object<conjunt<T> >();

  (dr.get_ostream() << (*cj + *dr.template object<conjunt<T> >(1))) << endl;
}

template <typename T>
void producte(gen_driver &dr){
  conjunt<T>* cj = dr.template object<conjunt<T> >();

  (dr.get_ostream() << (*cj * *dr.template object<conjunt<T> >(1))) << endl;
}

template <typename T>
void resta(gen_driver &dr){
  conjunt<T>* cj = dr.template object<conjunt<T> >();

  (dr.get_ostream() << (*cj - *dr.template object<conjunt<T> >(1))) << endl;
}


int main() {
  gen_driver d("errors_conjunt.txt");

  d.add_call("insereix<int>", insereix<int>, "conjunt<int>", "int");
  d.add_call("unir<int>", unir<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("intersectar<int>", intersectar<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("restar<int>", restar<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("conte<int>", conte<int>, "conjunt<int>", "int");
  d.add_call("max<int>", max<int>, "conjunt<int>");
  d.add_call("min<int>", min<int>, "conjunt<int>");
  d.add_call("card<int>", card<int>, "conjunt<int>");
  d.add_call("print<int>", print<int>, "conjunt<int>");

  d.add_call("==<int>", equal<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("!=<int>", not_equal<int>, "conjunt<int>", "conjunt<int>");
  /*
  d.add_call("<<int>", menor<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("<=<int>", menor_o_igual<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("><int>", mayor<int>, "conjunt<int>", "conjunt<int>");
  d.add_call(">=<int>", mayor_o_igual<int>, "conjunt<int>", "conjunt<int>");
  */

  d.add_call("+", suma<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("*", producte<int>, "conjunt<int>", "conjunt<int>");
  d.add_call("-", resta<int>, "conjunt<int>", "conjunt<int>");


  d.add_call("insereix<string>", insereix<string>, "conjunt<string>", "string");
  d.add_call("unir<string>", unir<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("intersectar<string>", intersectar<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("restar<string>", restar<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("conte<string>", conte<string>, "conjunt<string>", "string");
  d.add_call("max<string>", max<string>, "conjunt<string>");
  d.add_call("min<string>", min<string>, "conjunt<string>");
  d.add_call("card<string>", card<string>, "conjunt<string>");

  d.add_call("==<string>", equal<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("!=<string>", not_equal<string>, "conjunt<string>", "conjunt<string>");
  //d.add_call("<<string>", menor<string>, "conjunt<string>", "conjunt<string>");
  //d.add_call("<=<string>", menor_o_igual<string>, "conjunt<string>", "conjunt<string>");
  //d.add_call("><string>", mayor<string>, "conjunt<string>", "conjunt<string>");
  //d.add_call(">=<string>", mayor_o_igual<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("print<string>", print<string>, "conjunt<string>");

  d.add_call("+", suma<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("*", producte<string>, "conjunt<string>", "conjunt<string>");
  d.add_call("-", resta<string>, "conjunt<string>", "conjunt<string>");


  d.install_type<conjunt<int> >("conjunt<int>");
  d.install_type<conjunt<string> >("conjunt<string>");

  d.go(); 
} 

