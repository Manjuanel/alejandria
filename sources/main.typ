#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4"

#set page(width: auto, height: auto, margin: 1em)

#cetz.canvas({
  import cetz.draw: *
  cetz-venn.venn(
    padding: 0.5em,
    width: 50mm,
    name: "venn",
    a-fill: gray,
    not-a-fill: gray
  )
})

