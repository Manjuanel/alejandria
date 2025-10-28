#import "../macros.typ": *
#import "../estilo.typ": *

#show: init.with(
  title: "Análisis Combinatorio",
  author: none,
  debug: true
)

El análisis combinatorio se interesa en contar cosas. #note[Incompleto]

= Regla de la suma y #box[del producto]

== Suma
Si hay una elección entre $n$ opciones y otra entre $m$ y se tienen que elegir alguna opción entre todas las de $n$ y $m$ juntas entonces hay $n+m$ formas de hacerlo.

== Producto
Si hay una elección entre $n$ opciones y otra entre $m$ y se tienen que elegir ambas al mismo tiempo hay $n m$ formas de hacerlo.

== Cardinalidad
Un conjunto $X$ tiene cardinalidad $n$, con $n in NN$ si existe una función biyectiva $f:[|1, n|] -> X$ y se denota $|X| = n$. Si un conjunto tiene cardinalidad igual a algún número natural se dirá finito.

== Principio de adición
Si $A$ y $B$ son conjuntos finitos y disjuntos entonces $|A union B| = |A| + |B|$

#example(title: "Demostración")[
  Sean $n, m in NN$ con $n = |A|$ y $m = |B|$ entonces existen $f: [|1, n|] -> A$, #box[$g: [|1, m|] -> B$] biyectivas. Sea:

  $ function(h, [|1, |A| + |B||], A union B, x, h(x) =
      cases(
          f(x)          ","quad &x in [|1, |A||],
          g(x - |A|) ","quad &x in [||A| + 1, |A| + |B||]
      )
  ) $

  Y demostrando que es biyectiva queda que $|A union B| = |A| + |B|$

  #todo[terminar la demostración]
]

#example(title: "Corolario")[
  Dada la familia de conjuntos finitos ${A_i}_(i = 1)^n$ disjuntos dos a dos con $n in NN$. Entonces:
  $ |union.big_(i=1)^n A_i|  = sum_(i=1)^n |A_i| $
  #todo[Demostrar]
]

#example(title: "Corolario")[
  Dados dos conjuntos cualesquiera $A$ y $B$ entonces:
  $ |A union B| = |A| + |B| - |A inter B| $
  #todo[Demostrar]
]

== Principio de multiplicación
Si $A$ y $B$ son conjuntos finitos entonces $|A times B| = |A| |B|$

#todo[Demostrar por inducción]

#example(title: "Corolario")[
  Dada la familia de conjuntos finitos ${A_i}_(i = 1)^n$ con $n in NN$, entonces:
  $ |A_1 times A_2 times dots times A_n|  = product_(i=1)^n |A_i| $
  #todo[Demostrar]
]

#pagebreak()

= Conjuntos de funciones
Dados dos conjuntos $A$ y $B$ el conjunto de todas las funciones con dominio $A$ y codominio $B$ es $functions(A, B)$, osea:
$ functions(A, B) = { f\/ space f: A -> B } $
$ functions(A, B) = { f subset.eq A times B: forall a in A space exists! b in B space f(a) = b } $

#example(title: "Teorema")[
  Sean $A$ y $B$ conjuntos tales que $|A| = n in NN$ y $|B| = m in NN$ entonces
  $ |functions(A, B)| = m^n $
]

Para demostrar el teorema se nombran los elementos de $A = {a_i}_(i=1)^n$ tal que toda #box[$f in functions(A, B)$] tiene la forma ${(a_i, b_i)}_(i=1)^n$ donde $b_i = f(a_i)$. Se define también una función
$ function(g, functions(A, B), B^n, f, (b_1, b_2, ..., b_n)) $
Y se da que es inyectiva debido a:
$ forall f, f^* in functions(A, B) quad f != f^*
  &implies exists k in [|1, n|] space f(a_k) != f^*(a_k) \
  &implies exists k in [|1, n|] space b_k != b_k^* \
  &implies (b_1, b_2, ..., b_n) != (b_1^*, b_2^*, ..., b_n^*) \
  &implies g(f_1) != g(f_2) $

También es sobre porque:
$ forall (b_1, b_2, ..., b_n) in B^n quad exists f in functions(A, B) quad f = {(a_i, b_i)}_(i=1)^n  $

Entonces $g$ es biyectiva y queda así que $|functions(A, B)| = |B^n| attach(=, t: (1)) |B|^n = m^n$
#align(right)[Q.E.D]
(1) Por el corolario del principio de multiplicación

#example(title: "Proposición")[
  Dado un conjunto finito $A$, el conjunto de partes $powerset(A)$ satisface $|powerset(A)| = 2^(|A|)$
]

Para demostrar la proposición necesitamos primero definir *función característica* para todo $B subset.eq A$ como:

$ function(chi_B, A, {0, 1}, x, chi_B (x) = cases(1"," quad &x in B, 0"," &x in.not B)) $

Y luego mostrar la biyectividad de la función

$ function(chi, powerset(A), functions(A, {1, 0}), B, chi(B) = chi_B) $

Viendo que

$ forall B_1, B_2 in powerset(A) quad B_1 != B_2 &implies
  not(B_1 subset.eq B_2 and B_2 subset.eq B_1) \
  &implies exists x in A space (x in B_1 and x in.not B_2) or (x in.not B_1 and in B_2) \
  &implies exists x in A space (chi_B_1 (x) = 1 and chi_B_2 (x) = 0) or \
  #hide($&implies exists x in A space$) (chi_B_1 (x) = 0 and chi_B_2 (x) = 1) \
  &implies chi_B_1 != chi_B_2 \
  &implies chi(B_1) != chi(B_2) $

Por lo tanto $chi$ es inyectiva y

$ forall f in functions(A, {1, 0}) quad exists B = {x: f(x) = 1} quad forall x in A space f(x) = cases(1"," quad &x in B, 0"," &x in.not B) \
  implies forall f in functions(A, {1, 0}) quad exists B = {x: f(x) = 1} quad chi(B) = chi_B = f $

Así $chi$ es sobreyectiva y por lo tanto biyectiva. Luego como existe una biyección entre $powerset(A)$ y $functions(A,{1,0})$ queda que

$ |powerset(A)| = |functions(A,{1,0})| = |{1,0}|^(|A|) = 2^(|A|) $
#align(right)[Q.E.D]

#todo[Mejorar la nomenclatura y legibilidad]

== Otros conjuntos
=== De funciones inyectivas
El conjunto de todas las funciones inyectivas de $A$ a $B$ es $functions_i (A, B)$

=== De funciones biyectivas
El conjunto de todas las funciones biyectivas de $A$ a $B$ es $functions_b (A, B)$

#pagebreak()

= Disposiciones lineales o Permutaciones
Dado una colección de $n in NN$ elementos cualquier disposición ('lineal' u ordenada) de estos elementos se denomina permutación de la colección.

En general si existen $n$ objetos distintos notados $a_i$ con $i in [|1, n|]$ dado un $r in [|1, n|]$ entonces por la regla del producto el número de permutaciones de tamaño $r$ para los $n$ objetos es:
$ P(n, r) = n!/(n-r)! $

Si $r = n$ se nota $P(n) = P(n, n) = display(n!/0!) = n!$

\ #todo[Dar mejor intuición]

#example(title: "Definición")[
  Dado un conjunto $A$ con $|A| = n in NN$ y un número $r in [|1, n|]$ se llama *disposición lineal* o *permutación* de $r$ elementos de $A$ a cualquier función inyectiva $f:[|1, r|] -> A$.
]

==== Notas
- Se suele identificar una permutación $f$ con la $n$-upla $(f(1), f(2), ... f(r)) in A^r$.
- Notamos $P(n,r)$ al número total de permutaciones de $r$ elementos para un conjunto de $n$ elementos. Osea, $P(n, r) = |functions_i ([|1, r|], [|1, n|])|$
- Si $r = n$ decimos que $f$ es una permutación de $n$ elementos y $P(n, n) = P(n)$.
- Se define $P(n, 0) = 1$

#example(title: "Teorema")[
  Dados los conjuntos finitos $A$ y $B$ con $|A| = n$, $|B| = m$ y $n <= m$ entonces
  $ |functions_i (A, B)| = m!/(m-n)! $

  #todo[Demostrar]
  Por inducción, empezando por $|B| = 1$ ...
]

#box(
 example(title: "Corolarios")[
    Para todos los $n,r in NN_0$ con $r <= n$
    $ P(n) = n! "  y  " P(n, r) = n!/(n-r)! $

    Para todos los conjuntos $A$ y $B$ con $|A| = |B| = n$
    $ |functions_b (A, B)| = n! $
 ]
)

== Permutaciones con repeticiones
Si tenemos un conjunto de elementos que queremos ordenar y dentro del mismo hay algún elemento que se encuentre repetido, para contar todos los posibles ordenes del conjunto debemos considerar los casos donde estos (por lo menos) dos elementos cambian de lugar entre sí y eliminarlos del total. Se da que si solo tenemos dos elementos equivalentes entonces simplemente dividiendo por $2$ el total de permutaciones de tamaño igual al tamaño del conjunto es suficiente para contar los casos repetidos, pero para casos más complejos con incluso varios grupos de elementos repetidos entonces la solución no es tan trivial.

En general si tenemos $n$ elementos con $r$ clases de equivalencia de tamaños $n_i$ para #box($i in [|1, r|]$) entonces la cantidad de permutaciones posibles de los $n$ elementos considerando las repeticiones es
$ n!/(n_1! n_2! ... n_r!) $
#todo[Formalizar con relaciones de equivalencia]
#todo[Demostrar]

== Disposiciones circulares
Si en vez de ubicar los elementos en fila lo hacemos de forma circular entonces da igual el lugar de comienzo para contabilizar las permutaciones de los elementos que sean simplemente rotaciones unas de otras. Por esto la formalización no es la misma y no se pueden aplicar los mismo métodos que para las disposiciones lineales.

= Combinaciones
Dado un conjunto de elementos del cual por algún motivo queremos elegir algunos de forma que no nos importa el orden si no que solo cuales son a la elección indistinta de la posición la llamamos *combinación* de elementos

#example(title: "Definición")[
  Dado un conjunto $A$ con $|A| = n in NN_0$ y un número $r in NN_0$ tal que $r <= n$ entonces se llama *combinación* de $r$ elementos de $A$ a todo subconjunto $S subset.eq A$ tal que $|S| = r$
]

#example(title: "Definición")[
  Dado un conjunto $A$ con $|A| = n in NN_0$ y un número $r in NN_0$ tal que $r <= n$ entonces se llama *número combinatorio  $n,r$* o *coeficiente binomial* a la cantidad de combinaciones de $r$ elementos de $A$ y se nota:
  $ C(n, r) = mat(n; r) = |{S in powerset(A): and |S| = r}| $

  Se suele expresar $mat(n; r)$ como *$n$, tomado de a $r$*
]

#example(title: "Proposición")[
  Dado un conjunto $A$ con $|A| = n in NN_0$ y un número $r in NN_0$ tal que $r <= n$ entonces
  $ C(n, r) = P(n, r)/r! = n!/((n-r)! r!) $
]
#todo[Demostrar]
#todo[Separar coeficiente binomial de cantidad de combinaciones desordenadas]
#todo[Eliminar la proposición innecesaria]

Propiedades del coeficiente binomial:

+ $mat(n; 0) = mat(n; n) = 1$

+ $mat(n; 1) = n$

+ $mat(n; r) = mat(n; n - r)$

+ $mat(n; r-1) + mat(n; r) = mat(n+1; r)$

=== Triangulo de pascal
#todo[Relacionar el coeficiente binomial con el binomio de Newton a través del triángulo de pascal]

== Binomio de Newton
El binomio de Newton nos permite obtener los coeficientes de la $n$-ésima potencia de un binomio mediante una formula sencilla. Paso a enunciar el teorema del binomio de Newton.

#example(title: "Teorema")[
  Dados $x, y in RR$, $n in N_0$ entonces
  $ (x + y)^n = sum_(k=0)^n mat(n; k) x^(n-k) y^k $

  #todo[Demostrar por inducción]
]

#example(title: "Corolarios")[
  $ sum_(k=0)^n mat(n; k) (-1)^k = 0 "  y  " sum_(k=0)^n mat(n; k) = 2^n $
]


Una forma de generalizar el binomio de Newton es la siguiente

#example(title: "Teorema")[
  Dados los números $n, r in NN_0$ y los números reales $n_i in RR$ definidos para todo $i in [|1, r|]$ tales que $sum_(i=1)^r n_i = n$ entonces el coeficiente acompañando a $product_(i=1)^r x_i^(n_i)$ en la expansión de $(x_1 + x_2 + ... + x_r)^n$ es
  $ n!/(n_1! n_2! ... n_r!) $

  #todo[Demostrar]
]

= Distribuciones
Combinaciones con repeticiones

#todo[Hacer, estoy cansado y con poco tiempo]

= El Principio del palomar
El Principio del palomar, o de las casillas, o de las cajas, o de Dirichlet, o alguno de todos los nombres que tiene dice que dados dos grupos de objetos uno con más objetos que el si a cada uno de los elementos del grupo con más objetos se le asigna uno del grupo menor entonces hay por lo menos dos elementos del grupo mayor que tienen asignado el mismo elemento del grupo menor. Se formaliza con el siguiente teorema:

#example(title: "Teorema")[
  Sean $n, m in NN$ con $n > m$ entonces $forall f in functions([|1, n|], [|1, m|]) space f "no es inyectiva"$
]

Para demostrarlo definimos el conjunto
$ H = {n in NN: exists m in [|1, n-1|] quad exists f in functions([|1, n|], [|1, m|]) space "f es inyectiva"} $
Y suponiendo que $H != emptyset$ se razona
$ &H subset.eq NN \
  therefore &H "está bien ordenado por " < \
  therefore &H "tiene primer elemento" h in H \
  therefore &exists m in [|1, h-1|] quad exists f in functions([|1, h|], [|1, m|]) space "f es inyectiva" $

Para $h <= 2$ es trivial la demostración de que $h in.not H$

Luego definiendo la función $g$ en relación a alguna $f:[|1, h|] -> [|1,m|]$ inyectiva
$ function(g, [|1, h-1|], [|1, m|], x, g(x) = f(x)) $

Queda que
$ &forall x_1, x_2 in Dom(g) quad g(x_1) = g(x_2) iff f(x_1) = f(x_2) implies x_1 = x_2 \
  &therefore g "es inyectiva" \
  &therefore h - 1 in H \
  &therefore h "no es primer elemento de H" \
  &therefore H = emptyset \
  &therefore forall n, m in NN quad n > m implies forall f in functions([|1, n|], [|1, m|]) space f "no es inyectiva" $

#align(right)[Q.E.D]
