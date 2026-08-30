#let customBox(title, color, icon, body) = block(
  fill: color.lighten(90%),
  stroke: (paint: color.darken(25%), thickness: 1pt),
  radius: 6pt,
  inset: 0pt,
  breakable: true,
)[
  // Block header
  #block(
    width: 100%,
    inset: (x: 1em, y: 0.5em),
    radius: (top-left: 6pt, top-right: 6pt),
    below: 0pt,
    fill: color,
  )[
    #set text(fill: white, size: 11pt, weight: "bold")
    #box(icon, baseline: 30%) #h(1em) #title
  ]
  
  // Block body
  #block(
    inset: (x: 1em, y: 1em),
  )[
    #body
  ]
]

#let importantBox(body) = customBox(
  [¡Importante!],
  red,
  image("icons/font-awesome/circle-exclamation-solid-full.svg", width: 1.5em),
  body,
)

#let warningBox(body) = customBox(
  [¡Atención!],
  yellow,
  image("icons/font-awesome/triangle-exclamation-solid-full.svg", width: 1.5em),
  body,
)

#let infoBox(body) = customBox(
  [Información adicional.],
  rgb("#0011ff"),
  image("icons/font-awesome/circle-info-solid-full.svg", width: 1.5em),
  body,
)

#let exampleBox(body) = customBox(
  [Por ejemplo...],
  rgb("#8fbf00"),
  image("icons/font-awesome/lightbulb-solid-full.svg", width: 1.5em),
  body,
)

#let curiosityBox(body) = customBox(
  [¿Sabías que...?],
  rgb("#009999"),
  image("icons/font-awesome/circle-question-solid-full.svg", width: 1.5em),
  body,
)

#let rememberBox(body) = customBox(
  [Recuerda...],
  rgb("#bc5085"),
  image("icons/font-awesome/brain-solid-full.svg", width: 1.5em),
  body,
)
