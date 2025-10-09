#import "../lib.typ" : *
#show: init.with(debug: true)

#let gr = "gr"

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
#align(center)[#function_def($ln$, $RR^+$, $RR$, $x$, $ln(x) = integral_1^x 1/t dif t $)]

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

= Búsqueda de primitivas
== Forma general de las primitivas
Dada una función $f$ integrable y $F$ una primitiva de $f$ a la familia de todas sus primitivas se le simboliza:
$ integral f = F(x) + c space, c in RR $

== #todo[titulo]
Dada una función $f$ integrable una primitiva $F$ se simboliza:
$ F(x) = integral^x f $
ya que el extremo inferior es irrelevante al hacer diferir a la primitiva de otras primitivas por una constante.

== Función error de Gauss y seno integral
#todo[]

== Primitivas directas
#todo[]

== Método de sustitución
Sea $g$ función derivable, $g'$ continua en $[a, b]$ y $f$ continua en $Im(g)$ entonces
$ integral_g(a)^g(b) f = integral_a^b (f compose g) g' $

#todo[dem]
$ integral_g(a)^g(b) f &= integral_g(a)^g(b) F'
                       &= F'|_g(a)^g(b)
                       &= F(g(b)) - F(g(a)) \
                       &= (F compose g)(b) - (F compose g)(a) \
                       &= integral_a^b (F compose g)' \
                       &= integral_a^b (F' compose g) g' \
                       &= integral_a^b (f compose g) g' \
$


== Método de integración por partes
Dadas dos funciones derivables $f$ y $g$ con $f'$ y $g'$ continuas en un intervalo abierto que contiene a $[a, b]$ entonces:
$ integral_a^b f g'  = integral_a^b (f g)' - integral_a^b f' g = (f g)|_a^b - integral_a^b f' g $

Tomando $u = f(x)$ y $v = g(x)$ queda:
$ integral u dif v = u v - integral v dif u $

== Método de reducción a fracciones simples
Sean $p$ y $q$ polinomios, entonces se busca escribir $p/q$ como una división de polinomios donde el $q$ tiene mayor grado que $p$. Si $gr(p) < gr(g)$ ya está, luego si $gr(p) >= gr(q) => (p/q)(x) = c(x) + r(x)/q(x)$ donde $gr(r) < gr(q)$. Así tenemos una suma donde un termino es un polinomio (que ya sabemos integrar) y el segundo lo que buscamos. Luego factorizando el polinomio en el denominador queda una multiplicación de términos de la forma $(x - alpha)^k$. Entonces se puede reescribir la división de polinomios como la suma de todas las expresiones
$ sum_(i=1)^k A_i/(x-alpha)^i $
para cada alpha donde $A_i in RR$ quedando en caso de haber $n$ raices distintas $alpha_j$
$ sum_(j=1)^n sum_(i=1)^k A_i/(x-alpha_j)^i $

Luego si se encuentran valores para todas las $A_i$ la integral queda
$ integral_a^b sum_(j=1)^n sum_(i=1)^k A_i/(x-alpha_j)^i dif x = \
  sum_(j=1)^n sum_(i=1)^k integral_a^b A_i/(x-alpha_j)^i dif x $

Y eso ya lo sabemos integrar.

Si el denominador tiene raíces complejas queda la expresión de la siguiente manera:
$ integral_a^b sum_(j=1)^n sum_(i=1)^k (A_i+B_i x)/((x-alpha_j^2)-beta_j^2)^i dif x = \
  sum_(j=1)^n sum_(i=1)^k integral_a^b (A_i+B_i x)/((x-alpha_j^2)-beta_j^2)^i dif x $

#todo[Revisar por claridad, está desprolijo]

= Integrales impropias
El concepto de integral impropia es una generalización de una integral diferente a la misma (como una integral pero no).

== De primera especie
Dadas $f:[a,+oo) -> RR$ integrable y $I:[a,+oo) -> RR$ tal que $I(b) = integral_a^b f$ se llama *integral impropia de primera especie* de $f$ a:
$ lim_(b->+oo) I(b) = lim_(b->+oo) integral_a^b f = integral_a^oo f $
Si existe el límite la integral impropia es convergente y si no es divergente.

Para funciones no negativas es el área bajo la curva del punto $a$ al infinito.

Análogamente se define para el extremo inferior para una $f$ razonable.
$ lim_(a->-oo) I(a) = lim_(a->-oo) integral_a^b f = integral_(-oo)^b f $

Luego para ambos extremos se usa:
$ integral_(-oo)^oo f = lim_(a->-oo) integral_a^c f + lim_(b->+oo) integral_c^b f $
y existe solo si existen ambos limites. El $c$ es arbitrario y se puede elegir a conveniencia.

=== Criterio de convergencia
Para las funciones $f:[a, +oo) -> RR$ y $g:[a, +oo) -> RR$ tal que $forall x in [a, +oo) space 0 <= f(x) <= g(x)$ con $f$ y $g$ integrables en $[a, b]$ para cualquier $b in [a, +oo)$ entonces:
$ integral^oo f "converge, implica" integral^oo g "converge" $
$ integral^oo g "diverge, implica" integral^oo f "diverge" $

== De segunda especie
Dada la función $J:(a, b] -> RR$ de ley $J(c) = integral_c^b f$ la *integral impropia de segunda especie* si existe es el límite:
$ lim_(c->a^+) J(c) = integral_(a^+)^b f = integral_a^b f $

Análogamente se definen $integral_a^(b^-) f$ y $integral_(a^+)^(b^-) f$ y se define que si existen $integral_(a^+)^(c^-) f$ y $integral_(c^+)^(b^-) f$ entonces existe $integral_(a^+)^(b^-) f$ y vale $integral_(a^+)^(c^-) f + integral_(c^+)^(b^-) f$
