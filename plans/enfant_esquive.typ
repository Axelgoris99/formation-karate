#import "PlanDeSeance_Horizontal.typ": conf, exo, horizontal_plan

#show: conf

#horizontal_plan(
  date: datetime(year: 2025, month: 11, day: 24),
  theme: "Esquive & Vigilance (\"Je ne me laisse pas toucher\")",
  target: "Enfants (6-8 ans)",
  notes: "- Ludopédagogie : apprendre par le jeu\n- Insister sur la sécurité",

  // COLUMN 1: PREPARATION
  prep: [
    #exo(title: "Salut", duration: "2 min")[]

    #exo(
      title: "Jeu : Les queues du diable",
      duration: "8 min",
      objectif: "Éveil cardio & Déplacements",
      criteres: "Protéger son dos, rester mobile",
    )[
      Chaque enfant a un foulard dans le dos. Attraper ceux des autres sans perdre le sien.
    ]

    #exo(title: "Mobilisation Imagée", duration: "5 min")[
      Échauffement articulaire ludique : "Dire non" (tête), "Nager le crawl" (bras), "Hula-hoop" (bassin), "Skieur" (genou).
    ]

    #exo(
      title: "Parcours Ninja",
      duration: "10 min",
      objectif: "Coordination & Fluidité",
      criteres: "0 obstacle touché",
      afa: "Gerer un des obstacles",
    )[
      1. Slalom (déplacement latéral)
      2. Passer sous obstacle (esquive rotative)
      3. Saut par-dessus obstacle.
    ],
  ],

  // COLUMN 2: HEART
  heart: [
    #exo(
      title: "La concentration",
      duration: "10 min",
      objectif: "Réaction visuelle & Discrimination",
      criteres: "Ne pas bouger avant le signal visuel & se concentrer",
      afa: "Commenter, donner un cote amusant",
    )[
      En ligne. Le prof donne un signal visuel : Bras levé = Se baisser (esquive haute). Bras baissé = Sauter (esquive basse).
    ]

    #exo(
      title: "Touche-Épaules",
      duration: "10 min",
      objectif: "Toucher sans être touché (Ma-ai)",
      criteres: "Garder l'équilibre, ne pas fermer les yeux",
      afa: "Passer et faire des demos, encourager",
    )[
      Par deux. Toucher l'épaule du partenaire main ouverte tout en protégeant les siennes, sans bouger.
    ]

    #exo(
      title: "Esquive!",
      duration: "8 min",
      objectif: "Esquiver",
      criteres: "Etre réactif (uke) et vif (tori)",
      afa: "Focus sur l'esquive et la maitrise",
    )[
      Par deux. Tori attaque en mai-geri. Uke esquive sur le côté.
    ]
    #exo(
      title: "Tourniquet",
      duration: "5 min",
      objectif: "Esquive haute & basse (Sauter/Baisser)",
      criteres: "Ne jamais quitter la ceinture des yeux",
      afa: "Peut corriger les hauteur et positions",
    )[
      En cercle autour d'un eleve plus age. Il fait tourner une ceinture:
      - Passage au sol = **Sauter** (esquive basse).
      - Passage en hauteur = **Se baisser** (esquive haute).
    ]
  ],

  // COLUMN 3: EXIT
  exit: [
    #exo(title: "Le Roi du Silence (Mokuso)", duration: "3 min")[
      En Seiza, yeux fermés. Le premier qui bouge ou parle a perdu. Retour au calme absolu.
    ]
    #exo(title: "Bilan Oral", duration: "2 minutes")[
      Question : "C'est quoi le plus important pour pas se faire toucher ?" (Réponse : Les yeux / La vitesse / La garde!).
    ]
    #exo(title: "Salut", duration: "2 minutes")[]
  ],
)
