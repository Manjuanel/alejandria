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
- [ ] Agrupar apuntes en "libros", después de todo la ultra fragmentación que hay ahora no es práctica.
- [ ] Rehacer el estilo (en proceso)
- [ ] Repensar las features y funciones disponibles y hacer una nueva lista con especificación minima pero existente
  - Aclaración: mejorar la documentación
- [ ] Rehacer la función casesAlign()
- [ ] Renombrar todo lo que este en ingles de forma innecesaria al español (esto no incluye la mayoría de los símbolos y funciones predefinidos por typst).
- [ ] Migrar todos los apuntes
- [ ] Reordenar los directorios, posiblemente borrar `pdfs/`
- [ ] Hacer un directorio de ejemplos
- [x] Mover el TODO LIST al README.md y ponerle tildes y eso
- [ ] Compatibilizar estilo y normas con los ejemplos, "rediseñar" para que convivan cómodamente.
- [ ] `#set block(spacing: 2.5mm)` tiene consecuencias raras, sobretodo se notan al poner una formula de bloque (multi linea)
- [ ] Agregar las listas separadas por lineas a los macros (las que están en los ejemplos)
- [ ] Mover `style.typ` a `estilo.typ`
