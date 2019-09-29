TITLE(Page personelle de Quentin Quadrat)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Temps réel, page personelle, EPITA)
DESCRIPTION(page personelle Quentin Quadrat)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_CV)

BEGIN_BODY
FORKME()

SECTION(Projets informatiques)
SUBSECTION(ICON_EYES,SimTaDyn,simtadyn,simtadyn)

<p>SimTaDyn est un prototype de tableur spécialisé dans la gestion d'objets
   dynamiques 2D comme les cartes géographiques ou les mailleurs 2D. Il permet
   l'édition d'objets 2D qui sont des pavages du plan manipulables comme des
   cellules d'une feuille d'un tableur. A chaque pavé peut-être associé à une
   dynamique définie par un mot Forth. Un pavé est polygonal, ses bords et ses
   sommets sont eux aussi vus comme des cellules d'un tableur. On peut donc
   aussi leur associer des mots Forth. A l'origine SimTaDyn était un projet
   étudiant mais depuis 2017 je tente de lui donner une deuxième vie.</p>

SUBSECTION(ICON_EYES,ChessNeuNeu,chessneuneu,chessneuneu)

<p>Etant un LINK(https://www.365chess.com/players/Quentin_Quadrat,ancien joueur
   d'échecs) j'ai voulu faire un petit programme d'échecs apprenant les régles
   du jeu d'échecs : à comprendre comment déplacer les pièces.</p>

SUBSECTION(ICON_EYES,SpeedWay,speedway,speedway)

<p>Projet étudiant, Speedway est un jeu de tirs en 3D, où des voitures divisées
   en deux camps se combattent. On peut jouer sur une demie douzaine de cartes
   et avec une dizaine de véhicules différents.</p>

SUBSECTION(ICON_EYES,Ecstasy,ecstasy,ecstasy)

<p>Projet étudiant, Ecstasy est un jeu en 3D. Le joueur conduit un voiture dans
   une ville de type américaine construite sur un tore. Elle est constituée
   d'immeubles, de terrains, d'un fleuve et d'une centaine de voitures qui
   s'arrêtent aux feux tricolores. Chaque voiture est un modélisée par un
   système mécanique à 9 degrés de liberté.</p>

SECTION(Tutoriels)
SUBSECTION(ICON_GEAR,Boite à outils Max-Plus,maxplus,maxplus)

<p>Portage de la boite à outil Max-Plus de ScicosLab pour Julia.</p>

SUBSECTION(ICON_READ,Principe moindre action,dyna,dyna)

<p>Comment simuler une voiture avec sa suspension dans un jeu ? Tout d'abord,
   vous trouverez un bref rappel sur le principe de la moindre action. Après, on
   abordera l'étude du tangage d'une moto : le véhicule est modélisé en 2D, par
   une carcasse représentée par une barre de masse ponctuelle à laquelle sont
   accrochées deux roues par des ressorts. Enfin, on attaquera l'étude du roulis
   et du tangage d'une voiture : le véhicule est modélisé en 3D, par une plaque
   à laquelle sont accrochées quatre roues par des ressorts.</p>

SUBSECTION(ICON_READ,Forth,forth,forth)

<p>Le Forth est un langage à pile qui possède un dictionnaire de mots agissant
   sur la pile. Un programme Forth définit de nouveaux mots qui s'ajoutent à ce
   dictionnaire. Il possède des mécanismes simples et généraux permettant de
   construire de nouveaux types de données efficaces.</p>

SUBSECTION(ICON_READ,Esterel,esterel,esterel)

<p>introduction au langage réactif Esterel.</p>

SUBSECTION(ICON_READ,Elimination des parties cachées,bsp,bsp)

<p>L'un des problèmes importants lors d'une projection d'une scène graphique,
   qu'elle soit en 2D ou en 3D, est d'éliminer ses parties cachées. Cet exposé
   va présenter un algorithme pour résoudre ce problème : l'algorithme de
   partitionement binaire de l'espace (Binary Space Partition en Anglais ou
   BSP), qui permet d'afficher les objets les plus éloignés aux plus
   proches.</p>

SECTION(Projets sur les systèmes embarqués et le temps réel)
SUBSECTION(ICON_GEAR,Hélicopètre quatre rotors,helico,helico_intro)

<p>Projet étudiant: Etude et réalisation d'une plateforme volante à quatre
rotors du type Dragonflyer, X-UFO ou Engager. Cette étude comprend les parties
suivantes :</p>

LIST([construction de la carcasse de l'hélicoptère et du banc de test],
    [réalisation de la carte électronique],
    [programmation des microcontrôleurs de la commande automatique],
    [communication avec un ordinateur non embarqué])

SUBSECTION(ICON_GEAR,Suivi automatique de voitures,cycab,stage2)

<p>Le CyCab est un véhicule électrique de 300 Kg développé à l'INRIA destiné au
   transport de deux personnes dans des environnements urbains et péri-urbains
   encombrés. Sa longueur n'excède pas celle d'un vélo, c'est-à-dire 1.9 mètre
   pour une largeur de 1.2 mètre. Le but de mon stage à l'INRIA Rocquencourt a
   été de poursuivre un travail mené sur le suivi automatique de CyCabs avec une
   caméra bas coût et les logiciels Scilab, Scicos et SynDEx.</p>

LEFT_BORDER(
HEADING(Projets informatiques,SimTaDyn,simtadyn-LANG.html,ChessNeuNeu,chessneuneu-LANG.html,SpeedWay,speedway-LANG.html,Ecstasy,ecstasy-LANG.html)
HEADING(Tutoriels,Principe moindre action,dyna-LANG.html,Forth,forth-LANG.html,Esterel,esterel-LANG.html,Elimination des parties cachées,bsp-LANG.html)
HEADING(Projets sur les systèmes embarqués et le temps réel,Hélicoptère 4 rotors,helico_intro-LANG.html,Suivi automatique de voitures,stage2-LANG.html)
)
END_BODY(,,ecstasy,Le projet Ecstasy)
