# Bienvenido a alejandria
Alejandria es un repositorio de apuntes _hackeables_. Esto significa que aunque contiene los documentos compilados en formato `pdf` realmente está pensado para que cada uno se descarga los archivos y compile el apunte que requiere configurándolo a su preferencia. La idea es usar una misma librería como plantilla pero que la misma tenga una API sencilla de re-implementar para poder tener un apunte realmente personalizado. Están todos invitados a contribuir sus propios apuntes siempre que sigan las normas (escritas y si no de sentido común).

## Requisitos
Tener una instalación funcional de `typst`.

## Pero... ¿Como uso alejandria?
Para poder ver la versión más actualizada de un apunte de forma confiable primero se tiene que copiar el repositorio y compilar el apunte que desee ver con el comando:

```bash
typst compile --root <lib_dir> <file.typ> [<pdf_dir>/<file.pdf>]
```

Por ejemplo si uno quiere leer el apunte de números complejos situado en `matematica/complejos.typ`, se encuentra en el directorio `matematica/` y quiere que el apunte generado en formato `pdf` se encuentre en `pdfs/` entonces el comando sería.

```bash
typst compile --root .. complejos.typ ../pdfs/complejos.pdf
```

Luego con el visor de preferencia del lector abre el archivo generado.

## Reglamentos
Para que los apuntes mantengan una estética mínimamente coherente dejo un documento llamado `estilo_y_normas.typ` que dará reglas generales para que los estilos de los apuntes se mantengan estables. Se apunta a una guía estructural que ayude a usar los elementos y herramientas de la librería.

## Para hacer
- [x] Rehacer el estilo
- [x] Renombrar los archivos al español (no los macros ni el estilo)
- [x] Eliminar `#set block(spacing: 2.5mm)` porque tiene consecuencias globales semi-inesperadas.
- [x] Agregar las listas separadas por lineas a los macros (las que están en los ejemplos)
- [x] Mover `style.typ` a `estilo.typ`
- [x] Hacer un directorio de ejemplos
- [x] Mover el TODO LIST al README.md y ponerle tildes y eso
- [ ] Migrar todos los apuntes
- [ ] Agrupar apuntes en "libros", después de todo la ultra fragmentación que hay ahora no es práctica.
- [ ] Juntar los apuntes de funciones y relaciones
- [ ] Repensar las funciones disponibles y hacer una lista que las documente
- [ ] Rehacer la función casesAlign()
- [ ] Borrar `pdfs/`
- [ ] Hacer ejemplos mostrando todas las capacidades de las librerías y mostrando el estilo para descargar `estilos_y_normas.typ`
- [ ] Hacer posible una configuración global del color de los elementos que no requiera de pasar el color en todas las funciones (posiblemente implementando estado).
