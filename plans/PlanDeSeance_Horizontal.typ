#import "../colors.typ": accent, light, primary, secondary
#import "@preview/fontawesome:0.6.0": *

// 1. Global Configuration Rule
#let conf(doc) = {
  set document(title: "Plan de Seance - DAF", author: "Axel Goris")
  set page(
    paper: "a4",
    flipped: true,
    margin: (x: 0.5cm, y: 1cm),
    header: context [
      #set text(size: 9pt, fill: light)
      #smallcaps[Axel Goris]
    ],
  )
  set text(font: "New Computer Modern", size: 11pt, lang: "fr")
  set par(justify: true, leading: 0.65em)

  // Heading styling
  show heading.where(level: 1): it => {
    set text(size: 16pt, fill: primary)
    block(above: 1.5em, below: 0.2em, [
      #it.body
      #v(-0.8em)
      #line(length: 100%, stroke: 1pt + primary)
    ])
  }

  show heading.where(level: 2): it => {
    set text(size: 13pt, fill: secondary)
    block(above: 1.2em, below: 0.8em, [#counter(heading).display() #it.body])
  }

  doc
}


// Helper to create a styled "Exercise" card
#let exo(title: "", duration: none, body, objectif: none, criteres: none) = {
  block(
    width: 100%,
    stroke: 0.5pt + gray,
    radius: 4pt,
    inset: 8pt,
    below: 0.2em,
    breakable: false, // Keep card distinct
    {
      // Title Header
      stack(dir: ltr, spacing: 1fr, text(weight: "bold", fill: black, title), if duration != none {
        text(style: "italic", size: 0.9em, fill: gray, duration)
      })
      // Main Description
      body

      // Footer: Objective & Criteria
      if objectif != none or criteres != none {
        line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
        grid(
          columns: (auto, 1fr),
          gutter: 0.5em,
          align: horizon,

          if objectif != none { text(fill: blue.darken(20%), size: 1em, move(dy: -1pt, fa-icon("bullseye"))) },
          if objectif != none { text(size: 0.9em, fill: blue.darken(30%), [#objectif]) },

          if criteres != none { text(fill: green.darken(20%), size: 1em, move(dy: -1pt, fa-icon("check"))) },
          if criteres != none { text(size: 0.9em, fill: green.darken(30%), [#criteres]) },
        )
      }
    },
  )
}
// 2. The Plan Generator Function
#let horizontal_plan(
  date: datetime.today(),
  theme: "Theme",
  target: "Tout Public",
  prep: [],
  heart: [],
  exit: [],
  notes: none, // Nouveau paramètre pour les notes (texte ou vide),
) = {
  // Header
  grid(
    columns: (1fr, 2fr, 1fr),
    gutter: 1em,
    [#text(size: 20pt, weight: "bold", fill: secondary)[Plan de Séance]], [*Thème:* #theme], [*Public:* #target],
  )

  v(1em)

  // Layout Principal : Contenu (Haut) + Notes (Bas)
  grid(
    columns: 1fr,
    rows: (1fr, auto), // 1fr pour le contenu, auto pour les notes
    gutter: 1em,

    // LIGNE 1 : Les 3 colonnes de la séance
    grid(
      columns: (1fr, 0fr, 1.5fr, 0fr, 1fr),
      rows: 100%,
      // Force les séparateurs à aller jusqu'en bas de cette zone
      gutter: 1em,
      [
        = Préparation
        #prep
      ],
      grid.vline(x: 1, stroke: 1pt + gray),
      [],
      // Espace vide pour le trait
      [
        = Cœur de la séance
        #heart
      ],
      grid.vline(x: 3, stroke: 1pt + gray),
      [],
      // Espace vide pour le trait
      [
        = Sortie
        #exit
      ],
    ),

    // LIGNE 2 : Bas de page (Notes & Bilan manuscrit)
    block(
      width: 100%,
      height: 6em,
      stroke: 0.5pt + gray,
      radius: 4pt,
      inset: 8pt,
      breakable: false,
      {
        grid(
          columns: (2fr, 0fr, 1fr),
          gutter: 1em,

          // Colonne Notes (Remplie ou Vide)
          [
            #text(weight: "bold", fill: black)[Notes]
            #v(0em)
            #notes
          ],

          // Séparateur
          grid.vline(x: 1, stroke: 0.5pt + gray.lighten(50%)),
          [],

          // Colonne Bilan (Toujours vide pour écriture manuelle)
          [
            #text(weight: "bold", fill: black)[Bilan]
            #v(-1.5em)
            #set text(fill: black)
            #repeat[#text[ . ] ]
            #v(-0.5em)
            #set text(fill: black)
            #repeat[#text[ . ] ]
            #v(-0.5em)
            #set text(fill: black)
            #repeat[#text[ . ] ]

          ],
        )
      },
    )
  )

  pagebreak(weak: true)
}

