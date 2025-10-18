#import "./macros.typ": *
#import "./style.typ": *

#show: init.with(
  title: "Estilo y Normas",
  author: none,
)

Este documento intentará ser de ayuda para mantener una estructura de contenido coherente a lo largo de los apuntes, no es un reglamento duro, es maleable pero esta recomendado adherir.

== La librería
Se recomienda fuertemente utilizar y aprender los elementos y funciones definidos en la librería ya que pueden ser de ayuda para eliminar la necesidad de duplicar definiciones y repetir código. Además proporcionan una manera sencilla de asegurarse que el estilo y la estructura de la información sea predecible.

=== En defecto de buena documentación...
En defecto de buena documentación siempre es buena idea revisar varios de los apuntes ya presentes y observar si ya hay alguna forma relativamente establecida de estilizar un tipo de contenido. Luego se puede extrapolar para conseguir resultados parecidos aceptables. Si tal patrón reconocible y extrapolable no existe se anima al posible contribuyente discutir un posible formato y agregar a este documento o al pertinente la documentación necesaria para el próximo en la fila.

== Estilo de texto
1) No se debe introducir nuevas lineas en el paso de una oración a otra dentro de un párrafo, en cambio se mantiene todo junto.

2) Cuando es posible las formulas largas que no requieran más de una linea se mantienen de la siguiente forma:

```typst $ ... $ ```

Y aquellas que sí requieran más de una linea así (puede cambiar el criterio):

```typst
$ ... \
  ... $
```
o

```typst
$ ... \
  ... \
$
```
3) Suele ser preferible tabular a no hacerlo (se combina bien esto con tabulaciones pequeñas de dos espacios).

```typst
#fun(args)[
  ...
]
```
es preferible a

```typst
#fun(args)[
...
]
```

4) Evitar el uso excesivo o hacer uso escaso de funciones como ```typst #v()``` o ```typst #h()```, el documento ya tiene un estilo establecido por la librería, romperlo genera inconsistencias indeseadas.

5) Luego de un antes de agregar un heading se recomienda agregar una linea en blanco.
```typst
= H1
== H2
Texto

=== H3
ASJKDAHSLDJASHDLKJ

=== H3
...
```
En vez de

\
```typst
= H1
== H2
Texto
=== H3
ASJKDAHSLDJASHDLKJ
=== H3
...
```


== Estilo de código
En general se recomienda copiar el usado en los archivos ya presentes, principalmente en los de macros y estilo ya que son los más revisados. La tabulación es de dos espacios y no se permite espacio en blanco al final de las lineas.

=== Inicialización standard de un documento:
// TODO: Poner estos comentarios en algún lado.
  //Las posibles definiciones de variables o macros globales al documento se recomienda colocarlas luego de importar las bibliotecas.
  // ...

```typst
#import "../macros.typ": *
#import "../style.typ": *

#show: init.with(title: "Título muy interesante", author: none)

// Comienzo del cuerpo del documento ...
```
