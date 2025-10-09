#import "../lib.typ" : *
#show: init.with(debug: true)

#title[Aplicaciones del Cálculo Integral]

= Curvas polares
== Coordenadas polares
Un punto $(r, theta)$ expresado en coordenadas polares satisface las siguientes ecuaciones que relacionan sus coordenadas al sistema cartesiano.
$ cases(x = r cos(theta), y = r sin(theta)) <=> cases(r^2 = x^2 + y^2, tan(theta) = y/x) $

Se cumple que $(-r, theta) = (r, theta + pi)$

=== Representación e intuición gráfica
#todo[]

== Curvas
Dada una función $f$ los puntos $(f(theta), theta)$ con coordenadas polares pueden describir una curva polar.

== Área de una curva polar cerrada
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

= Volumen de sólidos de revolución
Dada $f$ integrable y no negativa de $[a, b]$ el volumen del sólido de revolución que surge de rotar $f$ alrededor del eje $X$ acotada por los planos $x = a$, $x = b$ es:
$ integral_a^b pi f^2 $

Dada $f$ integrable y no negativa en $RR_0^+$ de $[a, b]$ el volumen del sólido de revolución que surge de rotar la región entre $a, b$ bajo $f$ alrededor del eje $Y$ acotada por el plano $y = 0$ es:
$ 2 pi integral_a^b x f(x) dif x $

= Longitud de curvas en el plano
Dada una curva $y = f(x)$ derivable con $f'$ integrable su longitud entre $[a, b]$ esta dada por:
$ integral_a^b sqrt(f'(x)^2 + 1) dif x $

Dada una curva expresada en forma paramétrica $y = f(t), x = g(t)$ con $f$ y $g$ derivables y $f', g'$ integrables su longitud entre $t = a$ y $t = b$ esta dada por:
$ integral_a^b sqrt(f'(t)^2 + g'(t)^2) dif t $

Para una curva polar con $r = f(theta)$ y $theta in [a, b]$ si $f$ es derivable y $f'$ integrable su longitud entre $theta = a, theta = b$ es:
$ integral_a^b sqrt(f(theta)^2 + f'(theta)^2) dif theta $
