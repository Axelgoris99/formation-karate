#import "PlanDeSeance_Horizontal.typ": conf, exo, horizontal_plan

#show: conf

#horizontal_plan(
  date: datetime(year: 2025, month: 11, day: 24),
  theme: "Gestion de la distance (Ma-ai) & Entrée/Sortie",
  target: "Adolescents-Adultes",
  notes: "- Intensité soutenue (Cardio)\n- Vigilance stricte sur le contrôle",

  // COLUMN 1: PREPARATION (20 min)
  prep: [
    #exo(title: "Salut", duration: "2 min")[]

    #exo(title: "Échauffement articulaire", duration: "5 min")[
      Échauffement articulaire complet et dynamique.
    ]

    #exo(title: "Renforcement (Gainage)", duration: "5 min")[
      Léger, pour se préparer à être touché.

      Circuit : 3 x 45s (Planche face, latérale G, latérale D).
    ]

    #exo(
      title: "Combat Souple & Activation",
      duration: "10 min",
      objectif: "Cardio & Appuis dynamiques",
      criteres: "Jambes légères, garde",
    )[
      Déplacements libres. Variez les rythmes !

      Jeu 'Touché-Épaule' : par deux, essayer de toucher l'épaule du partenaire en restant mobile. Puis ventre. Puis dos. Puis les combinaisons.
    ]
  ],

  // COLUMN 2: HEART (60 min)
  heart: [
    #exo(
      title: "L'Accordéon (Distance Miroir)",
      duration: "10 min",
      objectif: "Maintenir la zone de sécurité",
      criteres: "Réaction immédiate, distance constante",
      afa: "Surveiller les distances et corriger",
    )[
      Par deux. A avance/recule en changeant brusquement de rythme. B doit s'adapter instantanément pour garder la distance exacte d'un bras tendu.
    ]

    #exo(
      title: "Drill : Attaque - Remise",
      duration: "20 min",
      objectif: "Entrer et sortir du danger",
      criteres: "Retrait explosif, remise active",
      afa: "Controle de la force et distance",
    )[
      Tori attaque (ex: Kizami Zuki), touche et ressort aussitôt. Uke reste passif à l'entrée mais tente de toucher Tori lors de sa fuite (contre-attaque). Varier les attaques/remises.
    ]

    #exo(
      title: "Combat à thème (Longue distance)",
      duration: "20 min",
      objectif: "Prise d'initiative de loin (To-Ma)",
      criteres: "Aucun corps à corps accepté",
    )[
      Combat souple. Seules les attaques déclenchées à longue distance avec un grand déplacement sont validées. Stop si trop près.
    ]
    #exo(
      title: "Combat arbitré (Remise)",
      duration: "10 min",
      objectif: "Situation de combat",
      criteres: "Aucun corps à corps accepté",
      afa: "Arbitre central d'une deuxième rencontre",
    )[
      Combat arbitré. Les remises réussies comptent double.
    ]
  ],

  // COLUMN 3: EXIT (20 min)
  exit: [
    #exo(title: "Étirements passifs", duration: "7 minutes")[
      Retour au calme. Focus sur les fléchisseurs de hanches et ischios-jambiers.

      Papillon / Fente avec genou au sol / Assis, chercher à attraper le pied.
    ]

    #exo(title: "Petite méditation", duration: "5 minutes")[
      Réfléchir à ce qui a été pratiqué et retour au calme.
    ]

    #exo(title: "Suggestions & Échange", duration: "0 ~ 5 minutes")[
      Échanger sur ce que les pratiquants pensent être efficace, partage de contenu (sites, vidéos, articles, etc.)

      Recueillir les doutes/certitudes pour organiser la prochaine session.
    ]

    #exo(title: "Salut", duration: "3 minutes")[]
  ],
)
