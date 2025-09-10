#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Geometria Analitica en el Espacio]

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

= Recta en el espacio
Dados $P$ y $Q$ dos puntos del espacio queda definida la recta $r$, como el lugar geométrico del espacio que satisface la ecuación
$ R in r <=> exists lambda in RR (arrow(P R) = lambda arrow(P Q)) $

== Ecuación vectorial
$ R in r <=> exists lambda in RR: arrow(O R) = arrow(O P) + lambda arrow(P Q) $

== Vector dirección
El vector $arrow(P Q)$ es un vector dirección de $r$ lo notamos $arrow(u)$.

== Ecuación paramétrica
$ R(x, y, z) in r <=> cases(x = x_0 + lambda u_1, y = y_0 + lambda u_2, z = z_0 + lambda u_3) space, lambda in RR $
