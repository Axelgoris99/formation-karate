#import "PlanDeSeance_Horizontal.typ": conf, exo, horizontal_plan

#show: conf

#horizontal_plan(
  date: datetime(year: 2026, month: 1, day: 6),
  theme: "Heian Shodan : Libération et Percussion (Gedan -> Tetsui)",
  target: "Adulte Mixte (Blanche à Marron)",
  notes: "- Attention aux articulations et aux coups.",

  // COLUMN 1: PREPARATION
  prep: [
    #exo(title: "Salut + Brief", duration: "3 min")[]

    #exo(title: "Échauffement Spécifique", duration: "7 min")[
      - Poignets & Épaules (pour les saisies).
    ]

    #exo(
      title: "Jeu de Distance",
      objectif: "Ne pas subir la saisie",
      criteres: "Dès que le partenaire avance, j'absorbe en reculant.",
      duration: "5 min",
      afa: "Donne du rythme!"
    )[
      Par deux. A essaie de toucher l'épaule de B. B doit reculer d'un pas *au moment exact* du contact pour garder sa distance de sécurité.
    ]

     #exo(
      title: "Jeu 'Saisie-Détente'",
      objectif: "Proprioception & Relâchement",
      criteres: "Ne pas utiliser de force.",
      duration: "5 min",
    )[
      Par deux. A saisit le poignet de B. B doit relâcher l'épaule et bouger le coude pour trouver l'angle de sortie sans force musculaire.
    ]
    #exo(
      title: "Heian Shodan",
      objectif: "Se rememorer le kata",
      criteres: "Memorisation et technique",
      duration: "3 min",
    )[Les grades servent de reference.]
  ],

  // COLUMN 2: HEART (Le cœur du Bunkaï)
  heart: [
    #exo(
      title: "Gedan Barai (Zenkutsu) -> Recul en Tetsui",
      duration: "5 min",
      objectif: "Coordination Bras/Jambes",
      criteres: "Ancrage au sol sur le Tetsui.",
      afa:"Pousse les gradés sur la vitesse"
    )[]
  #exo(
      title: "Bunkaï Tetsui",
      objectif: "Armement = Defense",
      criteres: "Reussit a bloquer",
      duration: "8 min",
      afa: "Corrige les pieds."
    )[
      1. A attaque. B Gedan Barai.
      2. A attaque sur place. B utilise l'armee du tetsui pour bloquer.
      3. A recule et B remise.
    ]
    #exo(
      title: "Bunkaï Degagement",
      objectif: "Comprendre le levier",
      criteres: "Pas de force musculaire.",
      afa: "Circule avec une cible et laisse les eleves essayer le tetsui.",
      duration: "8 min"
    )[
      1. A saisit le poignet.
      2. B ramene pour casser la saisie.
      3. B laisse tomber son bras (Tetsui) sur l'épaule de A.
    ]
    #exo(
      title: "Bunkaï Complet",
      objectif: "Enchainement",
      criteres: "Rythme et precis",
      duration: "5 min"
    )[
      1. A attaque Oi Tsuki shodan - B bloque Gedan Barai
      2. Retour a l'etape precedente.
      3. Remise.
    ]
  ],

  // COLUMN 3: EXIT (La Liaison Kata)
  exit: [
    #exo(title: "Alternatives / Discussion", objectif: "Ouvrir vers d'autres situations", duration: "5 minutes", afa: "Demontre les techniques avec un grade.")[
      - A saisit, B degage mais saisit a la place.
      - B attrape le poignet et fait une cle avec le tetsui, directement (Le gedan barai en "attaque").
      - A tente de saisir, B degage avant en Tetsui.
      - Experts: A Saisie arriere - B se retourne, coup a l'aine, cle et frappe.
    ]
    #exo(title: "Kata Complet en Respiratoire", duration: "3 minutes",         objectif: "Réintégrer la sensation du Bunkaï dans la forme",criteres:"Utilite du mouvement", afa: "Donne le rythme (compte) d'une voix forte et énergique ")[
      L'intention dans les mouvements.
    ]
    #exo(title: "Retour au Calme + Salut", duration: "3 minutes")[]
  ],
)
