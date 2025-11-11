#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node
#import "@preview/cetz:0.4.2"
#import "@preview/gentle-clues:1.2.0": *
#import "colors.typ": accent, light, primary, secondary



#set document(
  title: "Diplôme d'Animateur Fédéral - DAF",
  author: "Axel Goris",
  date: datetime(year: 2025, month: 11, day: 10),
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  header: context [
    #set text(size: 9pt, fill: gray)
    #smallcaps[DAF - Formation Pédagogique]
    #h(1fr)
    #counter(page).display("1")
  ],
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

#show heading.where(level: 1): it => {
  set text(size: 16pt, fill: primary)
  block(
    above: 1.5em,
    below: 1em,
    [
      #counter(heading).display() #it.body
      #v(-0.5em)
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



#set par(justify: true, leading: 0.65em)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 20pt, weight: "bold")[Diplôme d'Animateur Fédéral - DAF]
  #v(0pt)
  #text(size: 12pt)[Notes de formation pédagogique]
  #v(0pt)
  #text(size: 10pt)[10 novembre 2025]
]

#v(1em)

#outline(indent: auto)

#pagebreak()

= Informations pratiques

Dates et lieux des événements :
- Dimanche 9 novembre 2025 à Parthenay (Deux-Sèvres)
- Dimanche 30 novembre 2025 à La Crèche (Deux-Sèvres)
- Dimanche 11 janvier 2026 à Vouillé (Vienne)

= Références

== Sources documentaires
- *Livres sur les kata* : attention à la qualité variable des sources.
- *Internet* : même problématique de fiabilité.
- *Règlements fédéraux* : documents officiels aux dernières normes (parfois austères).

= Apprentissage

L'enseignement requiert une ouverture d'esprit. Tout dépend du contexte.

Le processus d'apprentissage suit un cycle continu :

#align(center)[
  #block(
    stroke: 1pt,
    inset: 1em,
    radius: 4pt,
    width: auto,
    [
      #align(center)[
        #text(weight: "bold", size: 1.1em, fill: primary)[Travail en Conscience]
      ]
      #v(1em)
      #let nodes = ([Formation], [Expérience], [Questionnement])
      #let n = nodes.len()

      #diagram(
        node-stroke: 1pt,
        edge-stroke: 1pt,
        spacing: 1cm,

        for (i, label) in nodes.enumerate() {
          let angle = 90deg - i * 360deg / n
          node(
            (calc.cos(angle), calc.sin(angle)),
            label,
            name: str(i),
          )
        },

        for i in range(n) {
          edge(label(str(i)), label(str(calc.rem(i + 1, n))), "->", bend: -40deg)
        },
      )
    ],
  )
]


= Karaté santé - Une approche douce

Le karaté est un sport qui favorise la santé, mais la notion de « karaté santé » désigne une pratique physique adaptée qui aide à soulager les douleurs et à rester en forme.

La demande pour le karaté santé augmente chez les seniors, notamment grace a une volonte de rester en forme tout au long de sa vie.

== Adaptation au public
Il faut adapter l'enseignement à son public cible pour éviter l'ennui ou les blessures.

#align(center)[
  *#text(fill: primary)[3 niveaux d'adaptation]*

  #diagram(
    node-stroke: 1pt,
    spacing: (1em, 1em), // horizontal, vertical spacing

    node((0, 1), name: "Comfort", fill: yellow, width: 50mm, height: 10mm, [Comfort]),
    node((1, 1), name: "Travail", fill: green, width: 50mm, height: 10mm, [Travail]),
    node((2, 1), name: "Danger", fill: red, width: 50mm, height: 10mm, [Danger]),

    node((0, 2), name: "DescComfort", width: 50mm, height: 40mm, [
      - Stagnation
      - Regression
      - Demotivation puis abandon...
    ]),
    node((1, 2), name: "DescTravail", width: 50mm, height: 40mm, [
      - Connait sa limite
      - Adapte et travaille sans se faire mal
      - Progression importante et durable!
    ]),
    node((2, 2), name: "DescDanger", width: 50mm, height: 40mm, [
      - Risques de blessure plus importants
      - Ecart de niveau trop important, amenant une frustration
      - Demotivation... puis abandon!
    ]),


    // Axis above
    edge((-1, 0), (3, 0), "-|>", [Intensité], label-side: center, label-pos: 0.5),
    edge((0.5, 0), (0.5, 2), "--"),
    edge((1.5, 0), (1.5, 2), "--"),

    edge((0, 1), (0, 2), "->"),
    edge((1, 1), (1, 2), "->"),
    edge((2, 1), (2, 2), "->"),
  )
]

#info[Une personne ne restera pas toujours dans la meme zone. Certains viseront la lune, se demotiveront et finiront pas ne plus faire d'effort. C'est un suivi constant!]

Ces conseils sont valables pour tous, les seniors, les jeunes, les compétiteurs, etc.

== Certifications disponibles
Pour poursuivre la formation, n'hesitez pas a regarder sur:
- FFK (Fédération Française de Karaté)
- KD Academy

= Exercice

Un exercice est un *moyen* d'atteindre un objectif plus général.

Chaque exercice doit comporter :
- Des objectifs clairs
- Des consignes précises
- Des critères de réussite définis

== Évaluation

#table(
  columns: (1fr, 2fr),
  align: left,
  [*Type*], [*Description*],
  [Prédictive], [Avant l'exercice],
  [Formative], [Pendant l'exercice],
  [Sommative], [Après l'exercice],
)

== Passages de grade
- Les passages de *dan* suivent des critères fédéraux officiels
- Pour les passages de *ceinture* en club, l'évaluation reste libre
- Elle doit rester objective mais il est important de considérer la progression individuelle.

#warning[
  Un pratiquant qui stagne risque de se démotiver et d'abandonner. Par exemple, un enfant qui est toujours ceinture blanche a la fin de sa premiere annee ne voudra probablement pas revenir l'annee suivante.
]

= Posture pédagogique

L'enseignant doit adapter son approche sur le spectre :

#align(center)[
  *#text(fill: primary)[Adapter sa posture]*

  #diagram(
    node-stroke: 1pt,
    spacing: (10em, 1em), // horizontal, vertical spacing

    node((0, 1), name: "Parent", width: 20mm, height: 10mm, [Parent]),
    node((1, 1), name: "Travail", width: 20mm, height: 10mm, [Posture]),
    node((2, 1), name: "Enfant", width: 20mm, height: 10mm, [Enfant]),

    edge((1, 1), (0.2, 1), "=>", [
      \+ Autoritaire \
      \+ Directif
    ]),

    edge((1, 1), (1.8, 1), "=>", [
      \+ Doux \
      \+ Joueur
    ]),
  )
]

#info[Au cours d'une même séance, il est important de changer sa posture pour garder son public concentré et intéressé.]

Ce qui a marché un jour peut être complètement désastreux un autre jour. On adapte!

= Assistants

Les assistants sont formidables et aident à beaucoup de situations mais ils ne sont pas entièrement autonomes.

#warning[
  Il est possible de déléguer mais il faut alors communiquer des critères bien définis et maintenir une certaine surveillance.
]

= Plan de séance

== Structure générale
- *Thème* : ni trop spécifique, ni trop général
- *Public* : âge + niveau (+ objectifs)

== Déroulement type

Il est important d'avoir un thème et un public puisque cela va dicter les exercices de la seance.

#align(center)[
  *#text[Les 3 phases d'une seance]*

  #diagram(
    node-stroke: 1pt,
    spacing: (0em, 1em), // horizontal, vertical spacing

    node((0, 1), name: "Prepa", fill: yellow, width: 50mm, height: 10mm, [Preparation]),
    node((1, 1), name: "Travail", fill: green, width: 100mm, height: 10mm, [Coeur de la seance]),
    node((2, 1), name: "Sortie", fill: yellow, width: 50mm, height: 10mm, [Sortie]),

    node((0, 2), name: "DescComfort", width: 50mm, height: 40mm, [
      + Accueil
      + Salut
      + Optionel: Brief
      + Échauffement générique
      + Échauffement spécifique

    ]),
    node((1, 2), name: "DescTravail", width: 100mm, height: 40mm, [
      - Progression avec une série d'exercices ciblés.

    ]),
    node((2, 2), name: "DescDanger", width: 50mm, height: 40mm, [
      + Retour au calme
      + Optionel: Débrief avec le groupe
      + Salut final
    ]),


    // Axis above
    edge((-1, 0), (3, 0), "-|>", [Temps], label-side: center, label-pos: 0.5),

    edge((0, 1), (0, 2), "->"),
    edge((1, 1), (1, 2), "->"),
    edge((2, 1), (2, 2), "->"),
  )
]
#error[
  Le renforcement musculaire et les assouplissements constituent le *cœur* d'une séance, pas un simple échauffement ou une conclusion.
]

= Travail à réaliser

== Avant le 30 mai 2026

Effectuer *15 heures* de participation à des événements fédéraux en tant qu'acteur :

- *Compétition* : arbitrage, coaching
- *Challenge Berger*
- *Aide a l'organisation d'evenement pour d'autre discipline* de la fédération
- *Stage enfant* pédagogie (un stage prévu le 30 mai)
- *Sport santé* (fin avril - pédagogie senior)

== Pour le 30 Novembre 2025

Trois plans de séance à rédiger.

Format : *une page par séance*

Theme : *Au choix*

Pour chaque exercice, préciser :
- Objectif visé
- Critères de réussite
- Optionel: comment cet exercice se rattache au theme

#table(
  columns: (1fr, 1fr),
  align: left,
  [*Public*], [*Durée*],
  [Seniors (Karaté Santé)], [1h],
  [Enfants 6-8 ans], [1h],
  [Adolescents-adultes], [1h30],
)

#info[
  Un AFA sera present le 30 novembre. Penser a l'inclure dans votre plan de seance.

  Essayer d'inclure un timing approximatif pour chaque partie.
]
