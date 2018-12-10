DEF_TITLE(Quentin Quadrat - Etudiant ing&eacute;nieur informaticien syst&egrave;mes temps r&eacute;el)
HTML_HEADER
HEADER_TITLE

HEADER_MENU(CV,cv,Stage,syndex_presentation,ASE,ase,BSP,bsp,Dynamique,dyna,SpeedWay,speedway,Ecstasy,ecstasy,SimTaDyn,simtadyn,Forth,myforth,Helico,helico_intro,Home,X)

LEFT_MENU(
<a href="http://www.epita.fr"><img src="img/gistr.jpg" width="100" height="50" alt="logo" /></a>,
LEFT_RUBRIC(Projet T.R.,Projet H&eacute;licopt&egrave;re quatre h&eacute;lices,helico_intro-LANG.html),
LEFT_RUBRIC(Projets Informatiques,Interpr&eacute;teur Forth,myforth-LANG.html,SimTaDyn,simtadyn-LANG.html,Ecstasy,ecstasy-LANG.html,SpeedWay,speedway-LANG.html),
LEFT_RUBRIC(Rapports,Dynamique d'une voiture,dyna-LANG.html,Elimination des parties cach&eacute;es,bsp-LANG.html,Chargeur de fichier ASE,ase-LANG.html),
LEFT_RUBRIC(Exp&eacute;riences professionelles,C.V.,cv-LANG.html,Stage,syndex_presentation-LANG.html),
LICENCE<br />XHTML_VALIDATOR<br />PRINT_MAJ)

BEGIN_BODY

ICON_BUILD STRONG(ATTENTION l'ensemble de ce site est en construction)

<p>STRONG(Chapitrage :)</p>
<ul>
<li>LINK(helico_intro-LANG.html,Construction d'un h&eacute;licopt&egrave;re quatre h&eacute;lices)</li>
<li>LINK(myforth-LANG.html,Interpr&eacute;teur Forth)</li>
<li>LINK(simtadyn-LANG.html,Le projet SimTaDyn)</li>
<li>LINK(ecstasy-LANG.html,Le projet Ecstasy)</li>
<li>LINK(speedway-LANG.html,Le projet SpeedWay)</li>
<li>LINK(dyna-LANG.html,Dynamique simplifi&eacute;e d'une voiture)</li>
<li>LINK(bsp-LANG.html,Elimination des parties cach&eacute;es)</li>
<li>LINK(ase-LANG.html,Le format ASE)</li>
<li>LINK(syndex_presentation-LANG.html,SynDEx)</li>
</ul>

SECTION(Projet Temps R&eacute;el,tr)
SUBSECTION(Construction d'un
h&eacute;licopt&egrave;re quatre h&eacute;lices,helico,helico_intro)
BOX
<p>ICON_BUILD Etudes et r&eacute;alisations d'une plateforme
  volante &agrave; quatre h&eacute;lices du type Dragonflyer,
  X-UFO ou Engager.</p>

<p><b>PROJET EN COURS DE REALISATION (Fin du projet: novembre
    2006).</b>
</p>
ENDBOX

SECTION(Projets Informatiques,infos)
SUBSECTION(Interpr&eacute;teur Forth,myforth,myforth)
BOX
<p>ICON_BUILD MyForth est un interpr&eacute;teur de langage Forth en
  cours de r&eacute;alisation qui devrait &ecirc;tre, &agrave; terme,
  multit&acirc;che. Le Forth est un langage &agrave; pile qui
  poss&egrave;de un dictionnaire de mots agissant sur la pile. Un
  programme Forth d&eacute;finit de nouveaux mots qui s'ajoutent
  &agrave; ce dictionnaire. Il poss&egrave;de des m&eacute;canismes
  simples et g&eacute;n&eacute;raux permettant de construire de
  nouveaux types de donn&eacute;es efficaces.</p>

<p><b>PROJET EN COURS DE REALISATION (Fin du projet: indeterminee).</b></p>
ENDBOX


SUBSECTION(SimTaDyn,simtadyn,simtadyn)
BOX
<p>SimTaDyn est un prototype de tableur sp&eacute;cialis&eacute; dans
  la gestion d'objets dynamiques 2D comme les cartes
  g&eacute;ographiques ou les mailleurs 2D.  Il permet
  l'&eacute;dition d'objets 2D qui sont des pavages du plan
  manipulables comme des cellules d'une feuille d'un tableur. A chaque
  pav&eacute; peut-&ecirc;tre associ&eacute; &agrave; une dynamique
  d&eacute;finie par un mot Forth. Un pav&eacute; est polygonal, ses bords et
  ses sommets sont eux aussi vus comme des cellules d'un tableur. On
  peut donc aussi leur associer des mots Forth.</p>  ENDBOX

SUBSECTION(Ecstasy,ecstasy,ecstasy)
BOX
<p>Ecstasy est un jeu en 3D. Le joueur conduit un voiture dans une
  ville de type am&eacute;ricaine construite sur un tore. Elle est
  constitu&eacute;e d'immeubles, de terrains, d'un fleuve et d'une
  centaine de voitures qui s'arr&ecirc;tent aux feux tricolores.
  Chaque voiture est un modelis&eacute;e par un syst&egrave;me
  m&eacute;canique &agrave; 9 degr&eacute;s de libert&eacute;.</p>
  ENDBOX

SUBSECTION(SpeedWay,speedway,speedway)
BOX
<p>Speedway est un jeu de tirs en 3D, o&ugrave; des voitures
  divis&eacute;es en deux camps se combattent.  On peut jouer sur une
  demie douzaine de cartes et avec une dizaine de v&eacute;hicules
  diff&eacute;rents.</p>  ENDBOX

SECTION(Rapports)
SUBSECTION(Dynamique d'une voiture,dynavoit,dyna)
BOX
<p>Comment simuler une voiture avec sa suspension dans un jeu ? Tout
  d'abord, vous trouverez un bref rappel sur le principe de la moindre
  action.  Apr&egrave;s, on abordera l'&eacute;tude du tangage d'une
  moto : le v&eacute;hicule est mod&eacute;lis&eacute; en 2D, par une
  carcasse repr&eacute;sent&eacute;e par une barre de masse ponctuelle
  &agrave; laquelle sont accroch&eacute;es deux roues par des
  ressorts. Enfin, on attaquera l'&eacute;tude du roulis et du tangage
  d'une voiture : le v&eacute;hicule est mod&eacute;lis&eacute; en 3D,
  par une plaque &agrave; laquelle sont accroch&eacute;es quatre roues
  par des ressorts.</p>
ENDBOX

SUBSECTION(Elemination des parties cach&eacute;es,bsp,bsp)
BOX
<p>L'un des probl&egrave;mes importants lors d'une projection d'une
  sc&egrave;ne graphique, qu'elle soit en 2D ou en 3D, est
  d'&eacute;liminer ses parties cach&eacute;es. Cet expos&eacute; va
  pr&eacute;senter un algorithme pour r&eacute;soudre ce
  probl&egrave;me : l'algorithme de partitionement binaire de l'espace
  (Binary Space Partition en Anglais ou BSP), qui permet d'afficher
  les objets les plus &eacute;loign&eacute;s aux plus proches.</p>
ENDBOX

SUBSECTION(Le format ASE de 3D Studio Max,ase,ase)
BOX
<p>Lorsque vous utilisez 3D Studio Max, il se peut que vous voulez
  exporter votre dessin pour pouvoir l'utiliser dans votre jeu. L'un
  des nombreux formats d'exportation est le format ASE (ASCII Scene
  Export). Quelle est sa syntaxe ? Quelles sont les similitudes avec
  celle d'OpenGL ? Vous trouverez ici comment exporter une
  sc&egrave;ne statique compos&eacute;e d'une cam&eacute;ra et de
  plusieurs objets ainsi que leur texture.</p>
ENDBOX

SECTION(Exp&eacute;riences professionelles)
SUBSECTION(Curriculum Vitae,cv,cv)
BOX
<p>Acc&eacute;der &agrave; mon curriculum vitae (format html et
  pdf).</p>
ENDBOX

SUBSECTION(Aide &agrave; la conception de noyau applicatif pour le
logiciel SynDEx,syndex,syndex_presentation)
BOX
<p>Mon stage &agrave; l'INRIA, dans l'&eacute;quipe AOSTE.</p>
ENDBOX

END_BODY
HTML_FOOTER
