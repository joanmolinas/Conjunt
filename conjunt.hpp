#ifndef _CONJUNT_HPP_
#define _CONJUNT_HPP_
#include <iostream>
// #include <esin/error>

using namespace std;

template <typename T>
class conjunt {

public:

  conjunt();

  conjunt(const conjunt& B);

  ~conjunt();

  conjunt& operator=(const conjunt& B);

  void insereix(const T& x);

  void unir(const conjunt& B);
  void intersectar(const conjunt& B);
  void restar(const conjunt& B);

  conjunt operator+(const conjunt& B) const;
  conjunt operator*(const conjunt& B) const;
  conjunt operator-(const conjunt& B) const;

  bool conte(const T& x) const;

  T max() const;
  T min() const;

  int card() const;

  bool operator==(const conjunt& B) const;
  bool operator!=(const conjunt& B) const;

  void print(ostream& os) const;
  void print_reversed(ostream& os) const;

  static const int NoMinMaxEnConjBuit = 10;

private:
  struct node {
        node *next, *prev;
        T value;
    };

    node *_first, *_last;
    int _count;

    //PRE: Cert
//POST: Crea un conjunt a partir del primer node
void _copy(node *first);

//PRE: Cert
//POST: Borra i allibera la memòria de tots els nodes del conjunt
void _delete();

//PRE: El node n no pot ser NULL
//POST: Enllaça el anterior i següent a n entre ells i allibera la memòria del
//node n
void _delete_node(node *n);

//PRE: El valor e no ha d'estar en el conjunt.
//POST: Crea i afegeix un node nou i l'afegeix d'avant del conjunt.
void _add_front(T e);

//PRE: El valor e no ha d'estar en el conjunt.
//POST: Crea i afegeix un node nou i l'afegeix al final del conjunt.
void _add_back(T e);

//PRE: Prev no ha de ser null i new_node tampoc
//POST: Crea i afegeix entre la posició 2 i la n-1 del conjunt
void _add(node *prev, node *new_node);

};
#include "conjunt.t"
#endif
