#ifndef _CONJUNT_HPP_
#define _CONJUNT_HPP_
#include <iostream>
#include <esin/error>

using namespace std;

template <typename T>
class conjunt {

public:

  conjunt() throw(error);

  conjunt(const conjunt& B) throw(error);

  ~conjunt() throw();

  conjunt& operator=(const conjunt& B) throw(error);

  void insereix(const T& x) throw(error);
  
  void unir(const conjunt& B) throw(error); 
  void intersectar(const conjunt& B) throw(error);
  void restar(const conjunt& B) throw(error);

  conjunt operator+(const conjunt& B) const throw(error); 
  conjunt operator*(const conjunt& B) const throw(error);
  conjunt operator-(const conjunt& B) const throw(error);

  bool conte(const T& x) const throw();

  T max() const throw(error);
  T min() const throw(error);

  int card() const throw();

  bool operator==(const conjunt& B) const throw();
  bool operator!=(const conjunt& B) const throw();

  void print(ostream& os) const throw();

  static const int NoMinMaxEnConjBuit = 10; 

private:
  
};
#include "conjunt.t"
#endif
