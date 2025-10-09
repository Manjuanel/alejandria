#import "../lib.typ" : *
#show: init.with(debug: true)

#let subtitle(text) = {
  title(size: 18pt, text)
}

#title[Geometría Analítica en el Espacio]
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

Se cumple:
$ d(P(x_0, y_0, z_0), pi) = abs(a x_0 + b y_0 + c z_0 + d)/sqrt(a^2 + b^2 + c^2) $

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

== Ecuaciones de los planos proyectantes
$ pi_(X Y))u_1^(-1) x - u_2^(-1) y + (- y_0 u_2^(-1) - x_0 u_1^(-1)) = 0 $
$ pi_(Y Z))u_2^(-1) y - u_3^(-1) z + (- z_0 u_3^(-1) - y_0 u_2^(-1)) = 0 $
$ pi_(Z X))u_1^(-1) z - u_1^(-1) x + (- x_0 u_1^(-1) - z_0 u_3^(-1)) = 0 $

#subtitle[Superficies cuádricas]
A partir de ahora analizaremos las ecuaciones de la forma:
$ A x^2 + B y^2 + C z^2 + D x + E y + F z + G = 0 $
#todo[Expandir en la eq. gral.]

=== Esferas, elipsoides e hiperboloides
Si la ecuación tiene la forma:
$ plus.minus (x - x_0)^2/a^2 plus.minus (y - y_0)^2/b^2 plus.minus (z - z_0)^2/c^2 = 1 $

=== Conos
Si la ecuación tiene la forma:
$ plus.minus (x - x_0)^2/a^2 plus.minus (y - y_0)^2/b^2 plus.minus (z - z_0)^2/c^2 = 0 $

=== Paraboloides
Si la ecuación tiene la forma:
$ plus.minus (x - x_0)^2/a^2 plus.minus (y - y_0)^2/b^2 plus.minus (z - z_0)/c = 0 $

=== Cilindro generalizado
#todo[]

= Elipsoide
Dada la ecuación de la forma:
$ (x - x_0)^2/a^2 + (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1 $

Si a = b = c entonces el lugar es una esfera, de centro $P_0(x_0, y_0, z_0)$ y radio $r = a$.

Si no entonces el lugar es un *elipsoide* con centro (y eje de simetría) $C(x_0, y_0, z_0)$

== Trazas
Con el plano $z = z_0$, queda:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, z = z_0) <=> cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = 1, z = z_0) $

Entonces la traza es una elipse contenida por el plano $z = z_0$

Con el plano $x = x_0$, queda:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, x = x_0) <=> cases((y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, x = x_0) $

Entonces la traza es una elipse contenida por el plano $x = x_0$

Con con el plano $y = y_0$, queda:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, y = y_0) <=> cases((x - x_0)^2/a^2 + (z - z_0)^2/c^2 = 1, y = y_0) $

Entonces la traza es una elipse contenida por el plano $y = y_0$

Con planos del tipo $x = k$, queda:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, x = k) <=> cases((y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1 - (k - x_0)^2/a^2, x = x_0) $

Donde si $1 - (k - x_0)^2/a^2 < 0$ la intersección es vacía, si $1 - (k - x_0)^2/a^2 > 0$ Entonces la intersección es una elipse contenida en el plano $x = k$ y si $1 - (k - x_0)^2/a^2 = 0$ la intersección es un punto $P(x_0 plus.minus a, y_0, z_0)$

= Hiperboloides de una hoja
Las ecuaciones de la forma:
$ (x - x_0)^2/a^2 + (y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1 $

Describen hiperboloides.

== Trazas
La intersección entre un hiperboloide y el plano $x = x_0$ es:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1, x = x_0) <=> cases((y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1, x = x_0) $
Osea es una hipérbola sobre el plano $x = x_0$

La intersección entre un hiperboloide y el plano $y = y_0$ es:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1, y = y_0) <=> cases((x - x_0)^2/b^2 - (z - z_0)^2/c^2 = 1, y = y_0) $
Osea es una hipérbola sobre el plano $y = y_0$

La intersección entre un hiperboloide y el plano $z = z_0$ es:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1, z = z_0) <=> cases((x - x_0)^2/b^2 + (y - y_0)^2/c^2 = 1, z = z_0) $
Osea es una elipse sobre el plano $z = z_0$

La intersección entre un hiperboloide y un plano $x = k$ es:
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1, x = x_0) <=> cases((y - y_0)^2/b^2 - (z - z_0)^2/c^2 = 1 - (k - x_0)^2/a^2, x = x_0) $
Si $1 - (k - x_0)^2/a^2 > 1$ entonces es una hipérbola con eje focal paralelo al eje $Z$.
Si $1 - (k - x_0)^2/a^2 < 1$ entonces es una hipérbola con eje focal paralelo al eje $Y$.
Si $1 - (k - x_0)^2/a^2 = 1$ entonces es una hipérbola con eje focal paralelo al eje $Z$.

#todo[Revisar y corregir]

= Hiperboloides de dos hojas
Las ecuaciones de la forma:
$  - (x - x_0)^2/a^2 - (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1 $

Describen un hiperboloide de dos hojas.

== Trazas
La intersección entre un hiperboloide y el plano $x = x_0$ es:
$ cases(- (x - x_0)^2/a^2 - (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, x = x_0) <=> cases(- (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, x = x_0) $
Osea es una hipérbola sobre el plano $x = x_0$

La intersección entre un hiperboloide y el plano $y = y_0$ es:
$ cases(- (x - x_0)^2/a^2 - (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, y = y_0) <=> cases(- (x - x_0)^2/b^2 + (z - z_0)^2/c^2 = 1, y = y_0) $
Osea es una hipérbola sobre el plano $y = y_0$

La intersección entre un hiperboloide y el plano $z = z_0$ es:
$ cases(- (x - x_0)^2/a^2 - (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, z = z_0) <=> cases(- (x - x_0)^2/b^2 - (y - y_0)^2/c^2 = 1, z = z_0) $

Osea es el vacío.

La intersección entre un hiperboloide y un plano de la forma $z = k$ es:
$ cases(- (x - x_0)^2/a^2 - (y - y_0)^2/b^2 + (z - z_0)^2/c^2 = 1, z = z_0) <=> cases((x - x_0)^2/b^2 + (y - y_0)^2/c^2 = (k - z_0)^2/c^2 - 1, z = z_0) $

Si $(k - z_0)^2/c^2 - 1 > 0$ es una elipse o circunferencia.

Si $(k - z_0)^2/c^2 - 1 < 0$ es el vacío.

Si $(k - z_0)^2/c^2 - 1 = 0$ es un punto de la forma $P(x_0, y_0, z_0 plus.minus c)$

= Cono
Las ecuaciones de la forma:
$ (x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2 $

Si $a = b$ describen un cono. Si $a != b$ describen un cono elíptico.

== Trazas
La intersección con el plano $z = z_0$ es
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2, z = z_0) <=> cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = 0, z = z_0) <=> cases(x = x_0, y = y_0, z = z_0) $

Osea es el punto $P(x_0, y_0, z_0)$

La intersección con el plano $y = y_0$ es
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2, y = y_0) <=> cases((x - x_0)^2/a^2 = (z - z_0)^2/c^2, y = y_0) <=> cases(abs(x - x_0) = a/c abs(z - z_0), y = y_0) $

Osea son dos rectas secantes en $P(x_0, y_0, z_0)$

La intersección con el plano $x = x_0$ es
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2, x = x_0) <=> cases((y - y_0)^2/b^2 = (z - z_0)^2/c^2, x = x_0) <=> cases(abs(y - y_0) = b/c abs(z - z_0), x = x_0) $

Osea son dos rectas secantes en $P(x_0, y_0, z_0)$

La intersección con un plano $z = k$ es
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2, z = k) <=> cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (k - z_0)^2/c^2, z = k) $

Osea es una elipse en el plano $z = k$.

La intersección con un plano $y = k$ es
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)^2/c^2, y = k) <=> cases((z - z_0)^2/c^2 - (x - x_0)^2/a^2 = (k - y_0)^2/b^2, y = k) $

Osea es una hipérbola en el plano $y = k$.

= Paraboloide elíptico
Las ecuaciones de la forma:
$ (x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)/c $

Describen un paraboloide elíptico con *vértice* $V(x_0, y_0, z_0)$

== Trazas
La intersección con el plano $z = z_0$
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)/c, z = z_0) <=> cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = 0, z = z_0) <=> cases(x = x_0, y = y_0, z = z_0) <=> $

Osea el vértice.

La intersección con el plano $y = y_0$
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)/c, y = y_0) <=> cases((x - x_0)^2 = a^2/c (z - z_0), y = y_0) $

Osea es una parábola en el plano $y = y_0$

La intersección con el plano $x = x_0$
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)/c, x = x_0) <=> cases((y - y_0)^2 = b^2/c (z - z_0), x = x_0) $

Osea es una parábola en el plano $x = x_0$

La intersección con un plano $z = k$
$ cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (z - z_0)/c, z = k) <=> cases((x - x_0)^2/a^2 + (y - y_0)^2/b^2 = (k - z_0)/c, z = k) $

Para $c > 0$ con $k > z_0$ es una elipse en el plano $z = k$ y para $k < z_0$ es el vacío.

= Paraboloide hiperbólico
Las ecuaciones de la forma:
$ (x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (z - z_0)/c $

== Trazas
La intersección con el plano $y = y_0$
$ cases((x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (z - z_0)/c, y = y_0) <=> cases((x - x_0)^2 = a^2/c (z - z_0), y = y_0) $

Osea es una parábola en el plano $y = y_0$

La intersección con el plano $x = x_0$
$ cases((x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (z - z_0)/c, x = x_0) <=> cases((y - y_0)^2 = -b^2/c (z - z_0), x = x_0) $

Osea es una parábola en el plano $x = x_0$

La intersección con un plano $z = k$
$ cases((x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (z - z_0)/c, z = k) <=> cases((x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (k - z_0)/c, z = k) $

Para $k != z_0$ es una hipérbola en el plano $z = k$ y para $k = z_0$ es dos rectas secantes.

La intersección con un plano $x = k$
$ cases((x - x_0)^2/a^2 - (y - y_0)^2/b^2 = (z - z_0)/c, x = k) <=> cases((y - y_0)^2/b^2 = -(z - z_0)/c + (k - x_0)^2/a^2 , x = k) $

Para cualquier $x$ es una parábola.

= Cilindros y otros...
Si en la ecuación
$ A x^2 + B y^2 + C z^2 + D x + E y + F z + G = 0 $
tiene $C = 0 and F = 0$ entonces la superficie es la proyección de la sección cónica del plano $X Y$ en la dirección del eje $Z$.

#subtitle[Curvas en el espacio]
Estudiaremos las curvas en el espacio que surgen de intersecar dos superficies cuádricas (planos incluidos). Así dadas dos superficies cuádricas $F_1$, $F_2$ se define la curva $gamma$ de la intersección entre ambas mediante:
$ P(x, y, z) in gamma <=> cases(F_1(x, y, z) = 0, F_2(x, y, z) = 0) $
Y $gamma$ tiene ecuaciones paramétricas:
$ gamma) cases(x = x(t), y = y(t), z = z(t)) space, t in I $
Donde $I subset.eq RR$ es un intervalo

Una estrategia para encontrar las ecuaciones paramétricas consiste en hallar la trazas de la curva en alguno de los planos coordenados, obtener las ecuaciones paramétricas de la traza y parametrizar la coordenada restante.

Es importante al pasar de ecuaciones paramétricas de una curva a unas no paramétricas no eliminar condiciones implícitas de la curva convirtiéndola en otra figura.

#subtitle[Superficies parametrizadas]
Define la superficie $sigma$ se parametriza por:
$ sigma) cases(x = x(t), y = y(t, u), z = z(t, u)) space, t in I_1, u in I_2 $
Donde $I_1, I_2 subset.eq RR$ son intervalos.
#todo[Chequear]

#todo[Expandir para curvas que no son intersecciones de sups]

= Superficies de revolución
Dada la ecuación paramétrica de una circunferencia contenida en un plano $z = z_0$ de radio $abs(x_0)$ ($x_0, z_0 in RR$).
$ cases(x = x_0 cos(theta), y = x_0 sin(theta), z = z_0) space, theta in [0, 2pi) $

Si permitimos variar a $z$ por una función $beta$ y al radio como función $alpha$ del mismo parámetro queda definida una superficie de revolución con eje de rotación el eje $Y$ de ecuaciones:
$ s)cases(x = alpha(t) cos(theta), y = alpha(t) sin(theta), z = beta(t)) space, t in I, theta in [0, 2pi) $
Donde la curva que es rotada perteneciente al plano $X Z$ se describe por:
$ gamma)cases(x = alpha(t), y = 0, z = beta(t)) space, t in I $
