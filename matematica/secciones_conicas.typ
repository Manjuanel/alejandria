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
- Parábola
- Hipérbola
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
