template <typename T>
conjunt<T>::conjunt() : _first(NULL), _last(NULL), _count(0) { }

template <typename T>
conjunt<T>::conjunt(const conjunt &cj) : _first(NULL), _last(NULL), _count(0) {
    _copy(cj._first);
}
template <typename T>
conjunt<T>::~conjunt() {
    _delete();
}
template <typename T>
void conjunt<T>::insereix(const T &x) {
    if (conte(x)) return;
    if (_count == 0) _add_front(x);
    else {
        node *aux = _first;
        bool inserted = false;
        while (aux->next != NULL && !inserted) {
            if (x > aux->value && x < aux->next->value) {
                node *new_node = new node();
                new_node->value = x;
                _add(aux, new_node);
                inserted = true;
            } else {
                aux = aux->next;
            }
        }

        if (!inserted) (x < aux->value) ? _add_front(x) : _add_back(x);

    }
    _count++;
}

template <typename T>
bool conjunt<T>::conte(const T &x) const {
    if (_count == 0) return false;

    node *aux = _first;
    bool finded = false;
    while (aux != NULL && !finded) {
        if (aux->value == x) finded = true;
        aux = aux->next;
    }
    return finded;
}

template <typename T>
void conjunt<T>::unir(const conjunt &B) {
    if (B.card() == 0) return; // Fer saltar excepció
    if (_first == NULL) _copy(B._first);
    else {
      node *auxB = B._first;
      node *auxA = _first;
      while (auxB != NULL) {
        if (auxA == NULL) {
          // cout<<auxB->value<<" s'afegiria al final "<<endl;
          _add_back(auxB->value);
          auxB = auxB->next;
        } else if (auxA->value == auxB->value) {
          auxB = auxB->next;
        } else if (auxB->value < auxA->value) {
          // cout<<auxB->value<<" s'afegiria d'avant de "<<auxA->value<<endl;
          if (auxA == _first) _add_front(auxB->value);
          else {
            node *n = new node();
            n->value = auxB->value;
            _add(auxA->prev, n);
          }
          auxB = auxB->next;
        } else {
          auxA = auxA->next;
        }
      }
    }
}

template <typename T>
void conjunt<T>::intersectar(const conjunt &B) {
  if (B.card() > 0) {
    node *auxB = B._first;
    node *auxA = _first;

    while (auxA != NULL) {
      if(auxB == NULL) {
        node *tmp = auxA->next;
        _delete_node(auxA);
        auxA = tmp;
      } else if (auxA->value < auxB->value) {
        node *tmp = auxA->next;
        _delete_node(auxA);
        auxA = tmp;
      } else if (auxB->value == auxA->value){
        auxB = auxB->next;
        auxA = auxA->next;
      } else {
        auxB = auxB->next;
      }
    }
  }
}

template <typename T>
void conjunt<T>::restar(const conjunt &B) {
  if (B.card() > 0) {
    node *auxB = B._first;
    node *auxA = _first;

    while (auxA != NULL && auxB != NULL) {
      if (auxA->value < auxB->value) {
        auxA = auxA->next;;
      } else if (auxB->value == auxA->value){
        node *tmp = auxA->next;
        _delete_node(auxA);
        auxA = tmp;
      } else {
        auxB = auxB->next;
      }
    }
  }
}
template <typename T>
conjunt<T> conjunt<T>::operator+(const conjunt &B) const {
    conjunt<T> cj = conjunt(*this);
    cj.unir(B);
    return cj;
}

template <typename T>
conjunt<T> conjunt<T>::operator-(const conjunt &B) const {
    conjunt<T> cj = conjunt(*this);
    cj.restar(B);
    return cj;
}

template <typename T>
conjunt<T> conjunt<T>::operator*(const conjunt &B) const {
    conjunt<T> cj = conjunt(*this);
    cj.intersectar(B);
    return cj;
}

template <typename T>
bool conjunt<T>::operator==(const conjunt &B) const {
    if (_count != B._count) return false;

    node *aNode = _first, *bNode = B._first;
    bool equals = true;
    while (aNode != NULL && equals) {
        if (aNode->value != bNode->value) equals = false;
        else {
            aNode = aNode->next;
            bNode = bNode->next;
        }
    }

    return equals;
}

template <typename T>
bool conjunt<T>::operator!=(const conjunt &B) const {
    return !(*this==B);
}
template <typename T>
conjunt<T>& conjunt<T>::operator=(const conjunt &cj) {
    if (*this != cj) {
        _delete();
        _copy(cj._first);
    }

    return *this;
}

template <typename T>
T conjunt<T>::min() const {
    return _first->value;
}

template <typename T>
T conjunt<T>::max() const {
    return _last->value;
}

template <typename T>
int conjunt<T>::card() const {
    return _count;
}

template <typename T>
void conjunt<T>::print(ostream &os) const {
    node *aux = _first;
    os<<"[";
    while (aux != NULL) {
      os<<aux->value;
      if (aux->next != NULL) cout<<" ";
      aux = aux->next;
    }
    os<<"]";
}

template <typename T>
void conjunt<T>::print_reversed(ostream &os) const {
    node *aux = _last;
    os<<"[";
    while (aux != NULL) {
      os<<aux->value;
      if (aux->prev != NULL) cout<<" ";
      aux = aux->prev;
    }
    os<<"]";
}

template <typename T>
void conjunt<T>::_add_front(T e) {
    node *new_node = new node();
    new_node->value = e;
    if (_first != NULL) {
        _first->prev = new_node;
        new_node->next = _first;
        _first = new_node;
    } else {
        _first = new_node;
        _last = new_node;
    }
}

template <typename T>
void conjunt<T>::_add_back(T e) {
    node *new_node = new node();
    new_node->value = e;
    new_node->prev = _last;
    _last->next = new_node;
    _last = new_node;
}

template <typename T>
void conjunt<T>::_add(node *prev, node *new_node) {
    new_node->next = prev->next;
    new_node->prev = prev;
    prev->next->prev = new_node;
    prev->next = new_node;
}

template <typename T>
void conjunt<T>::_delete() {
    node *aux = _first;
    while (aux != NULL) {
        _first = _first->next;
        delete aux;
        aux = _first;
    }
    _first = _last = NULL;
    _count = 0;
}

template <typename T>
void conjunt<T>::_delete_node(node *n) {
  if (n == _first) {
    _first = _first->next;
    if (_first != NULL) _first->prev = NULL;
    delete n;
  } else if(n == _last) {
    _last = _last->prev;
    _last->next = NULL;
    delete n;
  } else {
    n->prev->next = n->next;
    n->next->prev = n->prev;
    delete n;
  }
  --_count;
}

template <typename T>
void conjunt<T>::_copy(node *first) {
  if (first != NULL) {
    node *aux;
    while (first != NULL) {
        if (_first == NULL) {
          _add_front(first->value);
          aux = _first;
        } else if(first->next == NULL) _add_back(first->value);
        else {
          if (aux->next != NULL)  {
            node *n = new node();
            n->value = first->value;
            _add(aux, n);
            aux = n;
          } else {
            _add_back(first->value);
            aux = _last;
          }
        }
        first = first->next;
    }
  }
}
