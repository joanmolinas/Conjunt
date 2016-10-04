###!
###! JOC DE PROVES CJ_ENTEROS
###!
###!--------------------------------------------------------
###! Nota 1: Suposem que la implementacio mes extesa tin-
###!         dra  els elements  del conjunt  completament 
###!         ordenats en tot moment, donat que aquesta es
###!         la mes eficient  respecte els  operadors  de  
###!         conjunts (unir<int>, intersectar<int> i restar<int>).
###!   [ * : Suponemos que la  implementacion mas  exten-
###!         dida tendra los elementos  del conjunto com-
###!         pletamente  ordenados en  cualquier momento, 
###!         dado que esta es la mas eficiente respecto a
###!         los operadores de conjuntos (unir<int>, intersec-
###!         tar y restar<int>).]
###!
###! Nota 2: Aquest conjunt es d'enters, i per tant poden
###!         inserir-se  tant nombres  positius com nega-
###!         tius.
###!   [ * : Este conjunto  es de enteros, y por lo tanto 
###!         pueden  insertarse  tanto numeros  positivos 
###!         como negativos.]
###!
###! Nota 3: No es pot  comprovar  el comportament de les
###!         operacions min<int> i  max  quan  el  conjunt  es 
###!         buit, ja que aixo  no esta definit a l'espe-
###!         cificacio de la classe.
###!   [ * : No se  puede  comprobar el comportamiento de
###!         las operaciones min<int> i max<int> cuando el conjunto
###!         esta vacio, ya que  esto no esta definido en
###!         la especificacion de la clase.]
###!
###! Nota 4: L'operacio "contiene<int>"  sempre s'ha de probar 
###!         doblement: amb  elements presents al conjunt  
###!         i amb elements no presents al conjunt.
###!   [ * : La operacion "contiene<int>" siempre se tiene que 
###!         probar doblemente: con elementos presentes y 
###!         con elementos no presentes en el conjunto.]
###!
###! Nota 5: |A| indica la card<int>inalitat del conjunt A, es
###!         a dir, el nombre d'elements del conjunt A.
###!   [ * : |A| indica la card<int>inalidad del conjunto A, o
###!         sea, el numero de elementos del conjunto A.]
###!--------------------------------------------------------
###!
###!------------------------------
###1 Un element
###!------------------------------
###!
###!------------------------------
###1.1 Element positiu
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 1
###!
#conte<int> 2
false
##false
#conte<int> -1
false
##false
#conte<int> 0
false
##false
#conte<int> 1
true
##true
#max<int>
1
##1
#min<int>
1
##1
#card<int>
1
##1
###! inserim un element ja present
#insereix<int> 1
###!
#conte<int> 2
false
##false
#conte<int> -1
false
##false
#conte<int> 0
false
##false
#conte<int> 1
true
##true
#max<int>
1
##1
#min<int>
1
##1
#card<int>
1
##1
###!
###!
###!------------------------------
###1.2 Element negatiu
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> -1
###!
#conte<int> 2
false
##false
#conte<int> -1
true
##true
#conte<int> 0
false
##false
#conte<int> 1
false
##false
#max<int> 
-1
##-1
#min<int>
-1
##-1
#card<int>
1
##1
###! inserim un element ja present
#insereix<int> -1
###!
#conte<int> 2
false
##false
#conte<int> -1
true
##true
#conte<int> 0
false
##false
#conte<int> 1
false
##false
#max<int> 
-1
##-1
#min<int>
-1
##-1
#card<int>
1
##1
###!
###!
###!
###!------------------------------
###2 Dos elements
###!------------------------------
###!
###!------------------------------
###2.1 El 2n s'insereix al principi
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> -1
#insereix<int> -12
###!
#conte<int> -1
true
##true
#conte<int> 0
false
##false
#conte<int> 1
false
##false
#conte<int> -12
true
##true
#max<int>
-1
##-1
#min<int>
-12
##-12
#card<int>
2
##2
###! inserim un element ja present
#insereix<int> -12
###!
#conte<int> -12
true
##true
#card<int>
2
##2
###!
###!
###!------------------------------
###2.2 El 2n s'insereix al final
###!------------------------------
###!
#init b conjunt<int> 
#insereix<int> 12
#insereix<int> 21
###!
#conte<int> 21
true
##true
#conte<int> 0
false
##false
#conte<int> 1
false
##false
#conte<int> 12
true
##true
#max<int>
21
##21
#min<int>
12
##12
#card<int>
2
##2
###! inserim un element ja present
#insereix<int> 21
###!
#conte<int> 21
true
##true
#card<int>
2
##2
###!
###!
###!
###!------------------------------
###3 Tres elements
###!------------------------------
###!
###!------------------------------
###3.1 El 3o se insereix<int> al principio
###!------------------------------
###!
#init c conjunt<int> 
#insereix<int> 12
#insereix<int> 21
#insereix<int> 1
###!
#conte<int> 21
true
##true
#conte<int> 0
false
##false
#conte<int> 1
true
##true
#conte<int> 12
true
##true
#max<int>
21
##21
#min<int>
1
##1
#card<int>
3
##3
###! inserim un element ja present
#insereix<int> 1
###!
#conte<int> 1
true
##true
#card<int>
3
##3
###!
###!
###!------------------------------
###3.2 El 3o se insereix<int> al final
###!------------------------------
###!
#init c conjunt<int> 
#insereix<int> 12
#insereix<int> 21
#insereix<int> 17
###!
#conte<int> 12
true
##true
#conte<int> 0
false
##false
#conte<int> 17
true
##true
#conte<int> 21
true
##true
#max<int>
21
##21
#min<int>
12
##12
#card<int>
3
##3
###! inserim un element ja present
#insereix<int> 17
###!
#conte<int> 17
true
##true
#card<int>
3
##3
###!
###!
###!------------------------------
###3.3 El 3o se insereix<int> en el medio
###!------------------------------
###!
#init c conjunt<int> 
#insereix<int> 12
#insereix<int> 21
#insereix<int> 121
###!
#conte<int> 21
true
##true
#conte<int> 12
true
##true
#conte<int> 1
false
##false
#conte<int> 121
true
##true
#max<int>
121
##121
#min<int>
12
##12
#card<int>
3
##3
###! inserim un element ja present
#insereix<int> 121
###!
#conte<int> 121
true
##true
#card<int>
3
##3
###!
###!
###!------------------------------
###4 Cinc Elements
###!------------------------------
###!
#init d conjunt<int> 
#insereix<int> 12
#insereix<int> 21
#insereix<int> 121
#insereix<int> -8
#insereix<int> 21
#insereix<int> 12
#insereix<int> 119
###!
#conte<int> 21
true
##true
#conte<int> 12
true
##true
#conte<int> 1
false
##false
#conte<int> -8
true
##true
#conte<int> 14
false
##false
#conte<int> 119
true
##true
#conte<int> 121
true
##true
#max<int>
121
##121
#min<int>
-8
##-8
#card<int>
5
##5
###!
###!
###!
###!------------------------------
###5 Unio
###!------------------------------
###!
###!------------------------------
###5.1 Unio  |A| = |B| i elements comuns
###!------------------------------
###!
###!------------------------------
###5.1.1 Unio  |A| = |B| = 0
###! A = []
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
###!
#b unir<int> a
[]
##[]
#b conte<int> 0
false
##false
#b conte<int> -1
false
##false
#b conte<int> 12
false
##false
#b card<int>
0
##0
###!
###!------------------------------
###5.1.2 Unio  |A| = |B| = 1
###! A = [12]
###! B = [12]
###! res = [12]
###!------------------------------
###!
#init a conjunt<int>
#a insereix<int> 12
#init b conjunt<int>
#b insereix<int> 12
###!
#b unir<int> a
[12]
##[12]
#b max<int>
12
##12
#b min<int>
12
##12
#b card<int>
1
##1
###!
###!------------------------------
###5.1.3 Unio  |A| = |B| = 2
###! A = [12 13]
###! B = [12 13]
###! res = [12 13]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 13
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 13
###!
#b unir<int> a
[12 13]
##[12 13]
#b max<int>
13
##13
#b min<int>
12
##12
#b card<int>
2
##2
###!
###!
###!------------------------------
###5.1.4 Unio  |A| = |B| = 3
###! A = [-13 12 13]
###! B = [-13 12 13]
###! res = [-13 12 13]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 13
#insereix<int> -13
#insereix<int> 12
#init b conjunt<int>
#insereix<int> -13
#insereix<int> 12
#insereix<int> 13
#insereix<int> -13
###!
#b unir<int> a
[-13 12 13]
##[-13 12 13]
#b max<int>
13
##13
#b min<int>
-13
##-13
#b card<int>
3
##3
###!
###!------------------------------
###5.1.5 Unio  |A| = |B| = 5
###! A = [-13 12 13 43 60]
###! B = [-13 12 13 43 60]
###! res = [-13 12 13 43 60]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 13
#insereix<int> -13
#insereix<int> 12
#insereix<int> 60
#insereix<int> 43
#init b conjunt<int>
#insereix<int> -13
#insereix<int> 12
#insereix<int> 13
#insereix<int> -13
#insereix<int> 60
#insereix<int> 43
###!
#b unir<int> a
[-13 12 13 43 60]
##[-13 12 13 43 60]
#b max<int>
60
##60
#b min<int>
-13
##-13
#b card<int>
5
##5
###!
###!
###!------------------------------
###5.2 Unio  |A| = |B| i elements NO comuns
###!------------------------------
###!
###!------------------------------
###5.2.1 Unio  |A| = |B| = 1
###! A = [12]
###! B = [15]
###! res = [12 15]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 15
###!
#b unir<int> a
[12 15]
##[12 15]
#b max<int>
15
##15
#b min<int>
12
##12
#b card<int>
2
##2
###!
###!------------------------------
###5.2.2 Unio  |A| = |B| = 2
###! A = [12 15]
###! B = [15 19]
###! res = [12 15 19]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 15
#insereix<int> 19
###!
#b unir<int> a
[12 15 19]
##[12 15 19]
#b max<int>
19
##19
#b min<int>
12
##12
#b card<int>
3
##3
###!
###!------------------------------
###5.2.3 Unio  |A| = |B| = 3
###! A = [12 15 19]
###! B = [-13 15 56]
###! res = [-13 12 15 19 56]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 19
#insereix<int> 12
#init b conjunt<int>
#b insereix<int> 15
#b insereix<int> -13
#b insereix<int> 56
###!
#b unir<int> a
[-13 12 15 19 56]
##[-13 12 15 19 56]
#b max<int>
56
##56
#b min<int>
-13
##-13
#b card<int>
5
##5
###!
###!------------------------------
###5.2.4 Unio  |A| = |B| = 5
###! A = [-13 12 15 19 56]
###! B = [34 43 45 60 98]
###! res = [-13 12 15 19 34 43 45 56 60 98]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 56
#insereix<int> -13
#insereix<int> 15
#insereix<int> 19
#insereix<int> -13
#insereix<int> 12
#init b conjunt<int>
#b insereix<int> 60
#b insereix<int> 43
#b insereix<int> 98
#b insereix<int> 34
#b insereix<int> 45
###!
#b unir<int> a
[-13 12 15 19 34 43 45 56 60 98]
##[-13 12 15 19 34 43 45 56 60 98]
#b max<int>
98
##98
#b min<int>
-13
##-13
#b card<int>
10
##10
###!
###!
###!------------------------------
###5.3 Unio  |A| < |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###5.3.1 Unio  |A| = 0 i  |B| = 1
###! A = []
###! B = [11]
###! res = [11]
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
###!
#b unir<int> a
[11]
##[11]
#b max<int>
11
##11
#b min<int>
11
##11
#b card<int>
1
##1
###!
###!------------------------------
###5.3.2 Unio  |A| = 0 i  |B| = 2
###! A = []
###! B = [4 11]
###! res = [4 11]
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#b unir<int> a
[4 11]
##[4 11]
#b max<int>
11
##11
#b min<int>
4
##4
#b card<int>
2
##2
###!
###!------------------------------
###5.3.3 Unio  |A| = 0 i  |B| = 3
###! A = []
###! B = [11 18 26]
###! res = [11 18 26]
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 26
#insereix<int> 11
#insereix<int> 18
###!
#b unir<int> a
[11 18 26]
##[11 18 26]
#b max<int>
26
##26
#b min<int>
11
##11
#b card<int>
3
##3
###!
###!------------------------------
###5.3.4 Unio  |A| = 0 i  |B| = 5
###! A = []
###! B = [-11 0 2 7 11]
###! res = [-11 0 2 7 11]
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 0
#insereix<int> -11
#insereix<int> 2
#insereix<int> 7
###!
#b unir<int> a
[-11 0 2 7 11]
##[-11 0 2 7 11]
#b max<int>
11
##11
#b min<int>
-11
##-11
#b card<int>
5
##5
###!
###!------------------------------
###5.3.5 Unio  |A| = 1 i  |B| = 2
###! A = [4]
###! B = [4 11]
###! res = [4 11]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 4
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#b unir<int> a
[4 11]
##[4 11]
#b max<int>
11
##11
#b min<int>
4
##4
#b card<int>
2
##2
###!
###!------------------------------
###5.3.6 Unio  |A| = 1 i  |B| = 3
###! A = [12]
###! B = [11 44 87]
###! res = [11 12 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b unir<int> a
[11 12 44 87]
##[11 12 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
4
##4
###!
###!------------------------------
###5.3.7 Unio  |A| = 1 i  |B| = 5
###! A = [4]
###! B = [1 4 11 44 87]
###! res = [1 4 11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#b unir<int> a
[1 4 11 44 87]
##[1 4 11 44 87]
#b max<int>
87
##87
#b min<int>
1
##1
#b card<int>
5
##5
###!
###!------------------------------
###5.3.8 Unio  |A| = 2 i  |B| = 3
###! A = [12 87]
###! B = [11 44 87]
###! res = [11 12 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#b unir<int> a
[11 12 44 87]
##[11 12 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
4
##4
###!
###!------------------------------
###5.3.9 Unio  |A| = 2 i  |B| = 5
###! A = [12 54]
###! B = [11 44 87 111 657]
###! res = [11 12 44 54 87 111 657]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 54
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 657
#insereix<int> 87
###!
#b unir<int> a
[11 12 44 54 87 111 657]
##[11 12 44 54 87 111 657]
#b max<int>
657
##657
#b min<int>
11
##11
#b card<int>
7
##7
###!
###!------------------------------
###5.3.10 Unio  |A| = 3 i  |B| = 5
###! A = [11 44 87]
###! B = [11 14 30 44 87]
###! res = [11 14 30 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
###!
#b unir<int> a
[11 14 30 44 87]
##[11 14 30 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
5
##5
###!
###!
###!------------------------------
###5.4 Unio  |A| > |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elementos comuns, i tenen elementos
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###5.4.1 Unio  |A| = 1 i  |B| = 0
###! A = [11]
###! B = []
###! res = [11]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#init b conjunt<int>
###!
#b unir<int> a
[11]
##[11]
#b max<int>
11
##11
#b min<int>
11
##11
#b card<int>
1
##1
###!
###!------------------------------
###5.4.2 Unio  |A| = 2 i  |B| = 0
###! A = [4 11]
###! B = []
###! res = [4 11]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init b conjunt<int>
###!
#b unir<int> a
[4 11]
##[4 11]
#b max<int>
11
##11
#b min<int>
4
##4
#b card<int>
2
##2
###!
###!------------------------------
###5.4.3 Unio  |A| = 2 i  |B| = 1
###! A = [4 11]
###! B = [4]
###! res = [4 11]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 4
#insereix<int> 4
###!
#b unir<int> a
[4 11]
##[4 11]
#b max<int>
11
##11
#b min<int>
4
##4
#b card<int>
2
##2
###!
###!------------------------------
###5.4.4 Unio  |A| = 3 i  |B| = 0
###! A = [11 44 87]
###! B = []
###! res = [11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init b conjunt<int>
###!
#b unir<int> a
[11 44 87]
##[11 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
3
##3
###!
###!------------------------------
###5.4.5 Unio  |A| = 3 i  |B| = 1
###! A = [11 44 87]
###! B = [12]
###! res = [11 12 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 12
###!
#b unir<int> a
[11 12 44 87]
##[11 12 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
4
##4
###!
###!------------------------------
###5.4.6 Unio  |A| = 3 i  |B| = 2
###! A = [11 44 87]
###! B = [12 87]
###! res = [11 12 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
###!
#b unir<int> a
[11 12 44 87]
##[11 12 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
4
##4
###!
###!------------------------------
###5.4.7 Unio  |A| = 5 i  |B| = 0
###! A = [1 4 11 44 87]
###! B = []
###! res = [1 4 11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
###!
#b unir<int> a
[1 4 11 44 87]
##[1 4 11 44 87]
#b max<int>
87
##87
#b min<int>
1
##1
#b card<int>
5
##5
###!
###!------------------------------
###5.4.8 Unio  |A| = 5 i  |B| = 1
###! A = [1 4 11 44 87]
###! B = [4]
###! res = [1 4 11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 4
###!
#b unir<int> a
[1 4 11 44 87]
##[1 4 11 44 87]
#b max<int>
87
##87
#b min<int>
1
##1
#b card<int>
5
##5
###!
###!------------------------------
###5.4.9 Unio  |A| = 5 i  |B| = 2
###! A = [11 44 87 111 657]
###! B = [12 54]
###! res = [11 12 44 54 87 111 657]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 12
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 12
#insereix<int> 657
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 54
#insereix<int> 12
###!
#b unir<int> a
[11 12 44 54 87 111 657]
##[11 12 44 54 87 111 657]
#b max<int>
657
##657
#b min<int>
11
##11
#b card<int>
7
##7
###!
###!------------------------------
###5.4.10 Unio  |A| = 5 i  |B| = 3
###! A = [11 14 30 44 87]
###! B = [11 44 87]
###! res = [11 14 30 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b unir<int> a
[11 14 30 44 87]
##[11 14 30 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
5
##5
###!
###!
###!
###!------------------------------
###6 Interseccion
###!------------------------------
###!
###!------------------------------
###6.1 Interseccion  |A| = |B| i elements comuns
###!------------------------------
###!
###!------------------------------
###6.1.1 Interseccion  |A| = |B| = 0
###! A = []
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
###!
#b intersectar<int> a
[]
##[]
#b conte<int> 0
false
##false
#b conte<int> -1
false
##false
#b conte<int> 12
false
##false
#b card<int>
0
##0
###!
###!------------------------------
###6.1.2 Interseccion  |A| = |B| = 1
###! A = [12]
###! B = [12]
###! res = [12]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 12
###!
#b intersectar<int> a
[12]
##[12]
#b max<int>
12
##12
#b min<int>
12
##12
#b card<int>
1
##1
###!
###!------------------------------
###6.1.3 Interseccion  |A| = |B| = 2
###! A = [12 13]
###! B = [12 13]
###! res = [12 13]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 13
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 13
###!
#b intersectar<int> a
[12 13]
##[12 13]
#b max<int>
13
##13
#b min<int>
12
##12
#b card<int>
2
##2
###!
###!
###!------------------------------
###6.1.4 Interseccion  |A| = |B| = 3
###! A = [-13 12 13]
###! B = [-13 12 13]
###! res = [-13 12 13]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 13
#insereix<int> -13
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
###!
#b intersectar<int> a
[-13 12 13]
##[-13 12 13]
#b max<int>
13
##13
#b min<int>
-13
##-13
#b card<int>
3
##3
###!
###!------------------------------
###6.1.5 Interseccion  |A| = |B| = 5
###! A = [-13 12 13 43 60]
###! B = [-13 12 13 43 60]
###! res = [-13 12 13 43 60]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 43
#insereix<int> 13
#insereix<int> -13
#insereix<int> 60
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#insereix<int> 60
#insereix<int> 43
###!
#b intersectar<int> a
[-13 12 13 43 60]
##[-13 12 13 43 60]
#b max<int>
60
##60
#b min<int>
-13
##-13
#b card<int>
5
##5
###!
###!
###!------------------------------
###6.2 Interseccion  |A| = |B| i elements NO comuns
###!------------------------------
###!
###!------------------------------
###6.2.1 Interseccion  |A| = |B| = 1
###! A = [12]
###! B = [15]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 15
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.2.2 Interseccion  |A| = |B| = 2
###! A = [12 15]
###! B = [15 19]
###! res = [15]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 15
#insereix<int> 19
###!
#b intersectar<int> a
[15]
##[15]
#b max<int>
15
##15
#b min<int>
15
##15
#b card<int>
1
##1
###!
###!------------------------------
###6.2.3 Interseccion  |A| = |B| = 3
###! A = [12 15 19]
###! B = [-13 15 56]
###! res = [15]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
#init b conjunt<int>
#insereix<int> 15
#insereix<int> -13
#insereix<int> 56
###!
#b intersectar<int> a
[15]
##[15]
#b max<int>
15
##15
#b min<int>
15
##15
#b card<int>
1
##1
###!
###!------------------------------
###6.2.4 Interseccion  |A| = |B| = 5
###! A = [-13 12 15 19 56]
###! B = [34 43 45 60 98]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> -13
#insereix<int> 56
#insereix<int> 15
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
#init b conjunt<int>
#insereix<int> 60
#insereix<int> 43
#insereix<int> 98
#insereix<int> 34
#insereix<int> 45
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!
###!------------------------------
###6.3 Interseccion  |A| < |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###6.3.1 Interseccion  |A| = 0 i  |B| = 1
###! A = []
###! B = [11]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.3.2 Interseccion  |A| = 0 i  |B| = 2
###! A = []
###! B = [4 11]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.3.3 Interseccion  |A| = 0 i  |B| = 3
###! A = []
###! B = [11 18 26]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 26
#insereix<int> 11
#insereix<int> 18
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.3.4 Interseccion  |A| = 0 i  |B| = 5
###! A = []
###! B = [-11 0 2 7 11]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 0
#insereix<int> -11
#insereix<int> 2
#insereix<int> 7
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.3.5 Interseccion  |A| = 1 i  |B| = 2
###! A = [4]
###! B = [4 11]
###! res = [4]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 4
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#b intersectar<int> a
[4]
##[4]
#b max<int>
4
##4
#b min<int>
4
##4
#b card<int>
1
##1
###!
###!------------------------------
###6.3.6 Interseccion  |A| = 1 i  |B| = 3
###! A = [44]
###! B = [11 44 87]
###! res = [44]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 44
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b intersectar<int> a
[44]
##[44]
#b max<int>
44
##44
#b min<int>
44
##44
#b card<int>
1
##1
###!
###!------------------------------
###6.3.7 Interseccion  |A| = 1 i  |B| = 5
###! A = [4]
###! B = [1 4 11 44 87]
###! res = [4]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#b intersectar<int> a
[4]
##[4]
#b max<int>
4
##4
#b min<int>
4
##4
#a card<int>
1
##1
###!
###!------------------------------
###6.3.8 Interseccion  |A| = 2 i  |B| = 3
###! A = [12 87]
###! B = [11 44 87]
###! res = [87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#b intersectar<int> a
[87]
##[87]
#b max<int>
87
##87
#b min<int>
87
##87
#b card<int>
1
##1
###!
###!------------------------------
###6.3.9 Interseccion  |A| = 2 i  |B| = 5
###! A = [12 54]
###! B = [12 37 54 111 657]
###! res = [12 54]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 54
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 37
#insereix<int> 657
#insereix<int> 37
#insereix<int> 12
#insereix<int> 111
#insereix<int> 12
#insereix<int> 54
#insereix<int> 657
###!
#b intersectar<int> a
[12 54]
##[12 54]
#b max<int>
54
##54
#b min<int>
12
##12
#b card<int>
2
##2
###!
###!------------------------------
###6.3.10 Interseccion  |A| = 3 i  |B| = 5
###! A = [11 44 87]
###! B = [11 14 30 44 87]
###! res = [11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
###!
#b intersectar<int> a
[11 44 87]
##[11 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
3
##3
###!
###!
###!------------------------------
###6.4 Interseccion  |A| > |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###6.4.1 Interseccion  |A| = 1 i  |B| = 0
###! A = [11]
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#init b conjunt<int>
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.2 Interseccion  |A| = 2 i  |B| = 0
###! A = [4 11]
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init b conjunt<int>
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.3 Interseccion  |A| = 2 i  |B| = 1
###! A = [4 11]
###! B = [4]
###! res = [4]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init b conjunt<int>
#insereix<int> 4
#insereix<int> 4
###!
#b intersectar<int> a
[4]
##[4]
#b max<int>
4
##4
#b min<int>
4
##4
#b card<int>
1
##1
###!
###!------------------------------
###6.4.4 Interseccion  |A| = 3 i  |B| = 0
###! A = [11 44 87]
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init b conjunt<int>
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.5 Interseccion  |A| = 3 i  |B| = 1
###! A = [11 44 87]
###! B = [12]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 12
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.6 Interseccion  |A| = 3 i  |B| = 2
###! A = [11 44 87]
###! B = [12 87]
###! res = [87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
###!
#b intersectar<int> a
[87]
##[87]
#b max<int>
87
##87
#b min<int>
87
##87
#b card<int>
1
##1
###!
###!------------------------------
###6.4.7 Interseccion  |A| = 5 i  |B| = 0
###! A = [1 4 11 44 87]
###! B = []
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.8 Interseccion  |A| = 5 i  |B| = 1
###! A = [1 4 11 44 87]
###! B = [4]
###! res = [4]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 4
###!
#b intersectar<int> a
[4]
##[4]
#b max<int>
4
##4
#b min<int>
4
##4
#b card<int>
1
##1
###!
###!------------------------------
###6.4.9 Interseccion  |A| = 5 i  |B| = 2
###! A = [11 44 87 111 657]
###! B = [12 7754]
###! res = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 657
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 7754
#insereix<int> 12
###!
#b intersectar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###6.4.10 Interseccion  |A| = 5 i  |B| = 3
###! A = [11 14 30 44 87]
###! B = [11 44 87]
###! res = [11 44 87]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b intersectar<int> a
[11 44 87]
##[11 44 87]
#b max<int>
87
##87
#b min<int>
11
##11
#b card<int>
3
##3
###!
###!
###!
###!------------------------------
###7 Resta
###!------------------------------
###!
###!------------------------------
###7.1 Resta  |A| = |B| i elements comuns
###!------------------------------
###!
###!------------------------------
###7.1.1 Resta  |A| = |B| = 0
###! A = []
###! B = []
###! B - A = []
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
###!
#b restar<int> a
[]
##[]
#a conte<int> 0
false
##false
#a conte<int> -1
false
##false
#a conte<int> 12
false
##false
#b card<int>
0
##0
###!
###!------------------------------
###7.1.2 Resta  |A| = |B| = 1
###! A = [12]
###! B = [12]
###! B - A = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 12
###!
#b restar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###7.1.3 Resta  |A| = |B| = 2
###! A = [12 13]
###! B = [12 13]
###! B - A = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 13
#insereix<int> 12
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 13
###!
#b restar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!
###!------------------------------
###7.1.4 Resta  |A| = |B| = 3
###! A = [-13 12 13]
###! B = [-13 12 13]
###! B - A = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 13
#insereix<int> -13
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
###!
#b restar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!------------------------------
###7.1.5 Resta  |A| = |B| = 5
###! A = [-13 12 13 43 60]
###! B = [-13 12 13 43 60]
###! B - A = []
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 43
#insereix<int> 13
#insereix<int> -13
#insereix<int> 60
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#insereix<int> 60
#insereix<int> 43
###!
#b restar<int> a
[]
##[]
#b card<int>
0
##0
###!
###!
###!------------------------------
###7.2 Resta  |A| = |B| i elements NO comuns
###!------------------------------
###!
###!------------------------------
###7.2.1 Resta  |A| = |B| = 1
###! A = [15]
###! B = [12]
###! B - A = [12]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#init b conjunt<int>
#insereix<int> 12
###!
#b restar<int> a
[12]
##[12]
#b max<int>
12
##12
#b min<int>
12
##12
#b card<int>
1
##1
###!
###!------------------------------
###7.2.2 Resta  |A| = |B| = 2
###! A = [15 19]
###! B = [12 15]
###! B - A = [12]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 19
#init b conjunt<int>
#insereix<int> 15
#insereix<int> 12
###!
#b restar<int> a
[12]
##[12]
#b max<int>
12
##12
#b min<int>
12
##12
#b card<int>
1
##1
###!
###!------------------------------
###7.2.3 Resta  |A| = |B| = 3
###! A = [-13 15 56]
###! B = [12 14 19]
###! B - A = [12 14 19]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 15
#insereix<int> -13
#insereix<int> 56
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 12
#insereix<int> 19
###!
#restar<int> a
[12 14 19]
##[12 14 19]
#b max<int>
19
##19
#b min<int>
12
##12
#b card<int>
3
##3
###!
###!------------------------------
###7.2.4 Resta  |A| = |B| = 5
###! A = [34 43 45 60 98]
###! B = [-13 12 15 19 56]
###! B - A = [-13 12 15 19 56]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 60
#insereix<int> 43
#insereix<int> 98
#insereix<int> 34
#insereix<int> 45
#init b conjunt<int>
#insereix<int> -13
#insereix<int> 56
#insereix<int> 15
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
###!
#b restar<int> a
[-13 12 15 19 56]
##[-13 12 15 19 56]
#b max<int>
56
##56
#b min<int>
-13
##-13
#b card<int>
5
##5
###!
###!
###!------------------------------
###7.3 Resta  |A| < |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###7.3.1 Resta  |A| = 0 i  |B| = 1
###! A = []
###! B = [11]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#init a conjunt<int>
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.2 Resta  |A| = 0 i  |B| = 2
###! A = []
###! B = [4 11]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.3 Resta  |A| = 0 i  |B| = 3
###! A = []
###! B = [11 18 26]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 26
#insereix<int> 11
#insereix<int> 18
#init a conjunt<int>
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.4 Resta  |A| = 0 i  |B| = 5
###! A = [-11 0 2 7 11]
###! A = []
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 0
#insereix<int> -11
#insereix<int> 2
#insereix<int> 7
#init a conjunt<int>
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.5 Resta  |A| = 1 i  |B| = 2
###! A = [4]
###! B = [4 11]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 4
#insereix<int> 4
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.6 Resta  |A| = 1 i  |B| = 3
###! A = [44]
###! B = [11 44 87]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.7 Resta  |A| = 1 i  |B| = 5
###! A = [4]
###! B = [1 4 11 44 87]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 4
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!------------------------------
###7.3.8 Resta  |A| = 2 i  |B| = 3
###! A = [12 87]
###! B = [11 44 87]
###! A - B = [12]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
###!
#restar<int> b
[12]
##[12]
#a max<int>
12
##12
#a min<int>
12
##12
#a card<int>
1
##1
###!
###!------------------------------
###7.3.9 Resta  |A| = 2 i  |B| = 5
###! A = [12 54]
###! B = [11 37 69 111 657]
###! A - B = [12 54]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 37
#insereix<int> 657
#insereix<int> 37
#insereix<int> 11
#insereix<int> 111
#insereix<int> 11
#insereix<int> 69
#insereix<int> 657
#init a conjunt<int>
#insereix<int> 54
#insereix<int> 12
###!
#restar<int> b
[12 54]
##[12 54]
#a max<int>
54
##54
#a min<int>
12
##12
#a card<int>
2
##2
###!
###!------------------------------
###7.3.10 Resta  |A| = 3 i  |B| = 5
###! A = [11 44 87]
###! B = [11 14 30 44 87]
###! A - B = []
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#restar<int> b
[]
##[]
#a card<int>
0
##0
###!
###!
###!------------------------------
###7.4 Resta  |A| > |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###7.4.1 Resta  |A| = 1 i  |B| = 0
###! A = [11]
###! B = []
###! A - B = [11]
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
###!
#restar<int> b
[11]
##[11]
#a max<int>
11
##11
#a min<int>
11
##11
#a card<int>
1
##1
###!
###!------------------------------
###7.4.2 Resta  |A| = 2 i  |B| = 0
###! A = [4 11]
###! B = []
###! A - B = [4 11]
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#restar<int> b
[4 11]
##[4 11]
#a max<int>
11
##11
#a min<int>
4
##4
#a card<int>
2
##2
###!
###!------------------------------
###7.4.3 Resta  |A| = 2 i  |B| = 1
###! A = [4 11]
###! B = [4]
###! A - B = [11]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#restar<int> b
[11]
##[11]
#a max<int>
11
##11
#a min<int>
11
##11
#a card<int>
1
##1
###!
###!------------------------------
###7.4.4 Resta  |A| = 3 i  |B| = 0
###! A = [11 44 87]
###! B = []
###! A - B = [11 44 87]
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#restar<int> b
[11 44 87]
##[11 44 87]
#a max<int>
87
##87
#a min<int>
11
##11
#a card<int>
3
##3
###!
###!------------------------------
###7.4.5 Resta  |A| = 3 i  |B| = 1
###! A = [11 44 87]
###! B = [12]
###! A - B = [11 44 87]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#restar<int> b
[11 44 87]
##[11 44 87]
#a max<int>
87
##87
#a min<int>
11
##11
#a card<int>
3
##3
###!
###!------------------------------
###7.4.6 Resta  |A| = 3 i  |B| = 2
###! A = [11 44 87]
###! B = [12 87]
###! A - B = [11 44]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#restar<int> b
[11 44]
##[11 44]
#a max<int>
44
##44
#a min<int>
11
##11
#a card<int>
2
##2
###!
###!------------------------------
###7.4.7 Resta  |A| = 5 i  |B| = 0
###! A = [1 4 11 44 87]
###! B = []
###! A - B = [1 4 11 44 87]
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#restar<int> b
[1 4 11 44 87]
##[1 4 11 44 87]
#a max<int>
87
##87
#a min<int>
1
##1
#a card<int>
5
##5
###!
###!------------------------------
###7.4.8 Resta  |A| = 5 i  |B| = 1
###! A = [1 4 11 44 87]
###! B = [4]
###! A - B = [1 11 44 87]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#restar<int> b
[1 11 44 87]
##[1 11 44 87]
#a max<int>
87
##87
#a min<int>
1
##1
#a card<int>
4
##4
###!
###!------------------------------
###7.4.9 Resta  |A| = 5 i  |B| = 2
###! A = [11 44 87 111 657]
###! B = [12 7754]
###! A - B = [11 44 87 111 657]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 7754
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 12
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 12
#insereix<int> 657
#insereix<int> 87
###!
#restar<int> b
[11 44 87 111 657]
##[11 44 87 111 657]
#a max<int>
657
##657
#a min<int>
11
##11
#a card<int>
5
##5
###!
###!------------------------------
###7.4.10 Resta  |A| = 5 i  |B| = 3
###! A = [11 14 30 44 87]
###! B = [11 44 87]
###! A - B = [14 30]
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
###!
#restar<int> b
[14 30]
##[14 30]
#a max<int>
30
##30
#a min<int>
14
##14
#a card<int>
2
##2
###!
###!
###!
###!------------------------------
###8 ==<int>
###!------------------------------
###!
###!------------------------------
###8.1 ==<int>  |A| = |B| i elements comuns
###!------------------------------
###!
###!------------------------------
###8.1.1 ==<int>  |A| = |B| = 0
###! A = []
###! B = []
###! A ==<int> B = true
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
###!
#==<int> b
true
##true
#a conte<int> 0
false
##false
#a conte<int> -1
false
##false
#a conte<int> 12
false
##false
#a card<int>
0
##0
###!
###!------------------------------
###8.1.2 ==<int>  |A| = |B| = 1
###! A = [12]
###! B = [12]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 12
###!
#==<int> b
true
##true
#a card<int>
1
##1
###!
###!------------------------------
###8.1.3 ==<int>  |A| = |B| = 2
###! A = [12 13]
###! B = [12 13]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 13
#init a conjunt<int>
#insereix<int> 13
#insereix<int> 12
###!
#==<int> b
true
##true
#a card<int>
2
##2
###!
###!
###!------------------------------
###8.1.4 ==<int>  |A| = |B| = 3
###! A = [-13 12 13]
###! B = [-13 12 13]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 13
#insereix<int> -13
###!
#==<int> b
true
##true
#a card<int>
3
##3
###!
###!------------------------------
###8.1.5 ==<int>  |A| = |B| = 5
###! A = [-13 12 13 43 60]
###! B = [-13 12 13 43 60]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#insereix<int> 60
#insereix<int> 43
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 43
#insereix<int> 13
#insereix<int> -13
#insereix<int> 60
###!
#==<int> b
true
##true
#card<int>
5
##5
###!
###!
###!------------------------------
###8.2 ==<int>  |A| = |B| i elements NO comuns
###!------------------------------
###!
###!------------------------------
###8.2.1 ==<int>  |A| = |B| = 1
###! A = [12]
###! B = [15]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#init a conjunt<int>
#insereix<int> 12
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.2.2 ==<int>  |A| = |B| = 2
###! A = [12 15]
###! B = [15 19]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#insereix<int> 19
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.2.3 ==<int>  |A| = |B| = 3
###! A = [12 15 19]
###! B = [-13 15 56]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#insereix<int> -13
#insereix<int> 56
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.2.4 ==<int>  |A| = |B| = 5
###! A = [-13 12 15 19 56]
###! B = [34 43 45 60 98]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 60
#insereix<int> 43
#insereix<int> 98
#insereix<int> 34
#insereix<int> 45
#init a conjunt<int>
#insereix<int> -13
#insereix<int> 56
#insereix<int> 15
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
###!
#==<int> b
false
##false
###!
###!
###!------------------------------
###8.3 ==<int>  |A| < |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###8.3.1 ==<int>  |A| = 0 i  |B| = 1
###! A = []
###! B = [11]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#init a conjunt<int>
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.2 ==<int>  |A| = 0 i  |B| = 2
###! A = []
###! B = [4 11]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.3 ==<int>  |A| = 0 i  |B| = 3
###! A = []
###! B = [11 18 26]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 26
#insereix<int> 11
#insereix<int> 18
#init a conjunt<int>
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.4 ==<int>  |A| = 0 i  |B| = 5
###! A = []
###! B = [-11 0 2 7 11]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 0
#insereix<int> -11
#insereix<int> 2
#insereix<int> 7
#init a conjunt<int>
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.5 ==<int>  |A| = 1 i  |B| = 2
###! A = [4]
###! B = [4 11]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 4
#insereix<int> 4
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.6 ==<int>  |A| = 1 i  |B| = 3
###! A = [44]
###! B = [11 44 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.7 ==<int>  |A| = 1 i  |B| = 5
###! A = [4]
###! B = [1 4 11 44 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 4
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.8 ==<int>  |A| = 2 i  |B| = 3
###! A = [12 87]
###! B = [11 44 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.9 ==<int>  |A| = 2 i  |B| = 5
###! A = [12 54]
###! B = [11 37 69 111 657]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 37
#insereix<int> 657
#insereix<int> 37
#insereix<int> 11
#insereix<int> 111
#insereix<int> 11
#insereix<int> 69
#insereix<int> 657
#init a conjunt<int>
#insereix<int> 54
#insereix<int> 12
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.3.10 ==<int>  |A| = 3 i  |B| = 5
###! A = [11 44 87]
###! B = [11 14 30 44 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!
###!------------------------------
###8.4 ==<int>  |A| > |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###8.4.1 ==<int>  |A| = 1 i  |B| = 0
###! A = [11]
###! B = []
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.2 ==<int>  |A| = 2 i  |B| = 0
###! A = [4 11]
###! B = []
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.3 ==<int>  |A| = 2 i  |B| = 1
###! A = [4 11]
###! B = [4]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.4 ==<int>  |A| = 3 i  |B| = 0
###! A = [11 44 87]
###! B = []
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.5 ==<int>  |A| = 3 i  |B| = 1
###! A = [11 44 87]
###! B = [12]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.6 ==<int>  |A| = 3 i  |B| = 2
###! A = [11 44 87]
###! B = [12 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.7 ==<int>  |A| = 5 i  |B| = 0
###! A = [1 4 11 44 87]
###! B = []
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.8 ==<int>  |A| = 5 i  |B| = 1
###! A = [1 4 11 44 87]
###! B = [4]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.9 ==<int>  |A| = 5 i  |B| = 2
###! A = [11 44 87 111 657]
###! B = [12 7754]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 7754
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 12
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 12
#insereix<int> 657
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!------------------------------
###8.4.10 ==<int>  |A| = 5 i  |B| = 3
###! A = [11 14 30 44 87]
###! B = [11 44 87]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
###!
#==<int> b
false
##false
###!
###!
###!------------------------------
###8.5 ==<int>  Casos Extrems
###!
###! A = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101]
###! B = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101 200]
###! C = [13 14 15 18 23 29 31 37 41 44 47 51 53 56 67 87 101]
###! D = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101 200 201]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 56
#insereix<int> 15
#insereix<int> 18
#insereix<int> 41
#insereix<int> 67
#insereix<int> 14
#insereix<int> 13
#insereix<int> 29
#insereix<int> 23
#insereix<int> 31
#insereix<int> 51
#insereix<int> 47
#insereix<int> 37
#insereix<int> 101
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b = a
#c = a
#d = a
#b insereix<int> 200
#c insereix<int> 53
#d insereix<int> 200
#d insereix<int> 201
###!
#b ==<int> a
false
##false
#c ==<int> a
false
##false
#d ==<int> a
false
##false
#c ==<int> b
false
##false
#d ==<int> b
false
##false
#d ==<int> c
false
##false
###!
###!
###!
###!------------------------------
###9 !=<int>
###!------------------------------
###!
###!------------------------------
###9.1 !=<int>  |A| = |B| i elements comuns
###!------------------------------
###!
###!------------------------------
###9.1.1 !=<int>  |A| = |B| = 0
###! A = []
###! B = []
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
###!
#!=<int> b
false
##false
#a conte<int> 0
false
##false
#a conte<int> -1
false
##false
#a conte<int> 12
false
##false
#card<int>
0
##0
###!
###!------------------------------
###9.1.2 !=<int>  |A| = |B| = 1
###! A = [12]
###! B = [12]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 12
###!
#!=<int> b
false
##false
#card<int>
1
##1
###!
###!------------------------------
###9.1.3 !=<int>  |A| = |B| = 2
###! A = [12 13]
###! B = [12 13]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 13
#init a conjunt<int>
#insereix<int> 13
#insereix<int> 12
###!
#!=<int> b
false
##false
#card<int>
2
##2
###!
###!
###!------------------------------
###9.1.4 !=<int>  |A| = |B| = 3
###! A = [-13 12 13]
###! B = [-13 12 13]
###! res = false
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 13
#insereix<int> -13
###!
#!=<int> b
false
##false
#card<int>
3
##3
###!
###!------------------------------
###9.1.5 !=<int>  |A| = |B| = 5
###! A = [-13 12 13 43 60]
###! B = [-13 12 13 43 60]
###! res = false
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 13
#insereix<int> 43
#insereix<int> 13
#insereix<int> -13
#insereix<int> 60
#init b conjunt<int>
#insereix<int> 13
#insereix<int> 12
#insereix<int> -13
#insereix<int> 60
#insereix<int> 43
###!
#!=<int> b
false
##false
#card<int>
5
##5
###!
###!
###!------------------------------
###9.2 !=<int>  |A| = |B| i elements NO comuns
###!------------------------------
###!
###!------------------------------
###9.2.1 !=<int>  |A| = |B| = 1
###! A = [12]
###! B = [15]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#init a conjunt<int>
#insereix<int> 12
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.2.2 !=<int>  |A| = |B| = 2
###! A = [12 15]
###! B = [15 19]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#insereix<int> 19
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.2.3 !=<int>  |A| = |B| = 3
###! A = [12 15 19]
###! B = [-13 15 56]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 15
#insereix<int> -13
#insereix<int> 56
#init a conjunt<int>
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.2.4 !=<int>  |A| = |B| = 5
###! A = [-13 12 15 19 56]
###! B = [34 43 45 60 98]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 60
#insereix<int> 43
#insereix<int> 98
#insereix<int> 34
#insereix<int> 45
#init a conjunt<int>
#insereix<int> -13
#insereix<int> 56
#insereix<int> 15
#insereix<int> 15
#insereix<int> 12
#insereix<int> 19
###!
#!=<int> b
true
##true
###!
###!
###!------------------------------
###9.3 !=<int>  |A| < |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###9.3.1 !=<int>  |A| = 0 i  |B| = 1
###! A = []
###! B = [11]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#init a conjunt<int>
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.2 !=<int>  |A| = 0 i  |B| = 2
###! A = []
###! B = [4 11]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.3 !=<int>  |A| = 0 i  |B| = 3
###! A = []
###! B = [11 18 26]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 26
#insereix<int> 11
#insereix<int> 18
#init a conjunt<int>
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.4 !=<int>  |A| = 0 i  |B| = 5
###! A = []
###! B = [-11 0 2 7 11]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 0
#insereix<int> -11
#insereix<int> 2
#insereix<int> 7
#init a conjunt<int>
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.5 !=<int>  |A| = 1 i  |B| = 2
###! A = [4]
###! B = [4 11]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 4
#insereix<int> 4
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.6 !=<int>  |A| = 1 i  |B| = 3
###! A = [44]
###! B = [11 44 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.7 !=<int>  |A| = 1 i  |B| = 5
###! A = [4]
###! B = [1 4 11 44 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 4
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.8 !=<int>  |A| = 2 i  |B| = 3
###! A = [12 87]
###! B = [11 44 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.9 !=<int>  |A| = 2 i  |B| = 5
###! A = [12 54]
###! B = [11 37 69 111 657]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 37
#insereix<int> 657
#insereix<int> 37
#insereix<int> 11
#insereix<int> 111
#insereix<int> 11
#insereix<int> 69
#insereix<int> 657
#init a conjunt<int>
#insereix<int> 54
#insereix<int> 12
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.3.10 !=<int>  |A| = 3 i  |B| = 5
###! A = [11 44 87]
###! B = [11 14 30 44 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!
###!------------------------------
###9.4 !=<int>  |A| > |B| 
###! Nota: Els casos en que els conjunts tenen
###!       elements comuns, i tenen elements
###!       NO comuns estan barrejats.
###!------------------------------
###!
###!------------------------------
###9.4.1 !=<int>  |A| = 1 i  |B| = 0
###! A = [11]
###! B = []
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.2 !=<int>  |A| = 2 i  |B| = 0
###! A = [4 11]
###! B = []
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.3 !=<int>  |A| = 2 i  |B| = 1
###! A = [4 11]
###! B = [4]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 4
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.4 !=<int>  |A| = 3 i  |B| = 0
###! A = [11 44 87]
###! B = []
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.5 !=<int>  |A| = 3 i  |B| = 1
###! A = [11 44 87]
###! B = [12]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b !=<int> a
true
##true
###!
###!------------------------------
###9.4.6 !=<int>  |A| = 3 i  |B| = 2
###! A = [11 44 87]
###! B = [12 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 12
#insereix<int> 87
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 44
#insereix<int> 11
#insereix<int> 44
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.7 !=<int>  |A| = 5 i  |B| = 0
###! A = [1 4 11 44 87]
###! B = []
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.8 !=<int>  |A| = 5 i  |B| = 1
###! A = [1 4 11 44 87]
###! B = [4]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 4
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 1
#insereix<int> 4
#insereix<int> 44
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.9 !=<int>  |A| = 5 i  |B| = 2
###! A = [11 44 87 111 657]
###! B = [12 7754]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 7754
#insereix<int> 12
#init a conjunt<int>
#insereix<int> 11
#insereix<int> 657
#insereix<int> 12
#insereix<int> 11
#insereix<int> 111
#insereix<int> 44
#insereix<int> 87
#insereix<int> 12
#insereix<int> 657
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!------------------------------
###9.4.10 !=<int>  |A| = 5 i  |B| = 3
###! A = [11 14 30 44 87]
###! B = [11 44 87]
###! res = true
###!------------------------------
###!
#init b conjunt<int>
#insereix<int> 87
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
#init a conjunt<int>
#insereix<int> 14
#insereix<int> 11
#insereix<int> 30
#insereix<int> 44
#insereix<int> 87
###!
#!=<int> b
true
##true
###!
###!
###!------------------------------
###9.5 !=<int>  Casos Extrems
###!
###! A = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101]
###! B = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101 200]
###! C = [13 14 15 18 23 29 31 37 41 44 47 51 53 56 67 87 101]
###! D = [13 14 15 18 23 29 31 37 41 44 47 51 56 67 87 101 200 201]
###!------------------------------
###!
#init a conjunt<int>
#insereix<int> 87
#insereix<int> 56
#insereix<int> 15
#insereix<int> 18
#insereix<int> 41
#insereix<int> 67
#insereix<int> 14
#insereix<int> 13
#insereix<int> 29
#insereix<int> 23
#insereix<int> 31
#insereix<int> 51
#insereix<int> 47
#insereix<int> 37
#insereix<int> 101
#insereix<int> 11
#insereix<int> 44
#insereix<int> 11
#insereix<int> 87
###!
#b = a
#c = a
#d = a
#b insereix<int> 200
#c insereix<int> 53
#d insereix<int> 200
#d insereix<int> 201
###!
#b !=<int> a
true
##true
#c !=<int> a
true
##true
#d !=<int> a
true
##true
#c !=<int> b
true
##true
#d !=<int> b
true
##true
#d !=<int> c
true
##true
###!
###!
###!
###!
###!------------------------------
###14 Excepcions
###!
###!------------------------------
###!
#init buit conjunt<int>
#max<int>
Error::conjunt:10:No es pot calcular el maxim/minim d'un conjunt buit
##Error::conjunt:10:No es pot calcular el maxim/minim d'un conjunt buit
#min<int>
Error::conjunt:10:No es pot calcular el maxim/minim d'un conjunt buit
##Error::conjunt:10:No es pot calcular el maxim/minim d'un conjunt buit
###!
###!
###!
###!------------------------------
###15 Copias i Inicialitzacions
###!
###!------------------------------
###!
#init a conjunt<int>
#init b conjunt<int>
#a insereix<int> 1
#a insereix<int> 3
#a insereix<int> 5
#a insereix<int> 7
#a insereix<int> 9
#a insereix<int> 11
#a insereix<int> 13
#a insereix<int> 15
#a insereix<int> 17
#b = a
#b ==<int> a
true
##true
#b card<int>
9
##9
#a destroy
#b card<int>
9
##9
#b min<int>
1
##1
#b max<int>
17
##17
#initcopy a = b
#b ==<int> a
true
##true
#a card<int>
9
##9
#b destroy
#a card<int>
9
##9
#a min<int>
1
##1
#a max<int>
17
##17
#quit
[4/0]
