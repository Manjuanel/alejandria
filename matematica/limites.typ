#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Límites]
En este apunte se explayaran conceptos relacionados al límite y se usará la definición formal del límite para funciones reales.

= Entornos
== Distancia de puntos
La distancia entre dos puntos $x, y in RR$ es $d(x, y) = abs(x - y)$

== Entorno
Dados $a, delta in RR$ el *entorno* de $a$ de radio $delta$ es $E(a, delta) = {x in RR: abs(x - a) < delta}$

== Entorno reducido
Dados $a, delta in RR$ el *entorno reducido* de $a$ de radio $delta$ es $E'(a, delta) = {x in RR: 0 < abs(x - a) < delta}$

== Contención de entornos
Sean $a, delta, delta_1, delta_2 in RR$ entonces si $delta <= min{delta_1, delta_2}$ se da que:
$ E(a, delta) subset.eq E(a, delta_1) inter E(a, delta_2) $
$ E'(a, delta) subset.eq E'(a, delta_1) inter E'(a, delta_2) $

= Límite finito
== Definición
Dada una función real $f$ y $a in RR$ tal que $exists delta [forall x in E(a, delta) space x in Dom(f)]$ decimos (si existe) que $l$ es el límite de $f$ cuando la variable independiente tiene al valor $a$ si:
$ forall epsilon in RR^+ space exists delta in RR^+ space [x in E'(a, delta) => f(x) in E(l, epsilon)] $
#align(center)[_osea_]
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l) < epsilon) $
#align(center)[_y notamos_]
$ limit_(x->a) f(x) = l $

=== Propiedades
+ $limit_(x->a) f(x) = l <=> limit_(x->0) f(x + a) = l <=> limit_(x->b) f(x + a - b) = l$

+ $forall delta in RR space forall delta' in RR space [delta' < delta => forall x (0 < abs(x-a) < delta' => 0 < abs(x-a) < delta)]$

=== Casos específicos
Sean $f$ una función y $a in RR$ entonces considerando el mayor dominio posible los límites de $f$ cuando $x$ tiende a $a$ son:
+ Función constante: $limit_(x->a) c = c$

+ Función polinómica: $forall p in RR[x] space limit_(x->a) p(x) = p(a)$

+ Función recíproca: $limit_(x->a) 1/x = 1/a$

== Unicidad del límite
Sea $f$ una función definida en un entorno de $a in RR$  y sean $l_1, l_2 in RR$ dos números reales tales que $limit_(x->a) f(x) = l_1 and limit_(x->a) f(x) = l_2$ entonces:

$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l_1) < epsilon)\
and\
forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l_2) < epsilon) $

#align(center)[y se puede demostrar que]
$ forall epsilon in RR^+ space abs(l_1 - l_2) < epsilon => l_1 = l_2 $

== No existencia del límite
Para [...] se dice que no existe el límite cuando se da que:
$ exists epsilon in RR^+ space forall delta in RR^+ space exists x (0 < abs(x-a) < delta => abs(f(x)-l) < epsilon) $

== Límites laterales
Para [...] se dice que existe el límite por izquierda cuando:
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (a - delta < x < a => abs(f(x)-l) < epsilon) $

Para [...] se dice que existe el límite por derecha cuando:
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (a < x < a + delta => abs(f(x)-l) < epsilon) $

==
