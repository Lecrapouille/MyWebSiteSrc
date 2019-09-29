TITLE(Page personelle de Quentin Quadrat)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Temps r�el, page personelle, EPITA)
DESCRIPTION(page personelle Quentin Quadrat)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_CV)

BEGIN_BODY
FORKME()

SECTION(Projets informatiques)
SUBSECTION(ICON_EYES,SimTaDyn,simtadyn,simtadyn)

<p>SimTaDyn est un prototype de tableur sp�cialis� dans la gestion d'objets
   dynamiques 2D comme les cartes g�ographiques ou les mailleurs 2D. Il permet
   l'�dition d'objets 2D qui sont des pavages du plan manipulables comme des
   cellules d'une feuille d'un tableur. A chaque pav� peut-�tre associ� � une
   dynamique d�finie par un mot Forth. Un pav� est polygonal, ses bords et ses
   sommets sont eux aussi vus comme des cellules d'un tableur. On peut donc
   aussi leur associer des mots Forth. A l'origine SimTaDyn �tait un projet
   �tudiant mais depuis 2017 je tente de lui donner une deuxi�me vie.</p>

SUBSECTION(ICON_EYES,ChessNeuNeu,chessneuneu,chessneuneu)

<p>Etant un LINK(https://www.365chess.com/players/Quentin_Quadrat,ancien joueur
   d'�checs) j'ai voulu faire un petit programme d'�checs apprenant les r�gles
   du jeu d'�checs : � comprendre comment d�placer les pi�ces.</p>

SUBSECTION(ICON_EYES,SpeedWay,speedway,speedway)

<p>Projet �tudiant, Speedway est un jeu de tirs en 3D, o� des voitures divis�es
   en deux camps se combattent. On peut jouer sur une demie douzaine de cartes
   et avec une dizaine de v�hicules diff�rents.</p>

SUBSECTION(ICON_EYES,Ecstasy,ecstasy,ecstasy)

<p>Projet �tudiant, Ecstasy est un jeu en 3D. Le joueur conduit un voiture dans
   une ville de type am�ricaine construite sur un tore. Elle est constitu�e
   d'immeubles, de terrains, d'un fleuve et d'une centaine de voitures qui
   s'arr�tent aux feux tricolores. Chaque voiture est un mod�lis�e par un
   syst�me m�canique � 9 degr�s de libert�.</p>

SECTION(Tutoriels)
SUBSECTION(ICON_GEAR,Boite � outils Max-Plus,maxplus,maxplus)

<p>Portage de la boite � outil Max-Plus de ScicosLab pour Julia.</p>

SUBSECTION(ICON_READ,Principe moindre action,dyna,dyna)

<p>Comment simuler une voiture avec sa suspension dans un jeu ? Tout d'abord,
   vous trouverez un bref rappel sur le principe de la moindre action. Apr�s, on
   abordera l'�tude du tangage d'une moto : le v�hicule est mod�lis� en 2D, par
   une carcasse repr�sent�e par une barre de masse ponctuelle � laquelle sont
   accroch�es deux roues par des ressorts. Enfin, on attaquera l'�tude du roulis
   et du tangage d'une voiture : le v�hicule est mod�lis� en 3D, par une plaque
   � laquelle sont accroch�es quatre roues par des ressorts.</p>

SUBSECTION(ICON_READ,Forth,forth,forth)

<p>Le Forth est un langage � pile qui poss�de un dictionnaire de mots agissant
   sur la pile. Un programme Forth d�finit de nouveaux mots qui s'ajoutent � ce
   dictionnaire. Il poss�de des m�canismes simples et g�n�raux permettant de
   construire de nouveaux types de donn�es efficaces.</p>

SUBSECTION(ICON_READ,Esterel,esterel,esterel)

<p>introduction au langage r�actif Esterel.</p>

SUBSECTION(ICON_READ,Elimination des parties cach�es,bsp,bsp)

<p>L'un des probl�mes importants lors d'une projection d'une sc�ne graphique,
   qu'elle soit en 2D ou en 3D, est d'�liminer ses parties cach�es. Cet expos�
   va pr�senter un algorithme pour r�soudre ce probl�me : l'algorithme de
   partitionement binaire de l'espace (Binary Space Partition en Anglais ou
   BSP), qui permet d'afficher les objets les plus �loign�s aux plus
   proches.</p>

SECTION(Projets sur les syst�mes embarqu�s et le temps r�el)
SUBSECTION(ICON_GEAR,H�licop�tre quatre rotors,helico,helico_intro)

<p>Projet �tudiant: Etude et r�alisation d'une plateforme volante � quatre
rotors du type Dragonflyer, X-UFO ou Engager. Cette �tude comprend les parties
suivantes :</p>

LIST([construction de la carcasse de l'h�licopt�re et du banc de test],
    [r�alisation de la carte �lectronique],
    [programmation des microcontr�leurs de la commande automatique],
    [communication avec un ordinateur non embarqu�])

SUBSECTION(ICON_GEAR,Suivi automatique de voitures,cycab,stage2)

<p>Le CyCab est un v�hicule �lectrique de 300 Kg d�velopp� � l'INRIA destin� au
   transport de deux personnes dans des environnements urbains et p�ri-urbains
   encombr�s. Sa longueur n'exc�de pas celle d'un v�lo, c'est-�-dire 1.9 m�tre
   pour une largeur de 1.2 m�tre. Le but de mon stage � l'INRIA Rocquencourt a
   �t� de poursuivre un travail men� sur le suivi automatique de CyCabs avec une
   cam�ra bas co�t et les logiciels Scilab, Scicos et SynDEx.</p>

LEFT_BORDER(
HEADING(Projets informatiques,SimTaDyn,simtadyn-LANG.html,ChessNeuNeu,chessneuneu-LANG.html,SpeedWay,speedway-LANG.html,Ecstasy,ecstasy-LANG.html)
HEADING(Tutoriels,Principe moindre action,dyna-LANG.html,Forth,forth-LANG.html,Esterel,esterel-LANG.html,Elimination des parties cach�es,bsp-LANG.html)
HEADING(Projets sur les syst�mes embarqu�s et le temps r�el,H�licopt�re 4 rotors,helico_intro-LANG.html,Suivi automatique de voitures,stage2-LANG.html)
)
END_BODY(,,ecstasy,Le projet Ecstasy)
