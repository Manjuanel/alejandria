#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Secciones cónicas]

= Conceptos iniciales
== Doble cono recto
Se genera al rotar al rededor de una recta llamada *eje* una recta secante al eje cuyas distintas posiciones toman el nombre de *generatrices* del cono.

== Sección cónica
Una sección cónica es la intersección entre un plano y un doble cono recto y se representan en el plano.

== ¿Cuales son?
- Circunferencia
- Elipse
- Hipérbola
- Parábola
- Degeneradas:
    - Recta
    - Punto
    - Rectas concurrentes

= Circunferencia
Es el conjunto de los puntos del plano que equidistan de un punto que es el *centro* a distancia del *radio*. Simbólicamente las ecuaciones que describen a la circunferencia con centro $C(x_0, y_0)$, un punto de la circunferencia $P(x, y)$ y radio $r in RR$:
$ d(P(x, y), C(x_0, y_0)) = r $
$ (x - x_0)^2 + (y - y_0)^2 = r^2 $
Y la circunferencias es el lugar geométrico $O = {P(x, y): (x - x_0)^2 + (y - y_0)^2 = r^2}$

Nótese que si $r$ es igual a $0$ entonces la circunferencia es degenerada pues es un solo punto y si $r^2$ es negativo entonces la ecuación no describe una circunferencia y el lugar geométrico descrito es el vacío.

== Representación gráfica
#todo[]

== Intersección de una recta y una circunferencia
Sea $R$ una recta y $O$ una circunferencia de centro $C(x_0, y_0)$ entonces:
$ R inter O = emptyset or R inter O = P(x, y) or R inter O = {P_1(x_1, y_1), P_2(x_2, y_2)} $

Si la intersección es un único punto $P(x, y)$ entonces la recta es tangente a la circunferencia y es perpendicular a la recta que contiene a $P(x, y)$ y a $C(x_0, y_0)$.

Dados tres puntos no colineares siempre se puede encontrar una circunferencia que contenga a los tres puntos sabiendo que el centro está ubicado en la intersección de las mediatrices del primero con el segundo y el segundo con el tercero.

== Intersección de dos circunferencias
Sean $O_2, O_2$ dos circunferencias entonces:
$ O_1 inter O_2 = emptyset or O_1 inter O_2 = P(x, y) or O_1 inter O_2 = {P_1(x_1, y_1), P_2(x_2, y_2)} $

== Ecuaciones paramétricas de la circunferencia
Sea $O$ una circunferencia de radio $r$ y centro $C(x_0, y_0)$ entonces se describe a $O$ como el conjunto de todos los puntos con coordenadas descritas por las ecuaciones paramétricas:
$ cases(x = x_0 + r cos(theta) , y = y_0 + r sin(theta)) space , theta in [0, 2 pi) $

= Elipse
Dados dos puntos distintos del plano $F_1$ y $F_2$ llamados *focos* y un número $a in RR$ con $2 a > d(F_1, F_2)$ se define a la *elipse* $Epsilon$ como el conjunto de todos los puntos $P$ tal que $d(P, F_1) + d(P, F_2) = 2 a$

$ Epsilon(F_1, F_2, a) = { P in RR^2: d(P, F_1) + d(P, F_2) = 2 a } $

Al punto medio entre los focos se le llama *centro* notado $C(x_0, y_0)$ y su distancia a los focos es $c$.

A la recta que contiene a los focos se le llama *eje focal*.

== Caso horizontal
Si la ordenada de ambos focos es la misma entonces también la comparten con el centro y los focos quedan definidos por $F_1(x_0 - c, y_0)$ y $F_2(x_0 + c, y_0)$ pues queda uno a la izquierda del centro y otro a la derecha. Trabajando algebraicamente la ley que define a la elipse y definiendo $b = sqrt(a^2 - c^2)$ entonces la elipse es:
$ P(x, y) in Epsilon(F_1, F_2, a) <=> (x - x_0)^2/a^2 + (y - y_0)^2/b^2 = 1 $

== Caso vertical
Si la abscisa de ambos focos es la misma entonces con un razonamiento similar al anterior queda.
$ P(x, y) in Epsilon(F_1, F_2, a) <=> (x - x_0)^2/b^2 + (y - y_0)^2/a^2 = 1 $

Nótese que siempre $b^2 > a^2$ entonces para determinar si una elipse pertenece al caso horizontal o vertical es suficiente con determinar por comparación directa cual de los valores pertinentes es $a^2$ y cual es $b^2$.

== Vértices de una elipse
Los puntos que pertenecen a una elipse con igual ordenada o igual abscisa que el centro de la misma se llaman vertices.

=== Distancia de un foco a un vértice no perteneciente al eje focal
La distancia entre un foco de una elipse a un vértice no perteneciente al eje focal
de la misma elipse es siempre igual a $a$. Esto es porque el vértice es equidistante a ambos focos.

== Ecuaciones paramétricas de una elipse
Sea $Epsilon(F_1, F_2, a)$ una elipse del caso horizontal entonces:

$ P(x, y) in Epsilon(F_1, F_2, a) <=> (x - x_0)^2/a^2 + (y - y_0)^2/b^2 = 1 $

Tomando $x' = (x - x_0)/a and y' = (y - y_0)/b $

$ P(x, y) in Epsilon(F_1, F_2, a) <=> (x')^2 + (y')^2 = 1 $

Usando las ecuaciones paramétricas de la circunferencia

$ P(x, y) in Epsilon(F_1, F_2, a) <=> cases(x' = cos(theta), y' = sin(theta)) space , theta in [0. 2 pi) $

Entonces queda

$ P(x, y) in Epsilon(F_1, F_2, a) <=> cases(x = x_0 + a cos(theta), y = y_0 + b sin(theta)) space , theta in [0. 2 pi) $

= Hipérbola
Dados dos puntos $F_1$ y $F_2$ llamados *focos* y $a$ un número real tal que $2 a < d(F_1, F_2)$ se define a la *hipérbola* $H(F_1, F_2, a)$ como el lugar geométrico definido por:

$ H(F_1, F_2, a) = { P in RR^2: abs(d(P, F_1) - d(P, F_2)) = 2 a } $

Al punto medio entre los focos se le llama *centro* notado $C(x_0, y_0)$ y su distancia a los focos es $c$.

A la recta que contiene a los focos se le llama *eje focal*.

== Vértices de una hipérbola
Los puntos que pertenecen a una hipérbola que también pertenecen al eje focal se llaman vértices.

== Caso horizontal
Si la ordenada de ambos focos es la misma entonces también la comparten con el centro y los focos quedan definidos por $F_1(x_0 - c + a, y_0)$ y $F_2(x_0 + c - a, y_0)$ pues queda uno a la izquierda del centro y otro a la derecha. Trabajando algebraicamente la ley que define a la elipse y definiendo $b = sqrt(c^2 - a^2)$ entonces la elipse es:
$ P(x, y) in H(F_1, F_2, a) <=> (x - x_0)^2/a^2 - (y - y_0)^2/b^2 = 1 $

=== Asíntotas
La rectas que contienen al centro $C(x_0, y_0)$ y a cualquier $P(x_0 #text(red)[$plus.minus$] a, y_0 #text(blue)[$plus.minus$] b)$ son las asíntotas de la hipérbola, son dos.

== Caso vertical
Si la abscisa de ambos focos es la misma entonces con un razonamiento similar al anterior queda.
$ P(x, y) in H(F_1, F_2, a) <=> (y - y_0)^2/a^2  - (x - x_0)^2/b^2 = 1 $

=== Asíntotas
La rectas que contienen al centro $C(x_0, y_0)$ y a cualquier $P(x_0 #text(red)[$plus.minus$] b, y_0 #text(blue)[$plus.minus$] a)$ son las asíntotas de la hipérbola, son dos.

=== Caso degenerado
La siguiente ecuación describe un lugar geométrico del plano igual a la union de dos rectas secantes.
$ (x - x_0)^2/a^2 - (y-y_0)^2/b^2 = 0 $

== Ecuaciones paramétricas de la hipérbola
Recordamos: $cosh^2 t - sinh^2 t = 1$

=== Caso horizontal
Dada $H$ la hipérbola descripta por:
$ (x - x_0)^2/a^2 - (y - y_0)^2/b^2 = 1 $
Sean $H^+ = { P(x, y) in H: x > x_0 }$ y $H^- = { P(x, y) in H: x < x_0 }$.

Entonces las ecuaciones paramétricas de $H^+$ son:
$ cases(x = x_0 + a cosh(t), y = y_0 + b sinh(t)) $

Entonces las ecuaciones paramétricas de $H^-$ son:
$ cases(x = x_0 + a cosh(t), y = y_0 - b sinh(t)) $

#todo[Chequear que las paramétricas sean correctas]

=== Área de una hipérbola
#todo[Gráfico (explica la motivación para llamar a $sinh, cosh$ como se nombran]

= Parábola
Dada una recta $r$ llamada *directriz* y un punto $F$ del plano llamado *foco* tal que $F in.not r$ se llama *parábola* al lugar geométrico del plano $U$ descripto por el conjunto de todos los puntos que equidistan al foco y a la recta.
$ P in U(r, F) <=> d(P, F) = d(P, r) $

== Caso con recta horizontal
Si dado $a in RR$ se define a la directriz mediante la ecuación $y = a$ y se tiene al foco $F(x_0, y')$

=== Caso 'hacia arriba'
Cuando $y' > a$ se definen:
- $p = d(F, r)$
- $Q(x_0, a) in r$
- $V(x_0, y_0)$ con $y_0 = y'-p/2$ es el vértice de la parábola.

Entonces la distancia de un punto $P(x, y)$ de la parábola al foco es:
$ d(P, F) &= sqrt((x - x_0)^2 + (y - y')^2) \
          &= sqrt((x - x_0)^2 + (y - y_0 - p/2)^2) $

Y la distancia de un punto $P(x, y)$ de la parábola a la directriz es:
$ d(P, r) = y - a  = y - y_0 + p/2 $

Entonces:
$ d(P, F) &= d(P, r) \
  sqrt((x - x_0)^2 + (y - y_0 - p/2)^2) &= y - y_0 + p/2 \
  (x - x_0)^2 + (y - y_0 - p/2)^2 &= (y - y_0 + p/2)^2 \
  (x - x_0)^2 + (y - y_0)^2 - 2(y - y_0)p/2 + p^2/4 &= (y - y_0)^2 + 2(y - y_0)p/2 + p^2/4 \
  (x - x_0)^2  &= 2 p(y - y_0) $

$ therefore P(x, y) in U(r, F) <=> (x - x_0)^2  = 2 p(y - y_0) $

=== Caso 'hacia abajo'
Cuando $y' < a$ se definen:
- $p = d(F, r)$
- $Q(x_0, a) in r$
- $V(x_0, y_0)$ con $y_0 = y'+p/2$ es el vértice de la parábola.

$ P(x, y) in U(r, F) <=> (x - x_0)^2  = -2 p(y - y_0) $

== Caso horizontal
=== Caso 'hacia la derecha'
$ P(x, y) in U(r, F) <=> (y - y_0)^2  = 2 p(x - x_0) $
#todo[Chequear y completar]
=== Caso 'hacia la izquierda'
$ P(x, y) in U(r, F) <=> (y - y_0)^2  = -2 p(x - x_0) $
#todo[Chequear y completar]

== Ecuaciones paramétricas de la parábola
=== Caso vertical "hacia arriba"
Sea $U$ una parábola, entonces:
$ P(x, y) in U <=> cases(x = x_0 + t, y = y_0 + 1/(2 p) t^2) space, t in RR $

#todo[Etc...]

= Cónicas degeneradas
#todo[Hay bastantes casos]

= 'So far'
Hasta ahora podemos interpretar cualquier ecuación general de segundo grado en las variables $x$ e $y$ sin termino rectangular, e.g:
$ A x^2 + B y ^ 2 + C x + D y + E = 0 $
$ A (x - x_0)^2 + B (y - y_0)^2 = Q $
Donde $A, B, C, D, E in RR$ donde $abs(A) + abs(B) > 0$ (Si no sería una recta).

== Casos
#todo[Todos los casos incluidos los degenerados]
