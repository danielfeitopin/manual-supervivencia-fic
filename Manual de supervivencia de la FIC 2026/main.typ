#set text(lang: "es")

#set document(
  title: [Manual de supervivencia de la FIC 2026]
)

// Style
#set par(justify: true)
#import "components/style.typ": apply-style
#show: apply-style


#import "@preview/glossarium:0.5.10": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary
#import "glossary.typ": entry-list
#register-glossary(entry-list)



#page(
  margin: 0pt,
)[
  #image("components/font-page/Portada.png", width: 100%, height: 100%)
]

#pagebreak()

#include "chapters/00-Como leer.typ"

#pagebreak()

// Índice
#counter(page).update(1)
#set page(numbering: "i")
#outline()

#pagebreak()

#set page(
  footer: [
    #align(center)[
      #context counter(page).display()
      
      #text(size: 8pt)[
        #box(image("components/icons/Cc-by-nc-sa_icon.svg", height: 12pt), baseline: 30%) 2026 · Daniel Feito Pin & Lúa Rico Rodríguez ·
        #link("https://creativecommons.org/licenses/by-nc-sa/4.0/")[CC BY-NC-SA 4.0]
      ]
    ]
  ]
)

#counter(page).update(1)
#set page(numbering: "1")

#set heading(numbering: "1.")

#include "chapters/01-UDC.typ"
#pagebreak()

#include "chapters/02-FIC.typ"
#pagebreak()

#include "chapters/03-ECTS.typ"
#pagebreak()

#include "chapters/04-Horarios.typ"
#pagebreak()

#include "chapters/05-Eventos.typ"
#pagebreak()

#include "chapters/06-Repres.typ"
#pagebreak()

#include "chapters/07-Asociaciones.typ"
#pagebreak()

#include "chapters/08-FAQ.typ"
#pagebreak()

// Glossary
= Glosario


#print-glossary(entry-list, deduplicate-back-references: true)
