#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Cálculo Integral]

= Sumas inferiores y superiores
== Partición de un intervalo
Sea $[a, b]$ un intervalo, $P$ es partición de $[a, b]$ si:
+ $abs(P) = n in NN$
+ $forall i in NN_0 space (i <= n => t_i in P)$
+ $t_0 = a$
+ $t_n = b$
+ $forall t_i, t_j in P space (i < j => t_i < t_j)$

== Ínfimos y supremos
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$, $P$ una partición del intervalo $[a, b]$ y un número $k in NN$ tal que $k <= abs(P)$ y sea $I_k = [t_(k-1), t_k]$ entonces se definen para ella los siguientes:
$ m_k = limits("inf")_I_k space f " y " M_k = limits("sup")_I_k space f $

== Suma inferior y superior
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$, $P$ una partición del intervalo $[a, b]$ y un número $k in NN$ tal que $k <= abs(P)$ y sea $Delta t_k = t_k - t_(k-1)$ entonces se definen la *suma inferior* y la *suma superior* como:
$ L(f, P) = sum^n_(k=1) m_k Delta t_k " y " U(f, P) = sum^n_(k=1) M_k Delta t_k $

== Lemas
Sean $f: [a, b] -> RR$ una función acotada, $P$ una partición de $[a, b]$ y $k in NN$ tal que $k <= abs(P)$:
+ $L(f, P) <= U(f, P)$
    - Esto es porque $forall k (m_k <= M_k and Delta t_k >= 0) => forall k (m_k Delta t_k <= M_k Delta t_k)$

+ Sea $P'$ partición de $[a, b]$ y $P subset.eq P' => L(f, P) <= L(f, P') and U(f, P') <= U(f, P)$
    - #todo[Demostración]

+ Sea $Q$ partición de $[a, b] => L(f, P) <= U(f, Q)$
    - Se demuestra considerando la partición $T = P union Q$ y utilizando el segundo lema.

= Funciones integrables según Riemann
== Conjunto de particiones de un intervalo
Dados dos números reales $a$ y $b$ el conjunto que tiene por elementos a todas las particiones del intervalo $[a, b]$
== Integral inferior y superior
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$ se llaman *integral inferior* e *integral superior* respectivamente a:
$ underline(integral)_a^b f = sup { L(f, P): P in powerset([a, b])} " y " overline(integral)_a^b f = inf { U(f, P): P in powerset([a, b])} $

La integral inferior es menor o igual que la integral superior:
$ underline(integral)_a^b f <= overline(integral)_a^b f $
Esto es porque por el tercer lema:
$ underline(integral)_a^b f = limits("sup")_P space L(f, P) <= limits("inf")_Q space U(f, Q) = overline(integral)_a^b f $

== Integral de Riemann
Dada la función $f:[a, b] -> RR$ acotada en $[a, b]$ es integrable según Riemann si la integral inferior es igual a la integral superior que son entonces iguales a la integral de f. Se nota:
$ integral_a^b f = overline(integral)_a^b f = underline(integral)_a^b f = integral_a^b f(x) d x $

== Area bajo una curva
Dada la función $f:[a, b] -> RR$ acotada y no negativa en $[a, b]$, sea la región:
$ R = {(x, y): x in [a, b] and y in [0, f(x)]} $
entonces la integral de $f$ es igual al area de $R$

== Condición de integrabilidad
Dada la función $f:[a, b] -> RR$ acotada e integrable si
$ forall epsilon > 0 space exists P (P "partición de "[a, b] and U(f, P) - L(f, P) < epsilon) $

#todo[Demostración]

== Particiones regulares
Dado un intervalo $[a, b]$ y un número $n in NN$ entonces $P_n$ es una partición regular sobre el mismo solo si $abs(P_n) = n + 1 and forall k in NN space (k <= n + 1 => Delta t_k = (b-a)/n)$ quedando $t_k = k dot (b-a)/n + a$

Una partición regular $P_n$ es par si $abs(P_n)/2 in.not NN$ e impar si $abs(P_n)/2 in NN$

== Continuidad uniforme
Dada una función $f$ definida se dice uniformemente continua si tomando $x, y in Dom(f)$
$ forall epsilon > 0 space exists delta > 0 space forall x, y space ( abs(x - y) < delta => abs(f(x) - f(y)) < epsilon) $

=== Teorema
Si $f: [a, b] -> RR$ es continua, entonces es uniformemente continua.

#todo[Demostración]

=== Teorema
Si $f: [a, b] -> RR$ es continua, entonces es integrable.

Notar que la condición de continuidad es suficiente a la integrabilidad pero no necesaria.

#todo[Demostración, involucra usar el teorema previo, usar la condición de integrabilidad que usa $epsilon$ y elegir una partición con todo $Delta t_k < delta$]

=== Proposición
Si $f: [a, b] -> RR$ es monótona entonces es integrable.

== Propiedad de aditividad de la integral
Dada $f: [a, b] -> RR$, entonces $f$ es integrable en $[a, b]$ si y solo si para todo $c in (a, b)$ se da que es integrable en $[a, c]$ y en $[c, b]$, osea:
$ integral_a^b f = integral_a^c f + integral_c^b f $

#todo[Demostración: Usa la integrabilidad con $epsilon$, tomando una partición que contiene a $c$ y dividiéndola en dos y dar que $U = U_1 + U_2$]

Se definen $integral_a^a f = 0$ y $integral_b^a f = - integral_a^b f$

= Algebra de integrales
Sean $c in RR$, $f$ y $g$ funciones integrables en $[a, b]$ entonces $c f$ y $f + g$ también son integrables en dicho intervalo.

+ $integral_a^b (c f) = c dot integral_a^b f$

+ $integral_a^b (f + g) = integral_a^b f + integral_a^b g$

Dadas dos funciones $f$ integrable en $[a, b]$ y $g = f$ salvo para alguna cantidad finita de puntos donde difieren entonces g es integrable en $[a, b]$ y $integral_a^b f = integral_a^b g$

= Propiedades de orden
== Cota de una integral
Sean $f: [a, b] -> RR$ y $m,M in RR$ con $f$ acotada por $forall x in Dom(f) space (m < f(x) < M)$, entonces:
$ m(b-a) <= limits("sup")_P space L(f, P) = integral_a^b f = limits("inf")_P space U(f, P) <= M(b-a) $

#todo[Demostración]

== Corolario
Sean $f$ y $g$ funciones integrables en $[a, b]$ donde $forall x in [a, b] space (f(x) <= g(x))$ entonces:
$ integral_a^b f <= integral_a^b g $

#todo[Demostración]

== Integral del valor absoluto de una función
Sea $f$ integrable en $[a, b]$ entonces $abs(f)$ es integrable en $[a,b]$ y se da:
$ abs(integral_a^b f) <= integral_a^b abs(f) $

#todo[Demostración]

= Cálculo de Áreas
== Cuando la función es no positiva
Dada una función $f$ integrable en $[a, b]$ entonces si $forall x in [a, b] space f(x) <= 0$ entonces el área entre la gráfica de $f$ y el eje $x$ es $-integral_a^b f$.

== Entre dos funciones no negativas
Dadas las funciones $f$ y $g$ integrable en $[a, b]$ tal que $forall x in [a, b] space f(x) <= g(x)$ y el lugar geométrico del plano $R = {P(x, y): x in [a, b] and y in [f(x), g(x)]}$ entonces el área de $R$ es:
$ "es" $
$ "Área"(R) = integral_a^b (g(x) - f(x)) $

== En general
Dada una función $f$ integrable en $[a, b]$ entonces el área entre la gráfica de $f$ y el eje $x$ es $integral_a^b abs(f)$.

= Valor medio
Dada $f$ continua en $[a, b]$ entonces existen $xi in [a, b]$ y $mu = f(xi)$ tal que:
$ f(xi) = mu = 1/(b-a) integral_a^b f $

#todo[Demostración: Usa Weierstrass]

