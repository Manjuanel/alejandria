#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Teorema Fundamental del Cálculo]

= Funciones integrales
Sea la función $f$ integrable en $[a, b]$ entonces $forall x in [a, b] space (f "es integrable en" [a, x])$. Se define la función:
#align(center)[#function_def($F$, $[a, b]$, $RR$, $x$, $F(x) = integral_a^x f$)]

A $F$ es una función integral.

== Continuidad de las funciones integrales
Si $f$ es integrable en $[a, b]$ entonces $F$ es continua en $[a, b]$

#todo[Demostración]

= Primer teorema fundamental
Si $f$ es integrable en $[a, b]$ y continua en $c in (a, b)$ entonces $F$ es derivable en $c$ y $F'(c) = f(c)$

== Demostración
Debemos mostrar que existe el límite:
$ lim_(h -> 0) (F(c + h) - F(c))/h = L in RR$
#align(center)[y que]
$ L = f(c) $

#todo[El resto de la demostración utiliza el segundo teorema de Weierstrass]
