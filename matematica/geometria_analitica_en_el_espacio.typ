#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Geometria Analitica en el Espacio]
//#let escalar = math.dot.op
#let escalar = math.times
//#let vectorial = math.times
#let vectorial = math.and

= Lugar geométrico
Dado el conjunto de puntos del espacio decimos que un *lugar geométrico del espacio* es un subconjunto del mismo que está determinado por una o más condiciones geométricas determinadas.
$ L = { P(x, y, z): p(x) and q(y) and r(z) } $

== Distancia de dos puntos
La distancia entre dos puntos $P(x, y, z)$ y $Q(x', y', z')$ es $P Q$ longitud del segmento $overline(P Q)$, se nota $d(P, Q)$ y se calcula:
$ d(P, Q) = sqrt((x' - x)^2 + (y' - y)^2 + (z' - z)^2) $

Propiedades:
+ $d(P, Q) >= 0$
    - Por ser la longitud de un segmento
+ $d(P, Q) = d(Q, P)$
+ $d(P, Q) + d(Q, R) >= d(P, R)$

= Recta
Dados $P$ y $Q$ dos puntos del espacio queda definida la recta $r$, como el lugar geométrico del espacio que satisface la ecuación
$ R in r <=> exists lambda in RR (arrow(P R) = lambda arrow(P Q)) $

== Ecuación vectorial
$ R in r <=> exists lambda in RR: arrow(O R) = arrow(O P) + lambda arrow(P Q) $

== Vector dirección
El vector $arrow(P Q)$ es un vector dirección de $r$ lo notamos $arrow(u)$.

== Ecuación paramétrica
$ R(x, y, z) in r <=> cases(x = x_0 + lambda u_1, y = y_0 + lambda u_2, z = z_0 + lambda u_3) space, lambda in RR $

= Plano
Un plano es un lugar geométrico del espacio y se define por tres puntos no colineares $P, Q$ y $R$ mediante la siguiente proposición donde llamamos $pi$ al plano:

== Ecuación vectorial
$ S in pi <=> exists alpha, beta in RR space arrow(O S) = arrow(O P) + alpha arrow(P Q) + beta arrow(P R) $

== Ecuación paramétrica
Si asignamos:
$ P(x_0, y_0, z_0) \
  Q(x_1, y_1, z_1) \
  R(x_2, y_2, z_2) $

Entonces:
$ S(x, y, z) in pi <=> cases(x = x_0 + alpha x_1 + beta x_2, y = y_0 + alpha y_1 + beta y_2, z = z_0 + alpha z_1 + beta z_2) space alpha, beta in RR space $

O también:

$ pi) cases(x = x_0 + alpha x_1 + beta x_2, y = y_0 + alpha y_1 + beta y_2, z = z_0 + alpha z_1 + beta z_2) space alpha, beta in RR space $

== Posición relativa de dos rectas
Dos rectas pueden ser:
+ Paralelas:
    + Coincidentes
    + No coincidentes
+ Secantes:
    + Perpendiculares
    + No perpendiculares
+ Alabeadas

== Ecuación general del plano
Sea $pi$ un plano que contiene a $P_0(x_0, y_0, z_0)$ y que es paralelo a los vectores no colineares $arrow(u)$ y $arrow(v)$, entonces $arrow(n) = arrow(u) vectorial arrow(v) = (a, b, c)$ es un vector normal al plano. Y queda definido el plano por lo siguiente:
$ P(x, y, z) in pi &<=> arrow(P_0 P) perp arrow(n) \
                   &<=> arrow(P_0 P) escalar arrow(n) = 0 \
                   &<=> (x - x_0, y - y_0, z - z_0) escalar (a, b, c) = 0 \
                   &<=> a(x - x_0) + b(y - y_0) + c(z - z_0) = 0 \
                   &<=> a x - a x_0 + b y - b y_0 + c z - c z_0 = 0 \
                   &<=> a x + b y + c z + (- a x_0 - b y_0 - c z_0) = 0 \
                   &<=> a x + b y + c z + d = 0 $

== Intersección de un plano y una recta
Dado el plano $pi$ y una recta $r$ tal que
$ P(x, y, z) in pi <=> a x + b y + c z + d = 0 $
$ P(x, y, z) in r <=> cases(x = x_0 + lambda u_1, y = y_0 + lambda u_2, z = z_0 + lambda u_3) space, lambda in RR $
Sabemos que
$ P in r inter pi &<=> a (x_0 + lambda u_1) + b (y_0 + lambda u_2) + c (z_0 + lambda u_3) + d = 0 \
                  &<=> a x_0 + a lambda u_1 + b y_0 + b lambda u_2 + c z_0 + c lambda u_3 + d = 0 \
                  &<=> a x_0 + b y_0 + c z_0 + d + a lambda u_1 + b lambda u_2 + c lambda u_3 = 0 \
                  &<=> (a x_0 + b y_0 + c z_0 + d) + (a u_1 + b u_2 + c u_3) lambda = 0 \
$

Si la ecuación en $lambda in RR$ tiene:
+ Ninguna solución: $abs(r inter pi) = emptyset$
+ Una solución: $abs(r inter pi) = 1$
+ Infinitas soluciones: $r subset pi$

== Intersección de dos planos
=== Caso recta
Dados los planos $pi_1) a_1 x + b_1 y + c_1 z + d = 0 $ y $pi_2) a_2 x + b_2 y + c_2 z + d = 0$ que tienen por intersección una recta $r = pi_1 inter pi_2$ sean $arrow(n_1) = (a_1, b_1, c_1)$ y $arrow(n_2) = (a_2, b_2, c_2)$ vectores normales a $pi_1$ y $pi_2$, $arrow(u)$ un vector dirección de la recta y $P_0(x_0, y_0, z_0)$ un punto que pertenece a ambos planos, entonces:
$ r = pi_1 inter pi_2 &=> r in pi_1 and r in pi_2 \
                      &=> arrow(u) perp arrow(n_1) and arrow(u) perp arrow(n_2) \
                      &=> arrow(u) parallel arrow(n_1) vectorial arrow(n_2)
$
Por lo tanto $arrow(n_1) vectorial arrow(n_2) = (a', b', c')$ es vector dirección de $r$ y la ecuación paramétrica de $r$ es:
$ P(x, y, z) in r <=> cases(x = x_0 + a' lambda, y = y_0 + b' lambda, z = z_0 + c' lambda) space, lambda in RR $

Que la intersección entre dos planos sea una recta ocurre si y solo si sus vectores normales son no paralelos.

== Distancia de un punto a un plano
Dado un punto $P$ y un plano $pi) a x + b y + c z + d = 0 $ con un vector normal $arrow(n)$ que contiene al punto $P_0(x_0, y_0, z_0)$ entonces la distancia

#todo[Es bastante análogo a las rectas]

== Forma simétrica de la ecuación de una recta
Dada la recta $r$ tal que:
$ P(x, y, z) in r <=> cases(x = x_0 + lambda u_1, y = y_0 + lambda u_2, z = z_0 + lambda u_3) space, lambda in RR $
Si se da que $u_1 dot u_2 dot u_3 != 0$ entonces:
$ P(x, y, z) in r <=> (x - x_0)/u_1 = (y - y_0)/u_2 = (z - z_0)/u_3 $
$ P(x, y, z) in r <=> cases((x - x_0)/u_1 = (y - y_0)/u_2, (y - y_0)/u_2 = (z - z_0)/u_3) $

=== Planos proyectantes
Queda entonces determinada la recta como intersección entre los planos
$ pi_1)(x - x_0)/u_1 = (y - y_0)/u_2 $
$ pi_2)(y - y_0)/u_2 = (z - z_0)/u_3 $
donde $pi_1$ es el plano proyectante de $r$ sobre el plano $X Y$ y $pi_2$ es el plano proyectante de $r$ sobre el plano $Y Z$ (también queda definido el plano $pi_3) (x - x_0)/u_1 = (z - z_0)/u_3$ proyectante de $r$ sobre $X Z$).

== Posiciones relativas
#todo[]

==
