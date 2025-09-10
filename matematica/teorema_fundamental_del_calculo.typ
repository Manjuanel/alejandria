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

= Segundo teorema fundamental
Dada $f$ función continua en $[a, b]$ y $g$ una primitiva de $f$ (osea una función tal que cumple $g' = f$) entonces
$ integral_a^b f = g(b) - g(a) = g(x)|_a^b $

#todo[Demostración]

== Segundo teorema fundamental fuerte
Dada $f$ función integrable en $[a, b]$ y $g$ una primitiva de $f$ entonces
$ integral_a^b f = g(b) - g(a) = g(x)|_a^b $

#todo[Demostración]

= Derivadas con funciones integrales
$ f(x) = integral_a^g(x) h(x) = (F compose g)(x) \
  => f'(x) = (F' compose g)(x) dot g'(x) = h(g(x)) dot g'(x) $

= Funciones exponenciales y logarítmicas
== Función logaritmo
Se define al logaritmo natural como la función:
#align(center)[#function_def($ln$, $RR^+$, $RR$, $x$, $ln(x) = integral_1^x 1/t d t $)]

Se cumplen todas las propiedades habituales del logaritmo.

=== Constante $e$
Se define $e$ como el real tal que $ln(e) = 1$.
#todo[Completar]

== Función exponencial
Se define la función exponencial $f$ como:
#align(center)[#function_def($exp$, $RR$, $RR^+$, $x$, $exp(x)$)]
Tal que:
$ exp(x) = y <=> x = ln(y) $

Se cumplen todas las propiedades habituales de la exponencial.
#todo[Completar]

== Funciones logaritmos y exponenciales generales.
=== Logaritmo en base $a$
El logaritmo en base $a$ es la función:
#align(center)[#function_def($log_a$, $RR^+$, $RR$, $x$, $log_a (x) = ln(x)/ln(a)$)]

=== Exponencial en base $a$
La exponencial en base $a$ es la función:
#align(center)[#function_def($f$, $RR$, $RR^+$, $x$, $f(x) = exp(ln(a)x) = a^x $)]

Entonces $exp(x) = exp(ln(e)x) = e^x$

Se define también la exponencial en base $1$ como $1^x = 1$
