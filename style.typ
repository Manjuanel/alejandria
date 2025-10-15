// colors i like
//blue
//rgb("f534ce") 

/////// DEBUG ///////

#let _debug = state("debug_mode", false)

#let todo(hide: false, content) = {
	context(
		if _debug.get() {
			set text(size: 16pt, fill: red, font: "DejaVu Sans Mono")
			strong([[TODO: #content]])
			linebreak()
		}
	)
}

/////// STYLE ///////

#let title_fullpage(color: blue, title: none, author: none, date: none) = {
	align(center)[
		#block(below: 85mm)
		#block(below: 7mm,text(size: 45pt)[#title])
		#block(text(size: 17pt)[#author])
		#pagebreak() 
		#outline(title: text(fill: color, size: 22pt)[Contents])
	]
}
#let title_halfpage(color: blue, title: none, author: none, date: none) = {
	align(center)[
		#block(below: 30mm)
		#block(below: 7mm,text(size: 45pt)[#title])
		#block(below: 60mm, text(size: 17pt)[#author])
		#outline(title: text(fill: color, size: 22pt)[Contents])
	]
}

#let init(
	title: "titulo", 
	author: "autor",
	color: blue, 
	font: "Libertinus Serif",
	font_size: 14pt,
	full_title: true,
	debug: false,
	doc
) = {
    if debug == true {
        _debug.update(true)
    }

	set page(
		paper: "a4",
		margin: 20mm,
	  )

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
		*#smallcaps(it)*
	]
	
	set block(spacing: 2.5mm)
	
	set list(
		indent: 0.8cm,
		tight: true,
	)
	show list: it => [
		#set par(spacing: 4mm,leading: 3mm)
		#it
	]

	show line: it => [
		#set par(spacing: 3mm)
		#it
	]

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
	
	if full_title == true [ 
		#title_fullpage(
			color: color,
			title: text(50pt, title),
			author: author,
			date: "Octubre 1" + super[st] + ", 2025",
	)]
	else [
		#title_halfpage(
			color: color,
			title: text(50pt, title),
			author: author,
			date: "Octubre 1" + super[st] + ", 2025",
	)]

	pagebreak() 
	doc
}

