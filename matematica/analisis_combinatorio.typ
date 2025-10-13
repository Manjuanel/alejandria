#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Análisis Combinatorio]
El análisis combinatorio se interesa en contar cosas. #todo[Explayarse o eliminar]

= Reglas de la suma y el producto

== Suma
Si hay una elección entre $n$ opciones y otra entre $m$ y se tienen que elegir alguna opción entre todas las de $n$ y $m$ juntas entonces hay $n+m$ formas de hacerlo.

== Producto
Si hay una elección entre $n$ opciones y otra entre $m$ y se tienen que elegir ambas al mismo tiempo hay $n m$ formas de hacerlo.

== Cardinalidad
Un conjunto $X$ tiene cardinalidad $n$, con $n in NN$ si existe una función biyectiva $f:[|1, n|] -> X$ y se denota $abs(X) = n$. Si un conjunto tiene cardinalidad igual a algún número natural se dirá finito.

== Principio de adición
Si $A$ y $B$ son conjuntos finitos y disjuntos entonces $abs(A union B) = abs(A) + abs(B)$

=== Demostración
Sean $n, m in NN$ con $n = abs(A)$ y $m = abs(B)$ entonces por hipótesis existen las funciones biyectivas\ $f: [|1, n|] -> A$ y $g: [|1, m|] -> B$.
Luego defino una función:

$
h: [|1, abs(A) + abs(B)|] &-> A union B \
n &|-> f(n) =
cases(
 f(n)          &","quad n in [|1, abs(A)|],
 g(n - abs(A)) &","quad n in [|abs(A) + 1, abs(A) + abs(B)|]
)
$

Y demostrando que es biyectiva queda que $abs(A union B) = abs(A) + abs(B)$
#todo[Demostración]

=== Corolarios:
Dada la familia de conjuntos finitos ${A_i}_(i = 1)^n$ disjuntos dos a dos con $n in NN$. Entonces:
$ abs(union.big_(i=1)^n A_i)  = sum_(i=1)^n abs(A_i) $
#todo[Demostración]

Dados dos conjuntos cualesquiera $A$ y $B$ entonces:
$ abs(A union B) = abs(A) + abs(B) - abs(A inter B) $
#todo[Demostración]

== Principio de multiplicación
Si $A$ y $B$ son conjuntos finitos entonces $abs(A times B) = abs(A) abs(B)$

=== Corolarios
Dada la familia de conjuntos finitos ${A_i}_(i = 1)^n$ con $n in NN$, entonces:
$ abs(A_1 times A_2 times dots times A_n)  = product_(i=1)^n abs(A_i) $

= Disposiciones lineales o Permutaciones
Dado una colección de $n in NN$ elementos cualquier disposición ('lineal' u ordenada) de estos elementos se denomina permutación de la colección.

En general si existen $n$ objetos distintos notados $a_i$ con $i in [|1, n|]$ dado un $r in [|1, n|]$ entonces por la regla del producto el número de permutaciones de tamaño $r$ para los $n$ objetos es:
$ P(n, r) = n!/(n-r)! $

Si $r = n$ se nota $P(n) = P(n, n) = display(n!/0!) = n!$
