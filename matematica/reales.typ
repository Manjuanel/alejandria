#import "../macros.typ": *
#import "../estilo.typ":	* 

#let color = blue 

#show: init.with(
	title: "Funciones Reales",
	author: "Hirch, Juan Manuel & Isern, Pedro Ignacio",
	color: color,
	full_title: false,
	font_size: 12pt,
  ver: "v0.1",
	//debug: true
)

= Los Números Reales
== Introducción
Veremos en esta sección una posible definición axiomática de los números reales. Los axiomas se dividen en tres grupos y son, los axiomas de cuerpo, de orden y del supremo.

Se da por sabido conocimiento básico de conjuntos y lógica. El conjunto de números reales se simboliza $RR$. Las operaciones binarias de suma y multiplicación (o producto) entre dos números reales $a, b$ se notan $a + b$ y $a b$ (o $a dot b$) respectivamente.

== Axiomas de Cuerpo

=== Los Axiomas de Cuerpo
Dados los números $a, b, c in RR$ se cumplen:
+ *Propiedades conmutativas:*\
  $a + b = b + a$ y $a b = b a$
+ *Propiedades asociativas:*\
  $a + (b + c) = (a + b) + c$ y $a (b c) = (a b) c$
+ *Propiedad distributiva:*\ 
  $a(b + c) = a b + a c$
+ *Existencia de elementos neutros:*\
  $exists 0 : [ a + 0 = 0 + a = a ]$ y $exists 1 : [ a 1 = 1 a = a ]$
+ *Existencia de elementos opuestos:*\
  $forall a [ exists b [ a + b = 0 ]]$
+ *Existencia de elementos recíprocos (o inversos):*\
  $forall a != 0 space exists b [ a b = 1 ]$

=== Ley de Simplificación para la Suma
También llamada _propiedad cancelativa de la suma_, tenemos que:
#align(center)[
Sean $a, b, c in RR$ entonces si $a + b = a + c$ se da que $b = c$.
]

#example(color : color, title: "demostración")[

Sean $a, b, c, d in RR$ tal que $a + b = a + c = d$. Por la existencia del elemento opuesto sabemos que hay un $y in  RR$ tal que $y + a = 0$ entonces:

1. $y + d = y + (a + b) attach(=, t: "(i)") (y + a) + b = 0 + b attach(=, t: "(ii)") b$

2. $y + d = y + (a + c) = (y + a) + c = 0 + c = c$
$therefore b = c$
]
#super[(i) Propiedad asociativa] #super[(ii) Existencia del elemento neutro]

=== Diferencia (o resta) de Números Reales
Primero definimos que dado un $a in RR$ su elemento opuesto se nota $-a$ tal que $a + (-a) = 0$.

Dados $a,b in RR$ la diferencia entre ellos es $a - b = a + (-b)$

#example(color : color, title: "propiedades")[
Dados $a, b, c in RR$ se cumplen:
- $-(-a) = a$
- $-0 = 0$
- $0 dot a = 0$
- $a (-b) = -(a b) = (-a)b$
- $(-a)(-b) = a b$
- $a(b - c) = a b - a c$
]

=== Ley de Simplificación para Producto
También llamada _propiedad cancelativa del producto_, tenemos:
#align(center)[
Sean $a, b, c in RR$ con $a != 0$ entonces si $a b = a c$ se da que $b = c$.
]

#todo[Demostración]

=== Unicidad del Elemento Neutro del Producto
Si $1'$ es un número real que verifica $forall a in RR space a dot 1' = 1' dot a = a$ entonces $1' = 1$

=== Unicidad del Recíproco
$forall a in RR-{0} space exists! b in RR-{0} space a b = b a = 1$

=== Cociente de Números Reales
Primero definimos que dado un $a in RR-{0}$ su recíproco se nota $a^(-1)$ tal que $a a^(-1) = 1$.

Dados $a in RR$ y $b in RR-{0}$ el cociente entre ellos es $a/b = a b^(-1)$

#example(color : color, title: "propiedades")[
Dados $a, b, c, d in RR$ se cumplen:
- $1^(-1) = 1$
- $a/1 = a$
- $a != 0 => 1/a = a^(-1)$
- $a b = 0 => a = 0 or b = 0$
- $b != 0 and d != 0 =>$
    - $(b d)^(-1) = b^(-1) d^(-1)$
    - $a/b+c/b = (a d + b c)/(b d)$
    - $a/b dot c/d = (a c)/(b d)$
- $a != 0 and b != 0 => (a/b)^(-1) = a^(-1)/b^(-1)$
- $-a = (-1) a$
]

== Axiomas de Orden
Para poder enunciar los axiomas de orden debemos primero declarar el conjunto de los números positivos. Suponemos que existe un $RR^+ subset.eq RR$ y lo llamamos conjunto de números positivos.

=== Los Axiomas de Orden
7. La suma y el producto son cerrados en los números positivos:\
   $a in RR^+ and b in RR^+ => a + b in RR^+ and a b in RR^+$
+ Para todo real $a != 0$ se da que $a$ es positivo o su opuesto $-a$ es positivo pero no ambos:\
  $forall a in RR space a != 0 -> (a in RR^+ and -a in.not RR^+) or (a in.not RR^+ and -a in RR^+)$
+ El elemento neutro de la suma (el cero) no es positivo:\
  $0 in.not RR^+$

=== Símbolos de Procedencia
Dados $a, b in RR$
- Menor a: $a < b <=> b - a in RR^+$
- Mayor a: $a > b <=> a - b in RR^+ <=> b < a$
- Menor o igual a: $a <= b <=> b - a in RR^+ or a = b$
- Mayor o igual a: $a >= b <=> a - b in RR^+ or a = b <=> b <= a$

#example(color : color, title: "propiedades")[
Para cualesquiera $a, b, c, d in RR$
- $a < b => a + c < b + c$
- $a < b and c < d => a + c < b + d$
- $a < b and c > 0 => a c < b c$
- $a < b and c < 0 => a c > b c$
- $a != 0 =>  a dot a > 0$
- $1 > 0$ osea $1 in RR^+$
- $a < b => -b < -a$
- $a b > 0 <=> a, b in RR^+ or (a in.not RR^+ and b in.not RR^+)$
- $a b < 0 <=> a in RR^+ xor b in RR^+$
- $a > 0 <=> 1/a > 0$
- $0 < a < b => 0 < 1/b < 1/a$
]

== La Recta Real
#todo[Explicar la representación geométrica de los números reales]

=== Intervalos Reales
Dados $a, b in RR$ tal que $a < b$:
- $(a, b) = {x in RR: a < x < b}$ (intervalo abierto)
- $[a, b) = {x in RR: a <= x < b}$ (semiabierto a derecha o semicerrado a izquierda)
- $(a, b] = {x in RR: a < x <= b}$ (semiabierto a izquierda o semicerrado a derecha)
- $[a, b] = {x in RR: a <= x <= b}$ (intervalo cerrado)
- $(a, +oo) = {x in RR: a < x}$
- $[a, +oo) = {x in RR: a <= x}$
- $(-oo, b) = {x in RR: x < b}$
- $(-oo, b] = {x in RR: x <= b}$

#todo[Representaciones gráficas]

=== Valor Absoluto de un Número Real
Dado $x in RR$ entonces el valor absoluto $abs(x)$ es la distancia del punto correspondiente a $x$ al punto correspondiente a $0$. Su valor es:
$ abs(x) = casesAlign(x, x >= 0, -x, x < 0) $

#example(color : color, title: "propiedades")[
Sean $x, y in RR$ se cumplen:
- $abs(x) >= 0$
    - $abs(x) = 0 <=> x = 0$
- $abs(x) = abs(-x)$
- $-abs(x) <= x <= abs(x)$
- Dado $a in R^+$ entonces:
    - $abs(x) < a <=> -a < x < a$
    - $abs(x) > a <=> x < -a or x > a$
- Desigualdad triangular: $abs(x + y) <= abs(x) + abs(y)$
- $abs(x dot y) = abs(x) dot abs(y)$
- $y != 0 => abs(x/y) = abs(x)/abs(y)$
]

#todo[Completar]


== Subconjuntos de los Reales
Con los axiomas de cuerpo y de orden podemos empezar a definir algunos subconjuntos de los reales ampliamente utilizados.

=== Los Números Naturales
El conjunto de números naturales (notamos $NN$) se define mediante las siguientes reglas:
+ $1 in NN$
+ $a in NN => a + 1 in NN$

Notemos que $NN subset.eq RR^+$ ya que $1 > 0$ y $a > 0 => a + 1 > 0$.

=== Los Números Enteros
El conjunto de los números enteros (notamos $ZZ$) se define por:
$ ZZ = {x in RR: x in NN or -x in NN or x = 0} $

=== Los Números Racionales
El conjunto de los números racionales (notamos $QQ$) se define por:
$ QQ = {x in RR: exists p, q in ZZ space q != 0 and x = p/q} $

=== Los Números Irracionales
El conjunto de los números irracionales (notamos $II$) se define por $II = RR - QQ$.

== Axioma del Supremo
#todo()[Falta agregar para que existe este axioma (mostrar que $RR - QQ = II != emptyset$]

=== Cotas Superiores, Supremo y Máximo
Dado el conjunto $A subset.eq RR$ tal que $A != emptyset$ y el número $b in RR$:
- Se dice que $b$ es *cota superior* de $A$ si $forall a in A space a <= b$.
    - Si existe al menos una cota superior para $A$ entonces $A$ esta acotado superiormente.
- Se dice que $b$ es *supremo* de $A$ y se nota $b = sup(A)$ si:
    - $forall a in A space a <= b$.
    - $forall c in RR space c < b -> c "no es cota superior de" A$
- Se dice que $b$ es el máximo de $A$ y se nota $b = max(A)$ si:
    - $forall a in A space a <= b$.
    - $b in A$

=== Supremacía del Máximo
#align(center)[
Sean $A subset.eq RR$ tal que $A != emptyset$ y $b in RR$ entonces $b = max(A) <=> b in A and b = sup(A)$
]

=== El Axioma del Supremo
Todo conjunto no vacío de números reales _acotado superiormente_ tiene supremo. Simbólicamente:

$ forall A in powerset (RR) space [(exists b in RR space forall a in A space a <= b) -> exists b in RR space b = sup(A)] $

=== Existencia de Raíces Cuadradas
#align(center)[
Dado $a in RR$ entonces $a >= 0 => exists! x in RR space (x >= 0 and x^2 = a)$
]

// por que estaba esto?
//=== Número de Euler
//Notado $e$ se define por:
//$ e in RR and e = sup({x in RR: exists n in NN space (1 + 1/n)^n}) $

=== Cotas Inferiores, Ínfimo y Mínimo
Dado el conjunto $A subset.eq RR$ tal que $A != emptyset$ y el número $b in RR$:
- Se dice que $b$ es *cota inferior* de $A$ si $forall a in A space a >= b$.
    - Si existe al menos una cota inferior para $A$ entonces $A$ esta acotado inferiormente.
- Se dice que $b$ es *ínfimo* de $A$ y se nota $b = inf(A)$ si:
    - $forall a in A space a >= b$.
    - $forall c in RR space c > b -> c "no es cota inferior de" A$
- Se dice que $b$ es el mínimo de $A$ y se nota $b = min(A)$ si:
    - $forall a in A space a >= b$.
    - $b in A$

=== Infimacía#super[$dagger$] del Mínimo
#align(right)[#v(-1.9em)#super[$dagger$ Esa palabra es una mentira]]
Sean $A subset.eq RR$ tal que $A != emptyset$ y $b in RR$ entonces $b = min(A) <=> b in A and b = inf(A)$

=== Teorema del Ínfimo
Todo conjunto no vacío de números reales acotado inferiormente tiene ínfimo. Simbólicamente:

$ forall A in powerset (RR) space [(exists b in RR space forall a in A space a >= b) -> exists b in RR space b = inf(A)] $


