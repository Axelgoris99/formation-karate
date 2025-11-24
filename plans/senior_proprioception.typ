#import "PlanDeSeance_Horizontal.typ": conf, exo, horizontal_plan

#show: conf

#horizontal_plan(
  date: datetime(year: 2025, month: 11, day: 10),
  theme: "Équilibre & Proprioception (Prévention des chutes)",
  target: "Seniors",
  notes: "- Garder un peu de temps pour des explications",

  // COLUMN 1: PREPARATION
  prep: [
    #exo(title: "Salut + Brief", duration: "3 min", objectif: "Sociabilisation")[
      Debout (Ritsurei) / adapté selon les pathologies (éviter le seiza si genoux douloureux).
    ]

    #exo(title: "Mobilisation Articulaire", duration: "5 min")[
      Descendante : Nuque, épaules, coudes, poignets, bassin, genoux, chevilles.
    ]

    #exo(
      title: "Marche Consciente",
      objectif: "Concentration et réveil doux",
      criteres: "Fluide, pas sans bruit, dos droit.",
      duration: "5 min",
    )[
      Marcher lentement dans le dojo en déroulant bien le pied (talon-plante-orteils) et en se concentrant sur ses sensations.
    ]
  ],

  // COLUMN 2: HEART
  heart: [
    #exo(
      title: "L'ancrage (Kihon statique)",
      duration: "10 min",
      objectif: "Renforcement stabilisateurs & quadriceps",
      criteres: "Tenir 10s sans osciller. Regard horizontal, dos droit",
      afa: "Aider lors de la transition",
    )[
      Travail des positions naturelles vers plus larges (Kiba haut) et longues (Zenkutsu court). Transition lente.
    ]

    #exo(
      title: "Transfert de poids",
      objectif: "Gérer le déséquilibre sur un pied",
      criteres: "Pose légère, buste droit.",
      duration: "10 min",
      afa: "Aider et donner des conseils sur la position",
    )[
      Appui mur/barre optionel. Monter genou lent (prépa Mae Geri), tenir 2s, reposer loin devant en fente contrôlée. Idem en mawashi, yoko-geri.
    ]

    #exo(
      title: "Tai Sabaki (Multidirectionnel)",
      objectif: "Réactivité & Orientation",
      criteres: "Ne pas croiser les pieds, mains en garde.",
      duration: "10 min",
      afa: "Aider a la demonstration",
    )[
      Sur une croix au sol. Au signal, déplacement d'un pas (avant/arrière/latéral) et retour centre. Différentes positions.
    ]
  ],

  // COLUMN 3: EXIT
  exit: [
    #exo(title: "Kata Respiratoire", duration: "5 minutes")[
      Mouvement simple avec expiration longue.
    ]
    #exo(title: "Étirements Doux", duration: "5 minutes")[
      Mollets et chaine postérieure, sans forcer.
    ]
    #exo(title: "Debrief + Salut", duration: "3 minutes")[
      Ressenti sur l'équilibre et salut traditionnel.
    ]
  ],
)
