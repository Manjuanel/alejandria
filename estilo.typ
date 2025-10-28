// TODO: Remove this comments below and maybe redesign colors
// colors i like
//blue
//hipótesis("f534ce")

/////// DEBUG ///////

#let _debug = state("debug_mode", false)

#let note(content) = context(
  if _debug.get() { super(emph(text(fill: red, content))) }
)

#let todo(hide: false, content) = context(
  if _debug.get() {
    set text(fill: red)
    lower(smallcaps(strong(content)))
    linebreak()
  }
)

/////// STYLE ///////

//TODO: Arreglar que no se usa date (Empezar a usar o eliminar)
#let title_fullpage(color: blue, title: none, author: none, date: none) = {
  align(center)[
    #block(below: 85mm)
    #block(below: 7mm,text(size: 45pt)[#title])
    #block(text(size: 17pt)[#author])
    #pagebreak()
    #outline(title: text(fill: color, size: 22pt)[Contents])
  ]
}

//TODO: Arreglar que no se usa date (Empezar a usar o eliminar)
#let title_halfpage(color: blue, title: none, author: none, date: none) = {
  align(center)[
    #block(below: 30mm)
    #block(below: 7mm,text(size: 45pt)[#title])
    #block(below: 3fr, text(size: 17pt)[#author])
    #outline(title: text(fill: color, size: 22pt)[Contents])
    #block(below: 1fr)
  ]
}

#let init(
  title: "Titulo",
  author: "Nombre Apellido",
  color: blue,
  font: "Libertinus Serif",
  font_size: 13pt,
  full_title: false,
  debug: false,
  doc
) = {
  if debug == true {
    _debug.update(true)
  }

  set page(paper: "a4", margin: 20mm)

  set par(leading: 3mm, justify: true)
  set text(size: font_size, font: font)

  show title: it => [
    #set par(leading: 11mm)
    #it
  ]

  set outline(indent: 4mm)
  set outline.entry(fill: repeat(text[.], gap: 4pt))
  show outline.entry.where(level: 1): it =>[
    #show repeat: none
    #strong(smallcaps(it))
  ]

  set list(indent: 0.8cm, tight: true)

  show list: it => [
    #set par(spacing: 4mm,leading: 3mm)
    #it
  ]

  show line: it => [
    #set par(spacing: 3mm)
    #it
  ]

  // TODO: Hacer una sola función anónima con if y else en vez de poner 3 veces la expresión show
  // TODO: Eliminar tanta repetición
  set heading(numbering: none)
  show heading.where(level: 1): it => [
    #set align(center)
    #set text(35pt, weight: "bold")
    #block(smallcaps(it.body))
  ]
  show heading.where(level: 2): it => [
    #set align(center)
    #set text(23pt, weight: "bold")
    #block(smallcaps(it.body))
  ]
    show heading.where(level: 3): it => [
    #set align(left)
    #set text(18pt, weight: "bold")
    #block((it.body))
  ]

  // TODO: Hacer una sola función anónima con if y else en vez de poner 3 veces la expresión show
  // TODO: Eliminar tanta repetición
  if full_title == true [
    #title_fullpage(
      color: color,
      title: text(50pt, title),
      author: author,
      date: "Octubre 1" + super[st] + ", 2025",
    )
  ]
  else [
    #title_halfpage(
      color: color,
      title: text(50pt, title),
      author: author,
      date: "Octubre 1" + super[st] + ", 2025",
    )
  ]

  pagebreak()
  doc
}
