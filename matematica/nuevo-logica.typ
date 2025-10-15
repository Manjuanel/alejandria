#import "../macros.typ": *
#import "../style.typ": *

#let title = "Álgebra y Geometría Analítica I"
#let author = "Hirch, Juan Manuel"
#let color = blue

#show: init.with(
	title: title,
	author: author,
	color: color,
	full_title: false,
	font_size: 13pt,
	//debug: true
)

= Lógica
== Proposiciones
=== Definición
Se considera proposición a cualquier oración a la cual se le pueda asignar un valor de verdad ($V$ o $F$).
Se las suele nombrar con una única letra minúscula ($p,q,s$).

=== Conectores Lógicos
Son operadores de proposiciones que resultan en otras proposiciones.
- *Negación*: La negación de $p$ se simboliza $not p$, y su valor de verdad es el opuesto de $p$.
- *Conjunción*: La conjunción entre $p$ y $q$ es $p and q$, y es verdadera sólo si ambas proposiciones lo son.
- *Disyunción*: 
	- Inclusiva: Se simboliza $p or q$ y es verdadero si al menos $p$ o $q$ son verdaderas.  
	- Exclusiva: Se simboliza $p xor q$ y es verdadero si $p$ o $q$ son verdaderas, pero no ambas. 
- *Implicación*: Se simboliza $p -> q$, a $p$ se le llama _hipótesis_ y $q$ _tesis_, y es verdadero
	salvo que $p$ sea verdadero, y $q$ no. 
- *Bicondicional*: Se simboliza $p bic q$, y es verdadero cuando $p$ y $q$ tienen el mismo valor de
	verdad.
=== Proposiciones Primitivas
Son aquellas proposiciones que no pueden ser formadas a partir de conectores lógicos.

=== Tautologías y Contradicciones
Una proposición compuesta se llama _tautología_ si es verdadera para cualquier combinación de asignaciones
de verdad de las proposiciones que la componen. Lo contrario es llamado _contradicción_.

=== Equivalencia Lógica
Dos proposiciones $s_1, s_2$ son _lógicamente equivalentes_ si tienen la misma tabla de verdad. Se simboliza
$s_1 iff s_2$.
La Equivalencia Lógica tiene las siguientes propiedades:
- $s iff s$
- si $s_1 iff s_2$, entonces $s_2 iff s_1$
- si $s_1 iff s_2$ y $s_2 iff s_3$, entonces $s_1 iff s_3$
#pagebreak()

== Leyes de la Lógica

Sean $p,q,r$ proposiciones primitivas, $T_0$ y $F_0$ una _tautología_ y _contradicción_ respectivamente,
se cumplen:

#v(1.5cm)

#align(center)[
- $not not p iff p$ #h(3fr) #text(color)[*Ley de doble negación*]

#line(length: 100%)
- $not(p or q) iff not p and not q$ #h(3fr) 

	$not(p and q) iff not p or not q$ #h(3fr) #text(color)[*Leyes de De Morgan*]

#line(length: 100%)
- $p or q iff q or p$ #h(3fr)		 
	 
	$p and q iff q and p$ #h(3fr) #text(color)[*Leyes Conmutativas*]

#line(length: 100%)
- $p or (q or r) iff (p or q) or r$ #h(3fr)		 

	$p and (q and r) iff (p and q) and r$ #h(3fr) #text(color)[*Leyes Asociativas*]

#line(length: 100%)
- $p or (q and r) iff (p or q) and (p or r)$ #h(3fr)		 
	 
	$p and (q or r) iff (p and q) or (p and r)$ #h(3fr) #text(color)[*Leyes Distributivas*]

#line(length: 100%)
- $p or p iff p$ #h(3fr)		 
	 
	$p and p iff p$ #h(3fr) #text(color)[*Leyes Idempotentes*]

#line(length: 100%)
- $p or F_0 iff p$ #h(3fr)		 
	 
	$p and T_0 iff p$ #h(3fr) #text(color)[*Leyes de Neutro*]

#line(length: 100%)
- $p or not p iff T_0$ #h(3fr)		 
	 
	$p and not p iff F_0$ #h(3fr) #text(color)[*Leyes Inversas*]

#line(length: 100%)
- $p or T_0 iff T_0$ #h(3fr)		 
	 
	$p and F_0 iff F_0$ #h(3fr) #text(color)[*Leyes de Dominación*]

#line(length: 100%)
- $p and (p or q) iff p$ #h(3fr)		 
	 
	$p or (p and q) iff p$ #h(3fr) #text(color)[*Leyes de Absorción*]
#line(length: 100%)
]

== Inferencia
=== Argumento
Se le llama *argumento* a una _proposicion compuesta_ de la forma:
#v(8mm)
#text(size: 18pt)[
$
p_1 and p_2 and p_3 and dots and p_k then q
$
]
#pagebreak()
#v(8mm)
Llamamos _premisas_ al conjunto de todas las $p$, y _conclusion_ a $q$. Se dice que
el argumento es *valido* si es una _tautologia_, escrito: 
#v(8mm)
#text(size: 18pt)[
$
p_1 and p_2 and p_3 and dots and p_k implies q
$
]
#v(8mm)

Tambien llamamos a esto *_Implicancia Logica_*.

#example(color: color)[
Si intentamos demostrar
$
[(p then r) and (r then s) and (t or not s) and (not t or u) and not u] implies not p
$

deberiamos ver que
$
[(p then r) and (r then s) and (t or not s) and (not t or u) and not u] then not p
$
es una *tautologia*.

Para que una _implicancia_ sea falsa, la hipotesis debe ser verdadera, y la tesis falsa.

Entonces supongamos que

$
p then r, quad r then s quad t or not s, quad not t or u, quad not u
$
son todas verdaderas y $not p$ falso, osea $p$ verdadero.
- si $p$ #text(color)[*verdadero*] y $p then r$ #text(color)[*verdadero*], $r$ #text(color)[*verdadero*].
- si $r$ #text(color)[*verdadero*] y $r then s$ #text(color)[*verdadero*], $s$ #text(color)[*verdadero*].
- si $s$ #text(color)[*verdadero*] entonces $not s$ #text(color)[*falso*].
- si $s$ #text(color)[*verdadero*] y $t or not s$ #text(color)[*verdadero*], $t$ debe ser #text(color)[*verdadero*].
- si $p$ #text(color)[*verdadero*] y $p then r$ #text(color)[*verdadero*], $r$ #text(color)[*verdadero*].
]
