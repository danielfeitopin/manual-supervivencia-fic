#let color_fic = rgb("326e76")
#let color_udc = rgb("c6007d")

#let apply-style(body) = {
  show link: it => {
    // Comprobamos si el tipo del destino es un string (enlace externo)
    if type(it.dest) == str {
      set text(fill: color_udc)
      it
    } 
    // Si no es un string, es un enlace interno (label o location)
    else {
      set text(fill: color_fic)
      it
    }
  }

  set text(size: 11pt)
  
  show heading.where(level: 1): set text(
    size: 18pt,
    weight: "bold",
  )
  
  show heading.where(level: 2): set text(
    size: 16pt,
    weight: "bold",
  )
  
  show heading.where(level: 3): set text(
    size: 14pt,
    weight: "bold",
  )
  
  body
}

#let resultPassed = rgb(94, 185, 94)
#let resultFailed = rgb(245, 169, 50)
#let resultNotPresented = rgb(75, 177, 207)

