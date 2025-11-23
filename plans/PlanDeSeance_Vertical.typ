#import "colors.typ": accent, light, primary, secondary


#set document(
  title: "Plan de Seance Vertical - DAF",
  author: "Axel Goris",
  date: datetime(year: 2025, month: 11, day: 10),
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  footer: context [
    #set text(size: 9pt, fill: light)
    #smallcaps[Axel Goris]
  ],
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "fr",
)

#set par(justify: true, leading: 0.65em)

#set heading()

#show heading.where(level: 1): it => {
  set text(size: 16pt, fill: primary)
  block(
    above: 1.5em,
    below: 1em,
    [
      #it.body
      #v(-0.8em)
      #line(length: 100%, stroke: 1pt + primary)
    ],
  )
}

#show heading.where(level: 2): it => {
  set text(size: 13pt, fill: secondary)
  block(
    above: 1.2em,
    below: 0.8em,
    [
      #counter(heading).display() #it.body
    ],
  )
}


#grid(
  columns: (3fr, 1fr, 1fr),
  gutter: 1em,
  align: (left, left, left),
  [#text(size: 20pt, weight: "bold", fill: secondary)[Plan de Seance]], [*Theme:*], [*Public:*],
)



= Preparation
#v(1fr)
= Coeur de la seance
#v(1.5fr)
= Sortie
#v(1fr)

