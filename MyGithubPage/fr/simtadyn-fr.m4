TITLE(Système d'information géographique)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(GIS, geography, spreadsheet, forth, dynamical simulation)
DESCRIPTION(A proof of concept project for a geographic information system)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

LEFT_HEADINGS(HEADING_SIMATDYN_LIKE)

BEGIN_BODY
FORKME(SimTaDyn)
SECTION(Le projet SimTaDyn : Simulation Tableur Dynamique)
SUBSECTION(ICON_READ,Présentation,intro)

<p>SimTaDyn (acronyme pour Simulation Tableur Dynamiquge) est un
   prototype de tableur spécialisé dans la gestion dynamique de cartes
   géographiques. Le but est de dessiner une carte géographique puis
   de la manipuler comme une feuille de tableur en faisant dessus des
   calculs complexes grâce à un langage interprété tel que
   MYLINK(forth,Forth), remplaçant avantageusement Visual Basic.</p>

<p>Des exemples typiques de SimTaDyn seraient:</p> LIST(la résolution
   de système par la méthode des éléments finis;,refaire un
   SimCity;,faire un outil de bloc diagrammes;, et bien
   d'autres.)

<p>SimTaDyn est à l'origine un projet d'étudiants fait à l'école EPITA
   en 2003-2004. Il a été écrit en C, Gtk+2.0, Opengl (Legacy),
   Forth et MySQL. Notons que dans le cadre scolaire où ce
   projet a été initialement lancé, un interpréteur Forth complet (tel
   que gForth) n'a pas été utilisé mais a été refait et ce dans un but
   d'apprentissage. Depuis fin 2016, SimTaDyn a été repris en tant
   projet personnel et re-développé en C++, Gtkmm-3.0, OpenGL 3.3,
   Forth.</p>

SUBSECTION(ICON_EYES,Aperçus de SimTaDyn legacy,view)

TABLE(2,PICTURE(simtadyn/window.jpg),
PICTURE(simtadyn/squelette.jpg))
CENTER(Cliquer sur les images pour les agrandir.)

SUBSECTION(ICON_GEAR,Au coeur de SimTaDyn,heart)

<p>Un tableur est un éditeur de feuilles de calcul, à savoir des
tables de cellules formant un pavage rectangulaire. Chaque cellule
contient des données de type divers y compris des fonctions
susceptibles de faire du calcul sur son contenu et celui des autres
cellules.</p>

<p>Un
EXTLINK(https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27information_g%C3%A9ographique,Système
d'Information Géographiques) (SIG) est un autre type d'éditeur
manipulant des tables contenant des champs ayant des interprétations
géographiques. Elles sont représentées par des cartes permettant
d'accéder facilement aux champs n'ayant pas d'interprétations
géographiques. De plus, les SIG ne contiennent pas de fonctions
susceptibles d'agir sur la table donc sur la carte. L'accès aux champs
non géographiques est obtenu en pointant sur un objet
particulier. Seuls les champs de l'objet désigné sont affichés
contrairement aux tableurs qui essaient toujours de montrer l'ensemble
des données. Par contre, leurs outils d'édition de cartes sont très
puissants.</p>

<p>Les fonctionnalités des tableurs et des SIG ont donc toujours été
dissociées. SimTaDyn est un prototype de synthèse de ces deux types de
fonctionnalités. Il manipule des tables dynamiques c.à.d. des tables
pouvant contenir en plus des données standards des fonctions capables
de modifier la table elle-même. Il représente les données
géographiques en positionnant les objets correspondants dans le
plan. Il essaie de visualiser simultanément tous les objets de même
type.</p>

<p>SimTaDyn, à la différence des tableurs standards, ne possède plus
forcément un pavage de cellules rectangulaires mais un pavage
polygonal quelconque du plan. De plus, les frontières des pavés --
qui sont des lignes brisées donc, finalement, une union de segments
-- sont considérées comme des cellules à part entière. De même, les
bords des segments sont des sommets eux mêmes considérés comme des
cellules à part entière. Donc finalement, SimTaDyn, possède trois
types de cellules : les sommets, les segments et les pavés. Les
cellules contiennent aussi plusieurs champs, dont certains peuvent
  être des fonctions mathématiques.</p>

CAPTION_PICTURE(simtadyn/utilisation.jpg)

<p>Les calculs sur les cellules sont faits grâce à un langage
  interprété de type Forth qui a été adapté pour le projet. Forth
  étant un langage minimaliste mais très puissant car auto-évoluant,
  il remplace Visual Basic. Mon MYLINK(forth,article) est une
  introduction à ce langage.</p>

SUBSECTION(ICON_DOWNLOAD,Téléchargement,download)

<p>Le code source est disponible sur
GITHUB(Lecrapouille/SimTaDyn,GitHub) en Open source. La branche git
ITALIC(master) pointe sur la version 2016 de SimTaDyn en cours de
re-écriture (et donc incomplet) alors que la branche git
ITALIC(release-EPITA-2004) pointe sur la version legacy de SimTaDyn
(codée rapidement mais l'IDE est plus complète) et peut servir de
démonstrateur.</p>

<p>Les sources de la version legacy de SimTaDyn peuvent également être
téléchargées ici. Cette version fonctionne sur une Ubuntu 16.04 et à
l'époque sur Mac Os X 10.3 avec X11. La compilation n'a jamais été
testé pour Windows.</p>

TABLE(3,LINK(simtadyn/simtadyn.pdf,Le rapport),
LINK(https://github.com/Lecrapouille/SimTaDyn/releases/tag/v0.1,Les Sources de SimTaDyn 2004),
LINK(https://github.com/Lecrapouille/SimTaDyn/releases/tag/v0.4,Les Sources de SimTaDyn 2019),
ICON_PDF,ICON_TGZ,ICON_TGZ,
400 Ko --- format PDF,
500 Ko --- format TAR.GZ,
1.4Mo --- format TAR.GZ)

SUBSECTION(ICON_GEAR,Avancement,avancement)

<p>La nouvelle version du projet étant en cours de re-écriture, voici
les différences avec la version legacy et ce qui reste à
améliorer:</p>

LIST(STRONG(Interpréteur Forth:) fonctionnel mais manque encore des mots de
  haut niveau pour être pleinement utilisable seul ainsi que
  l'importation automatique de bibliothèques partagées (codées en C)
  en mots Forth.,

  STRONG(Mots Forth manipulant les éléments de la carte:) à implémenter. Dans
  la version legacy c'était loin d'être optimal.,

  STRONG(Editeur de texte pour Forth:) une IDE minimale est faite:
  coloration syntaxique, détection de mots inconnus, auto-complétion
  (ce que ne proposait pas la version legacy). Il manque néanmoins le
  mode interactif et des outils d'aide (comme l'affichage du
  dictionnaire[,] de la pile[,] du déboguer) qui restent à faire.,

  STRONG(Visualisation de la carte:) la version actuelle avec
  gtkmm-2.4 utilisant OpenGL legacy affichait les noeuds 2D d'une
  carte mais le passage à gtkmm-3.0 uniquement compatible avec OpenGL
  3.3 a cassé le système d'affichage. La version legacy de SimTaDyn
  proposait un affichage 3D mais non manipulable.,

  STRONG(Editeur de carte:) complètement à faire alors que la version
  legacy proposait l'ajout/suppression et déplacement des cellules
  mais été parfois bogués ou lourds en nombre de clics souris à faire
  pour l'utilisateur. L'OpenGL moderne est moins souple que son
  ancienne version pour développer autre chose que des jeux. La
  nouvelle version de SimTaDyn utilise un
  EXTLINK(https://research.ncl.ac.uk/game/mastersdegree/graphicsforgames/scenegraphs/Tutorial%206%20-%20Scene%20Graphs.pdf,graphe
  de scène) pour afficher les cartes.,

  STRONG(Import/Exportation de fichiers pour/vers des logiciels
  connus:) La version actuelle importe uniquement le format shapefile
  des GIS[,] mais prévois d'importer des fichiers de GIS tels que
  QGIS[,] OpenStreetMap[,] PostGIS. La version legacy utilise MySQL
  pour sauvegarder des cartes. Notons que la nouvelle version va
  proposer son propre type de fichier de sauvegarde.,

  STRONG(Application:) seule la version legacy proposait un petit exemple.)

END_BODY(ecstasy,Le projet Ecstasy,myforth,Interpréteur Forth)
