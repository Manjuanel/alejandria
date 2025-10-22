#import "../macros.typ": *
#import "../estilo.typ": *

#show: init.with(
  title: "Análisis Real",
  full_title: true,
  author: none,
  debug: true
)

#let gr = "gr"

= El conjunto de los Números Reales
Veremos en este capítulo una posible definición axiomática de los números reales. Los axiomas se dividen en tres grupos y son, los axiomas de cuerpo, de orden y del supremo.

El conjunto de números reales es $RR$. Las operaciones binarias de suma y multiplicación (o producto) entre dos números reales $a, b in RR$ se notan $a + b$ y $a b$ (o $a dot b$) respectivamente.

== Axiomas de cuerpo
=== Los axiomas de cuerpo (propiedades aritméticas)
Dados los números reales $a, b, c in RR$ de cumplen:
+ Propiedades conmutativas: $a + b = b + a$ y $a b = b a$
+ Propiedades asociativas: $a + (b + c) = (a + b) + c$ y $a (b c) = (a b) c$
+ Propiedad distributiva: $a(b + c) = a b + a c$
+ Existencia de elementos neutros: $exists 0 [ a + 0 = 0 + a = a ]$ y $exists 1 [ a 1 = 1 a = a ]$
+ Existencia de elementos opuestos: $forall a [ exists b [ a + b = 0 ]]$
+ Existencia de elementos recíprocos (o inversos): $forall a != 0 space exists b [ a b = 1 ]$

=== Ley de simplificación para la suma
También llamada propiedad cancelativa de la suma es:

Sean $a, b, c in RR$ entonces si $a + b = a + c$ se da que $b = c$.

==== Demostración
Sean $a, b, c, d in RR$ tal que $a + b = a + c = d$. Por la existencia del elemento opuesto sabemos que hay un $y in  RR$ tal que $y + a = 0$ entonces:
1. $y + d = y + (a + b) attach(=, t: "(i)") (y + a) + b = 0 + b attach(=, t: "(ii)") b$
2. $y + d = y + (a + c) = (y + a) + c = 0 + c = c$
$therefore b = c$

#super[(i) Propiedad asociativa] #super[(ii) Existencia del elemento neutro]

=== Diferencia (o resta) de números reales
Primero definimos que dado un $a in RR$ su elemento opuesto se nota $-a$ tal que $a + (-a) = 0$.

Dados $a, b in RR$ la diferencia entre ellos es $a - b = a + (-b)$

==== Propiedades de la diferencia y el opuesto
Dados $a, b, c in RR$ se cumplen:
+ $-(-a) = a$
+ $-0 = 0$
+ $0 dot a = 0$
+ $a (-b) = -(a b) = (-a)b$
+ $(-a)(-b) = a b$
+ $a(b - c) = a b - a c$

=== Ley de simplificación para producto
También llamada propiedad cancelativa del producto es:

Sean $a, b, c in RR$ con $a != 0$ entonces si $a b = a c$ se da que $b = c$.

#todo[Demostración]

=== Unicidad del elemento neutro del producto
Si $1'$ es un número real que verifica $forall a in RR space a dot 1' = 1' dot a = a$ entonces $1' = 1$

=== Unicidad del reciproco
$forall a in RR-{0} space exists! b in RR-{0} space a b = b a = 1$

=== Cociente de números reales
Primero definimos que dado un $a in RR-{0}$ su reciproco se nota $a^(-1)$ tal que $a a^(-1) = 1$.

Dados $a in RR$ y $b in RR-{0}$ el cociente entre ellos es $a/b = a b^(-1)$

==== Propiedades del cociente y el reciproco
Dados $a, b, c, d in RR$ se cumplen:
+ $1^(-1) = 1$
+ $a/1 = a$
+ $a != 0 => 1/a = a^(-1)$
+ $a b = 0 => a = 0 or b = 0$
+ $b != 0 and d != 0 =>$
    - $(b d)^(-1) = b^(-1) d^(-1)$
    - $a/b+c/b = (a d + b c)/(b d)$
    - $a/b dot c/d = (a c)/(b d)$
+ $a != 0 and b != 0 => (a/b)^(-1) = a^(-1)/b^(-1)$
+ $-a = (-1) a$

== Axiomas de orden
Para poder enunciar los axiomas de orden debemos primero declarar el conjunto de los números positivos. Suponemos que existe un $RR^+ subset.eq RR$ y lo llamamos conjunto de números positivos.

=== Los axiomas de orden
7. La suma y el producto son cerrados en los números positivos:\
   $a in RR^+ and b in RR^+ => a + b in RR^+ and a b in RR^+$
+ Para todo real $a != 0$ se da que $a$ es positivo o su opuesto $-a$ es positivo pero no ambos:\
  $forall a in RR space a != 0 -> (a in RR^+ and -a in.not RR^+) or (a in.not RR^+ and -a in RR^+)$
+ El elemento neutro de la suma (el cero) no es positivo:\
  $0 in.not RR^+$

=== Símbolos menor a, mayor a, ...
Dados $a, b in RR$
+ Menor a: $a < b <=> b - a in RR^+$
+ Mayor a: $a > b <=> a - b in RR^+ <=> b < a$
+ Menor o igual a: $a <= b <=> b - a in RR^+ or a = b$
+ Mayor o igual a: $a >= b <=> a - b in RR^+ or a = b <=> b <= a$

==== Propiedades
Para cualesquiera $a, b, c, d in RR$
+ $a < b => a + c < b + c$
+ $a < b and c < d => a + c < b + d$
+ $a < b and c > 0 => a c < b c$
+ $a < b and c < 0 => a c > b c$
+ $a != 0 =>  a dot a > 0$
+ $1 > 0$ osea $1 in RR^+$
+ $a < b => -b < -a$
+ $a b > 0 <=> a, b in RR^+ or (a in.not RR^+ and b in.not RR^+)$
+ $a b < 0 <=> a in RR^+ xor b in RR^+$
+ $a > 0 <=> 1/a > 0$
+ $0 < a < b => 0 < 1/b < 1/a$

=== Subconjuntos de los reales
==== Los números naturales
El conjunto de números naturales (notamos $NN$) se define mediante las siguientes reglas.
+ $1 in NN$
+ $a in NN => a + 1 in NN$

Notemos que $NN subset.eq RR^+$ ya que $1 > 0$ y $a > 0 => a + 1 > 0$.

==== Los números enteros
El conjunto de los números enteros (notamos $ZZ$) se define por:
$ ZZ = {x in RR: x in NN or -x in NN or x = 0} $

==== Los números racionales
El conjunto de los números racionales (notamos $QQ$) se define por:
$ QQ = {x in RR: exists p, q in ZZ space q != 0 and x = p/q} $

==== Los números irracionales
El conjunto de los números irracionales (notamos $II$) se define por $II = RR - QQ$.

=== La recta real
#todo[Explicar la representación geométrica de los números reales]

=== Intervalos reales
Dados $a, b in RR$ tal que $a < b$
+ $(a, b) = {x in RR: a < x < b}$ (intervalo abierto)
+ $[a, b) = {x in RR: a <= x < b}$ (semiabierto a derecha o semicerrado a izquierda)
+ $(a, b] = {x in RR: a < x <= b}$ (semiabierto a izquierda o semicerrado a derecha)
+ $[a, b] = {x in RR: a <= x <= b}$ (intervalo cerrado)
+ $(a, +oo) = {x in RR: a < x}$
+ $[a, +oo) = {x in RR: a <= x}$
+ $(-oo, b) = {x in RR: x < b}$
+ $(-oo, b] = {x in RR: x <= b}$

#todo[Representaciones gráficas]

=== Valor absoluto de un número real
Dado $x in RR$ su valor absoluto es:
#todo[casesAlign]
\$ abs(x) = casesAlign(x, x >= 0, -x, x < 0) \$

==== Propiedades
Sean $x, y in RR$ se cumplen:
+ $abs(x) >= 0$
    - $abs(x) = 0 <=> x = 0$
+ $abs(x) = abs(-x)$
+ $-abs(x) <= x <= abs(x)$
+ Dado $a in R^+$ entonces:
    - $abs(x) < a <=> -a < x < a$
    - $abs(x) > a <=> x < -a or x > a$
+ Desigualdad triangular: $abs(x + y) <= abs(x) + abs(y)$
+ $abs(x dot y) = abs(x) dot abs(y)$
+ $y != 0 => abs(x/y) = abs(x)/abs(y)$

==== Interpretación geométrica
Dado $x in RR$ entonces $abs(x)$ es la distancia del punto correspondiente a $x$ al punto correspondiente a $0$.

#todo[Completar]
== Axioma del supremo
=== Cotas superiores
Dado el conjunto $A subset.eq RR$ tal que $A != emptyset$ y el número $b in RR$ se dice que $b$ es *cota superior* de $A$ si $forall a in A space a <= b$. Si existe al menos una cota superior para $A$ entonces $A$ esta acotado superiormente.

=== Supremos
Dado el conjunto $A subset.eq RR$ tal que $A != emptyset$ y el número $b in RR$ se dice que $b$ es *supremo* de $A$ y se nota $b = sup(A)$ si:
+ $forall a in A space a <= b$.
+ $forall c in RR space c < b -> c "no es cota superior de" A$

==== Unicidad del supremo
Dados $a, b in RR$ y un conjunto $A subset.eq RR$ si $a = sup(A)$ y $b = sup(A)$ entonces $a = b$.

=== Máximo
Dados $A subset.eq RR$ tal que $A != emptyset$ y $b in RR$ se dice que $b$ es el máximo de $A$ y se nota $b = max(A)$ si:
+ $forall a in A space a <= b$.
+ $b in A$

==== Supremacía del máximo
Sean $A subset.eq RR$ tal que $A != emptyset$ y $b in RR$ entonces $b = max(A) <=> b in A and b = sup(A)$

=== Axioma del supremo
Todo conjunto no vacío de números reales acotado superiormente tiene supremo. Simbólicamente:

$ forall A in powerset (RR) space [(exists b in RR space forall a in A space a <= b) -> exists b in RR space b = sup(A)] $

==== Existencia de raíces cuadradas
Dado $a in RR$ entonces $a >= 0 => exists! x in RR space (x >= 0 and x^2 = a)$

==== Número de Euler
Notado $e$ se define por:
$ e in RR and e = sup({x in RR: exists n in NN space (1 + 1/n)^n}) $

=== Cotas inferiores, ínfimo y mínimo
Dado el conjunto $A subset.eq RR$ tal que $A != emptyset$ y el número $b in RR$:
+ Se dice que $b$ es *cota inferior* de $A$ si $forall a in A space a >= b$.
    - Si existe al menos una cota inferior para $A$ entonces $A$ esta acotado inferiormente.
+ Se dice que $b$ es *ínfimo* de $A$ y se nota $b = inf(A)$ si:
    + $forall a in A space a >= b$.
    + $forall c in RR space c > b -> c "no es cota inferior de" A$
+ Se dice que $b$ es el mínimo de $A$ y se nota $b = min(A)$ si:
    + $forall a in A space a >= b$.
    + $b in A$

==== Infimacía#super[$dagger$] del mínimo
#align(right)[#v(-1.9em)#super[$dagger$ Esa palabra es una mentira]]
Sean $A subset.eq RR$ tal que $A != emptyset$ y $b in RR$ entonces $b = min(A) <=> b in A and b = inf(A)$

==== Teorema del ínfimo
Todo conjunto no vacío de números reales acotado inferiormente tiene supremo. Simbólicamente:

$ forall A in powerset (RR) space [(exists b in RR space forall a in A space a >= b) -> exists b in RR space b = inf(A)] $

#pagebreak()
= Funciones Reales
Se intenta en este capítulo dar un entendimiento intuitivo y no formal de las funciones reales, para ello existen otros apuntes/documentos que explican funciones.

== Definición de función
#todo[Definición como terna del dominio, codominio y ley]

=== Representación gráfica usando conjuntos
#todo[Hacer la gráfica]

== Algebra de funciones
#todo[]
=== Suma
=== Resta
=== Producto
=== Cociente

== Gráfica de una función
Dada una función $f$ su gráfica es el conjunto:
$ G_f = { (x, f(x)): x in Dom(f) } $
$ forall x, y in RR space [ (x, f(x)) in RR <=> x in Dom(f)] $
=== Representación gráfica
#todo[]
==== Prueba de la recta vertical
#todo[]

== Propiedades de las funciones
#todo[]
=== Función sobreyectiva
Una función $f$ es sobreyectiva cuando $Rec(f) = Codom(f)$
=== Función inyectiva
=== Función biyectiva

== Conjuntos simétricos
Un conjunto $A subset.eq RR$ es simétrico si $forall x in A space (-x in A)$

== Propiedades de funciones
=== Paridad de funciones
Sea $f$ una función con dominio simétrico:
+ Se dice *par* si $forall x in Dom(f) space f(x) = f(-x)$
    - Si $f$ es par es simétrica respecto al eje y.
+ Se dice *impar* si $forall x in Dom(f) space f(-x) = -f(x)$
    - Si $f$ es impar es simétrica respecto al origen de coordenadas.

=== Monotonía
Sea $f$ una función, $A subset.eq Dom(f)$ y $x_1, x_2 in A$:
+ Se dice *creciente* en $A$ si $x_1 < x_2 => f(x_1) < f(x_2)$
+ Se dice *decreciente* en $A$ si $x_1 < x_2 => f(x_1) > f(x_2)$
+ Se dice *no decreciente* en $A$ si $x_1 < x_2 => f(x_1) <= f(x_2)$
+ Se dice *no creciente* en $A$ si $x_1 < x_2 => f(x_1) >= f(x_2)$
+ Se dice *monótona* en $A$ si es cualquiera de los anteriores en $A$

== Funciones elementales
#todo[]
=== Función constante
Sea $c in RR$ se define a la función constante $f$ como:
$ function(f, RR, RR, x, f(x) = c) $
#todo[Gráfica]

===
#todo[Las otras funciones elementales]

== Transformaciones a la gráfica de una función
#todo[]
=== Traslaciones
=== Reflexiones
=== Contracciones y dilataciones

== Composición de funciones
#todo[]

== Funciones inversas
#todo[]

== Más Funciones elementales
#todo[]

#pagebreak()
= Límites
En este capítulo se explayaran conceptos relacionados al límite y se usará la definición formal del límite para funciones reales.

== Entornos
=== Distancia de puntos
La distancia entre dos puntos $x, y in RR$ es $d(x, y) = abs(x - y)$

=== Entorno
Dados $a, delta in RR$ el *entorno* de $a$ de radio $delta$ es $E(a, delta) = {x in RR: abs(x - a) < delta}$

=== Entorno reducido
Dados $a, delta in RR$ el *entorno reducido* de $a$ de radio $delta$ es $E'(a, delta) = {x in RR: 0 < abs(x - a) < delta}$

=== Contención de entornos
Sean $a, delta, delta_1, delta_2 in RR$ entonces si $delta <= min{delta_1, delta_2}$ se da que:
$ E(a, delta) subset.eq E(a, delta_1) inter E(a, delta_2) $
$ E'(a, delta) subset.eq E'(a, delta_1) inter E'(a, delta_2) $

== Límite finito
=== Definición
Dada una función real $f$ y $a in RR$ tal que $exists delta [forall x in E(a, delta) space x in Dom(f)]$ decimos (si existe) que $l$ es el límite de $f$ cuando la variable independiente tiene al valor $a$ si:
$ forall epsilon in RR^+ space exists delta in RR^+ space [x in E'(a, delta) => f(x) in E(l, epsilon)] $
#align(center)[_osea_]
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l) < epsilon) $
#align(center)[_y notamos_]
$ limit_(x->a) f(x) = l $

==== Propiedades
+ $limit_(x->a) f(x) = l <=> limit_(x->0) f(x + a) = l <=> limit_(x->b) f(x + a - b) = l$

+ $forall delta in RR space forall delta' in RR space [delta' < delta => forall x (0 < abs(x-a) < delta' => 0 < abs(x-a) < delta)]$

==== Casos específicos
Sean $f$ una función y $a in RR$ entonces considerando el mayor dominio posible los límites de $f$ cuando $x$ tiende a $a$ son:
+ Función constante: $limit_(x->a) c = c$

+ Función polinómica: $forall p in RR[x] space limit_(x->a) p(x) = p(a)$

+ Función recíproca: $limit_(x->a) 1/x = 1/a$

=== Unicidad del límite
Sea $f$ una función definida en un entorno de $a in RR$  y sean $l_1, l_2 in RR$ dos números reales tales que $limit_(x->a) f(x) = l_1 and limit_(x->a) f(x) = l_2$ entonces:

$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l_1) < epsilon)\
and\
forall epsilon in RR^+ space exists delta in RR^+ space forall x (0 < abs(x-a) < delta => abs(f(x)-l_2) < epsilon) $

#align(center)[y se puede demostrar que]
$ forall epsilon in RR^+ space abs(l_1 - l_2) < epsilon => l_1 = l_2 $

=== No existencia del límite
Para [...] se dice que no existe el límite cuando se da que:
$ exists epsilon in RR^+ space forall delta in RR^+ space exists x (0 < abs(x-a) < delta => abs(f(x)-l) < epsilon) $

=== Límites laterales
Para [...] se dice que existe el límite por izquierda cuando:
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (a - delta < x < a => abs(f(x)-l) < epsilon) $

Para [...] se dice que existe el límite por derecha cuando:
$ forall epsilon in RR^+ space exists delta in RR^+ space forall x (a < x < a + delta => abs(f(x)-l) < epsilon) $

===

#pagebreak()
= Cálculo Diferencial
#todo[Todo todito]

#pagebreak()
= Cálculo Integral

== Sumas inferiores y superiores
=== Partición de un intervalo
Sea $[a, b]$ un intervalo, $P$ es partición de $[a, b]$ si:
+ $abs(P) = n in NN$
+ $forall i in NN_0 space (i <= n => t_i in P)$
+ $t_0 = a$
+ $t_n = b$
+ $forall t_i, t_j in P space (i < j => t_i < t_j)$

=== Ínfimos y supremos
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$, $P$ una partición del intervalo $[a, b]$ y un número $k in NN$ tal que $k <= abs(P)$ y sea $I_k = [t_(k-1), t_k]$ entonces se definen para ella los siguientes:
$ m_k = limits("inf")_I_k space f " y " M_k = limits("sup")_I_k space f $

=== Suma inferior y superior
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$, $P$ una partición del intervalo $[a, b]$ y un número $k in NN$ tal que $k <= abs(P)$ y sea $Delta t_k = t_k - t_(k-1)$ entonces se definen la *suma inferior* y la *suma superior* como:
$ L(f, P) = sum^n_(k=1) m_k Delta t_k " y " U(f, P) = sum^n_(k=1) M_k Delta t_k $

=== Lemas
Sean $f: [a, b] -> RR$ una función acotada, $P$ una partición de $[a, b]$ y $k in NN$ tal que $k <= abs(P)$:
+ $L(f, P) <= U(f, P)$
    - Esto es porque $forall k (m_k <= M_k and Delta t_k >= 0) => forall k (m_k Delta t_k <= M_k Delta t_k)$

+ Sea $P'$ partición de $[a, b]$ y $P subset.eq P' => L(f, P) <= L(f, P') and U(f, P') <= U(f, P)$
    - #todo[Demostración]

+ Sea $Q$ partición de $[a, b] => L(f, P) <= U(f, Q)$
    - Se demuestra considerando la partición $T = P union Q$ y utilizando el segundo lema.

== Funciones integrables según Riemann
=== Conjunto de particiones de un intervalo
Dados dos números reales $a$ y $b$ el conjunto que tiene por elementos a todas las particiones del intervalo $[a, b]$
=== Integral inferior y superior
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$ se llaman *integral inferior* e *integral superior* respectivamente a:
$ underline(integral)_a^b f = sup { L(f, P): P in powerset([a, b])} " y " overline(integral)_a^b f = inf { U(f, P): P in powerset([a, b])} $

La integral inferior es menor o igual que la integral superior:
$ underline(integral)_a^b f <= overline(integral)_a^b f $
Esto es porque por el tercer lema:
$ underline(integral)_a^b f = limits("sup")_P space L(f, P) <= limits("inf")_Q space U(f, Q) = overline(integral)_a^b f $

=== Integral de Riemann
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$ es integrable según Riemann si la integral inferior es igual a la integral superior que son entonces iguales a la integral de f. Se nota:
$ integral_a^b f = overline(integral)_a^b f = underline(integral)_a^b f = integral_a^b f(x) dif x $

=== Area bajo una curva
Dada la función $f:[a, b] -> RR$ acotada y no negativa en $[a, b]$, sea la región:
$ R = {(x, y): x in [a, b] and y in [0, f(x)]} $
entonces la integral de $f$ es igual al area de $R$

=== Condición de integrabilidad
Dada la función $f:[a, b] -> RR$ acotada e integrable si
$ forall epsilon > 0 space exists P (P "partición de "[a, b] and U(f, P) - L(f, P) < epsilon) $

#todo[Demostración]

=== Particiones regulares
Dado un intervalo $[a, b]$ y un número $n in NN$ entonces $P_n$ es una partición regular sobre el mismo solo si $abs(P_n) = n + 1 and forall k in NN space (k <= n + 1 => Delta t_k = (b-a)/n)$ quedando $t_k = k dot (b-a)/n + a$

Una partición regular $P_n$ es par si $abs(P_n)/2 in.not NN$ e impar si $abs(P_n)/2 in NN$

=== Continuidad uniforme
Dada una función $f$ definida se dice uniformemente continua si tomando $x, y in Dom(f)$
$ forall epsilon > 0 space exists delta > 0 space forall x, y space ( abs(x - y) < delta => abs(f(x) - f(y)) < epsilon) $

==== Teorema
Si $f: [a, b] -> RR$ es continua, entonces es uniformemente continua.

#todo[Demostración]

==== Teorema
Si $f: [a, b] -> RR$ es continua, entonces es integrable.

Notar que la condición de continuidad es suficiente a la integrabilidad pero no necesaria.

#todo[Demostración, involucra usar el teorema previo, usar la condición de integrabilidad que usa $epsilon$ y elegir una partición con todo $Delta t_k < delta$]

==== Proposición
Si $f: [a, b] -> RR$ es monótona entonces es integrable.

=== Propiedad de aditividad de la integral
Dada $f: [a, b] -> RR$, entonces $f$ es integrable en $[a, b]$ si y solo si para todo $c in (a, b)$ se da que es integrable en $[a, c]$ y en $[c, b]$, osea:
$ integral_a^b f = integral_a^c f + integral_c^b f $

#todo[Demostración: Usa la integrabilidad con $epsilon$, tomando una partición que contiene a $c$ y dividiéndola en dos y dar que $U = U_1 + U_2$]

Se definen $integral_a^a f = 0$ y $integral_b^a f = - integral_a^b f$

== Algebra de integrales
Sean $c in RR$, $f$ y $g$ funciones integrables en $[a, b]$ entonces $c f$ y $f + g$ también son integrables en dicho intervalo.

+ $integral_a^b (c f) = c dot integral_a^b f$

+ $integral_a^b (f + g) = integral_a^b f + integral_a^b g$

Dadas dos funciones $f$ integrable en $[a, b]$ y $g = f$ salvo para alguna cantidad finita de puntos donde difieren entonces g es integrable en $[a, b]$ y $integral_a^b f = integral_a^b g$

== Propiedades de orden
=== Cota de una integral
Sean $f: [a, b] -> RR$ y $m,M in RR$ con $f$ acotada por $forall x in Dom(f) space (m < f(x) < M)$, entonces:
$ m(b-a) <= limits("sup")_P space L(f, P) = integral_a^b f = limits("inf")_P space U(f, P) <= M(b-a) $

#todo[Demostración]

=== Corolario
Sean $f$ y $g$ funciones integrables en $[a, b]$ donde $forall x in [a, b] space (f(x) <= g(x))$ entonces:
$ integral_a^b f <= integral_a^b g $

#todo[Demostración]

=== Integral del valor absoluto de una función
Sea $f$ integrable en $[a, b]$ entonces $abs(f)$ es integrable en $[a,b]$ y se da:
$ abs(integral_a^b f) <= integral_a^b abs(f) $

#todo[Demostración]

== Cálculo de Áreas
=== Cuando la función es no positiva
Dada una función $f$ integrable en $[a, b]$ entonces si $forall x in [a, b] space f(x) <= 0$ entonces el área entre la gráfica de $f$ y el eje $x$ es $-integral_a^b f$.

=== Entre dos funciones no negativas
Dadas las funciones $f$ y $g$ integrable en $[a, b]$ tal que $forall x in [a, b] space f(x) <= g(x)$ y el lugar geométrico del plano $R = {P(x, y): x in [a, b] and y in [f(x), g(x)]}$ entonces el área de $R$ es:
$ "es" $
$ "Área"(R) = integral_a^b (g(x) - f(x)) $

=== En general
Dada una función $f$ integrable en $[a, b]$ entonces el área entre la gráfica de $f$ y el eje $x$ es $integral_a^b abs(f)$.

== Valor medio
Dada $f$ continua en $[a, b]$ entonces existen $xi in [a, b]$ y $mu = f(xi)$ tal que:
$ f(xi) = mu = 1/(b-a) integral_a^b f $

#todo[Demostración: Usa Weierstrass]


#pagebreak()
= Teorema Fundamental del Cálculo

== Funciones integrales
Sea la función $f$ integrable en $[a, b]$ entonces $forall x in [a, b] space (f "es integrable en" [a, x])$. Se define la función:
$ function(F, [a, b], RR, x, F(x) = inline(integral_a^x f)) $

A $F$ es una función integral.

=== Continuidad de las funciones integrales
Si $f$ es integrable en $[a, b]$ entonces $F$ es continua en $[a, b]$

#todo[Demostración]

== Primer teorema fundamental
Si $f$ es integrable en $[a, b]$ y continua en $c in (a, b)$ entonces $F$ es derivable en $c$ y $F'(c) = f(c)$

=== Demostración
Debemos mostrar que existe el límite:
$ lim_(h -> 0) (F(c + h) - F(c))/h = L in RR$
#align(center)[y que]
$ L = f(c) $

#todo[El resto de la demostración utiliza el segundo teorema de Weierstrass]

== Segundo teorema fundamental
Dada $f$ función continua en $[a, b]$ y $g$ una primitiva de $f$ (osea una función tal que cumple $g' = f$) entonces
$ integral_a^b f = g(b) - g(a) = g(x)|_a^b $

#todo[Demostración]

=== Segundo teorema fundamental fuerte
Dada $f$ función integrable en $[a, b]$ y $g$ una primitiva de $f$ entonces
$ integral_a^b f = g(b) - g(a) = g(x)|_a^b $

#todo[Demostración]

== Derivadas con funciones integrales
$ f(x) = integral_a^g(x) h(x) = (F compose g)(x) \
  => f'(x) = (F' compose g)(x) dot g'(x) = h(g(x)) dot g'(x) $

== Funciones exponenciales y logarítmicas
=== Función logaritmo
Se define al logaritmo natural como la función:
$ function(ln, RR^+, RR, x, ln(x) = integral_1^x 1/t dif t) $

Se cumplen todas las propiedades habituales del logaritmo.

==== Constante $e$
Se define $e$ como el real tal que $ln(e) = 1$.
#todo[Completar]

=== Función exponencial
Se define la función exponencial $f$ como:
$ function(exp, RR, RR^+, x, exp(x)) $
Tal que:
$ exp(x) = y <=> x = ln(y) $

Se cumplen todas las propiedades habituales de la exponencial.
#todo[Completar]

=== Funciones logaritmos y exponenciales generales.
==== Logaritmo en base $a$
El logaritmo en base $a$ es la función:
$ function(log_a, RR^+, RR, x, log_a (x) = ln(x)/ln(a)) $

==== Exponencial en base $a$
La exponencial en base $a$ es la función:
$ function(f, RR, RR^+, x, f(x) = exp(ln(a)x) = a^x) $

Entonces $exp(x) = exp(ln(e)x) = e^x$

Se define también la exponencial en base $1$ como $1^x = 1$

== Búsqueda de primitivas
=== Forma general de las primitivas
Dada una función $f$ integrable y $F$ una primitiva de $f$ a la familia de todas sus primitivas se le simboliza:
$ integral f = F(x) + c space, c in RR $

===
#todo[titulo]
Dada una función $f$ integrable una primitiva $F$ se simboliza:
$ F(x) = integral^x f $
ya que el extremo inferior es irrelevante al hacer diferir a la primitiva de otras primitivas por una constante.

=== Función error de Gauss y seno integral
#todo[]

=== Primitivas directas
#todo[]

=== Método de sustitución
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


=== Método de integración por partes
Dadas dos funciones derivables $f$ y $g$ con $f'$ y $g'$ continuas en un intervalo abierto que contiene a $[a, b]$ entonces:
$ integral_a^b f g'  = integral_a^b (f g)' - integral_a^b f' g = (f g)|_a^b - integral_a^b f' g $

Tomando $u = f(x)$ y $v = g(x)$ queda:
$ integral u dif v = u v - integral v dif u $

=== Método de reducción a fracciones simples
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

== Integrales impropias
El concepto de integral impropia es una generalización de una integral diferente a la misma (como una integral pero no).

=== De primera especie
Dadas $f:[a,+oo) -> RR$ integrable y $I:[a,+oo) -> RR$ tal que $I(b) = integral_a^b f$ se llama *integral impropia de primera especie* de $f$ a:
$ lim_(b->+oo) I(b) = lim_(b->+oo) integral_a^b f = integral_a^oo f $
Si existe el límite la integral impropia es convergente y si no es divergente.

Para funciones no negativas es el área bajo la curva del punto $a$ al infinito.

Análogamente se define para el extremo inferior para una $f$ razonable.
$ lim_(a->-oo) I(a) = lim_(a->-oo) integral_a^b f = integral_(-oo)^b f $

Luego para ambos extremos se usa:
$ integral_(-oo)^oo f = lim_(a->-oo) integral_a^c f + lim_(b->+oo) integral_c^b f $
y existe solo si existen ambos limites. El $c$ es arbitrario y se puede elegir a conveniencia.

==== Criterio de convergencia
Para las funciones $f:[a, +oo) -> RR$ y $g:[a, +oo) -> RR$ tal que $forall x in [a, +oo) space 0 <= f(x) <= g(x)$ con $f$ y $g$ integrables en $[a, b]$ para cualquier $b in [a, +oo)$ entonces:
$ integral^oo f "converge, implica" integral^oo g "converge" $
$ integral^oo g "diverge, implica" integral^oo f "diverge" $

=== De segunda especie
Dada la función $J:(a, b] -> RR$ de ley $J(c) = integral_c^b f$ la *integral impropia de segunda especie* si existe es el límite:
$ lim_(c->a^+) J(c) = integral_(a^+)^b f = integral_a^b f $

Análogamente se definen $integral_a^(b^-) f$ y $integral_(a^+)^(b^-) f$ y se define que si existen $integral_(a^+)^(c^-) f$ y $integral_(c^+)^(b^-) f$ entonces existe $integral_(a^+)^(b^-) f$ y vale $integral_(a^+)^(c^-) f + integral_(c^+)^(b^-) f$

#pagebreak()
= Aplicaciones del Cálculo Integral

== Curvas polares
=== Coordenadas polares
Un punto $(r, theta)$ expresado en coordenadas polares satisface las siguientes ecuaciones que relacionan sus coordenadas al sistema cartesiano.
$ cases(x = r cos(theta), y = r sin(theta)) <=> cases(r^2 = x^2 + y^2, tan(theta) = y/x) $

Se cumple que $(-r, theta) = (r, theta + pi)$

==== Representación e intuición gráfica
#todo[]

=== Curvas
Dada una función $f$ los puntos $(f(theta), theta)$ con coordenadas polares pueden describir una curva polar.

=== Área de una curva polar cerrada
Para una curva cerrada se define el lugar geométrico del espacio encerrado en la curva por.
$ R = { (r, theta): a <= theta <= b, 0 <= r <= f(theta) } $
y se definen $P$ una partición de $[a, b]$ con elementos de forma $theta_k$ para $k in NN inter [1, abs(P)]$ tal que:
$ m_k = inf_[theta_(k-1), theta_k] f $
$ M_k = sup_[theta_(k-1), theta_k] f $
$ A_k = "area de la sección de curva" $
$ A = "area de la curva" $
$ sum_(k=1)^n 1/2 m_k^2 Delta theta_k <= sum_(k=1)^n A_k <= sum_(k=1)^n 1/2 M_k^2 Delta theta_k $
$ L(1/2 f^2, P) <= A <= U(1/2 f^2, P) $
Entonces si $f$ es integrable queda que el área de la región $R$ es:
$ "Área"(R) = integral_a^b 1/2 f^2 $

== Volumen de sólidos de revolución
Dada $f$ integrable y no negativa de $[a, b]$ el volumen del sólido de revolución que surge de rotar $f$ alrededor del eje $X$ acotada por los planos $x = a$, $x = b$ es:
$ integral_a^b pi f^2 $

Dada $f$ integrable y no negativa en $RR_0^+$ de $[a, b]$ el volumen del sólido de revolución que surge de rotar la región entre $a, b$ bajo $f$ alrededor del eje $Y$ acotada por el plano $y = 0$ es:
$ 2 pi integral_a^b x f(x) dif x $

== Longitud de curvas en el plano
Dada una curva $y = f(x)$ derivable con $f'$ integrable su longitud entre $[a, b]$ esta dada por:
$ integral_a^b sqrt(f'(x)^2 + 1) dif x $

Dada una curva expresada en forma paramétrica $y = f(t), x = g(t)$ con $f$ y $g$ derivables y $f', g'$ integrables su longitud entre $t = a$ y $t = b$ esta dada por:
$ integral_a^b sqrt(f'(t)^2 + g'(t)^2) dif t $

Para una curva polar con $r = f(theta)$ y $theta in [a, b]$ si $f$ es derivable y $f'$ integrable su longitud entre $theta = a, theta = b$ es:
$ integral_a^b sqrt(f(theta)^2 + f'(theta)^2) dif theta $

#pagebreak()
= Aproximaciones por #box[Polinomios]
Es este capítulo se verán métodos de aproximación de funciones reales por funciones polinómicas.

== Polinomios de Taylor
Dada una función $f$ derivable por lo menos $n in NN$ veces en un punto $a$ y se busca un polinomio que tiene por sus primeras $n$ derivadas en $a$ las mismas que $f$ se da que el polinomio tiene ley:

$ p(x) = sum_(k=0)^n (f^((k))(a))/k! (x - a)^k $

Generalizando para cualquier función $f$ derivable hasta el orden $n$ en algún punto $a$ decimos que el polinomio de Taylor de orden $n$ de $f$ en $a$ es:
$ function(T_(n)(f,a), RR, RR, x, T_(n)(f,a)(x) = sum_(k=0)^n (f^((k))(a))/k! (x - a)^k) $

#example(title: "Propiedades")[
  Dadas $f$ y $g$ derivables hasta el orden $n$ en $a$ se tienen:

  $ forall alpha, beta in RR quad T_(n)(alpha f + beta g, a) = alpha T_(n)(f, a) + beta T_(n)(g, a) $
  $ c in RR and g(x) = f(c x) and c a in Dom(f) implies T_(n)(g, a)(x) = T_(n)(f, c a)(c x) $
  $ T_(n)(f, a)' = T_(n-1)(f', a) $
  $ g(x) = integral_a^x f implies T_(n+1)(g,a)(x) = integral_a^x T_(n)(f, a) $
]

#example(title: "Proposición")[
  Dada $f$ derivable hasta el orden $n$ en $a$ entonces se tiene:

  $ f(x) = T_(n)(f, a)(x) + E(x)(x - a)^n and lim_(x -> a) E(x) = 0 $

  Equivalentemente

  $ lim_(x -> a) (f(x) - T_(n)(f, a)(x))/(x - a)^n = 0 $
]

=== Igualdad de grado n
Dos funciones $f$ y $g$ se dicen iguales hasta el grado $n in NN$ si se cumple:

$ lim_(x -> a) (f(x) - g(x))/(x - a)^n = 0 $

#example(title: "Proposición")[
  Dadas $f$ y $g$ derivables hasta el orden $n$ en $a$ tal que:

  $ f(x) = p(x) + g(x)(x - a)^n and lim_(x -> a) g(x) = 0 $

  Entonces se da que $p equiv T_(n)(f, a)$
]

=== Resto de polinomios de Taylor
Llamamos $R_(n)(f, a)$ a la diferencia $f(x) - T_(n)(f, a)(x)$ tal que:
$ f(x) = T_(n)(f, a)(x) + R_(n)(f, a)(x) $

#example(title: "Proposición")[
  Dada $f$ derivable hasta el orden $n+1$ en $a$ entonces:

  $ f(x) &= T_(n)(f, a)(x) + R_(n)(f, a)(x) \
         &= sum_(k=0)^n (f^((k))(a))/k! (x - a)^k + 1/n! integral_a^x (x-t)^n f^((n+1))(t) dif t $

  Y también:

  $ exists xi space R_(n)(f, a)(x) = (f^((n+1))(xi))/(n+1)!(x-a)^(n+1) $
]
