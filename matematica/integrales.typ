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
