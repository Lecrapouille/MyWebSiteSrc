DEF_TITLE(Les arbres de partitionnement binaire de l'espace (BSP))
HTML_HEADER

HEADER_TITLE
HEADER_MENU(CV,cv,Stage,syndex_presentation,ASE,ase,BSP,X,Dynamique,dyna,SpeedWay,speedway,Ecstasy,ecstasy,SimTaDyn,simtadyn,Forth,myforth,Helico,helico_intro,Home,index)
LEFT_MENU(LEFT_RUBRIC(Sommaire) XHTML_VALIDATOR<br /> PRINT_MAJ)

BEGIN_BODY
SECTION(Les BSP)
SUBSECTION(T&eacute;l&eacute;chargement,download)
BOX
<p>L'un des probl&egrave;mes importants lors d'une projection d'une
sc&egrave;ne graphique, qu'elle soit en 2D ou en 3D, est
d'&eacute;liminer les parties cach&eacute;es de la sc&egrave;ne. Cet
expos&eacute; va pr&eacute;senter un algorithme pour r&eacute;soudre
ce probl&egrave;me : l'algorithme de partitionnement binaire de
l'espace (Binary Space Partition en Anglais ou BSP), qui permet
d'afficher les objets les plus &eacute;loign&eacute;s avant d'afficher
les plus proche. Ce proc&eacute;d&eacute; est utilis&eacute; par des
jeux tels que Half-Life ou Doom.</p>

<p>Ce rapport a &eacute;t&eacute;
r&eacute;alis&eacute;, en fran&ccedil;ais, pour le cours de micro
informatique Epita (2001-2002).</p>
ENDBOX

SUBSECTION(Sommaire du rapport,som)
BOX

<ul>
  <li>Sc&egrave;ne 3D</li>
  <li>Rappel de g&eacute;om&eacute;trie et de calcul matriciel</li>
  <ul>
    <li>Calcul matriciel</li>
    <li>G&eacute;om&eacute;trie 2D</li>
    <li>G&eacute;om&eacute;trie projective 2D</li>
    <li>G&eacute;om&eacute;trie projective 3D</li>
  </ul>
  <li>Algorithme de partitionnement binaire de l'espace (BSP)</li>
  <ul>
    <li>Partitionnement binaire d'un ensemble</li>
    <li>Repr&eacute;sentation d'une sc&egrave;ne 2D par un BSP</li>
    <li>Algorithme du peintre
  </ul>
  <li>Annexes</li>
  <ul>
    <li>D&eacute;termination de l'appartenance d'un point &agrave; un
    demi-espace</li>
    <li>Partition d'une sc&egrave;ne 2D en deux sc&egrave;nes par une
    coupure</li>
    <li>R&eacute;f&eacute;rences</li>
  </ul>
</ul>
ENDBOX

SUBSECTION(Voir le rapport,rap)
BOX

TAB_DIM_1(LINK(bsp/bsp.pdf,Le rapport),ICON_PDF,format PDF -- 70 Ko)
ENDBOX

SUBSECTION(Liens concernant les arbres BSP,links)
BOX

<p>Voici quelques sites qui ont retenu mon attention concernant OpenGL :</p>
<ul>
  <li>La FAQ sur les arbres BSP : EXTLINK(http://www.faqs.org/faqs/graphics/bsptree-faq/)</li><li>Un livre de M. Abrash en français : ITALIQUE(Le zen de la programmation graphique) Edt. International Thomson Publishing, France 1997.</li>
  <li>Beaucoup d'autres sites web parlent et inmpl&eacute;mente des arbres BSP dans leur jeu (EXTLINK(http://www.gametutorials.com/,gametutorials), EXTLINK(http://www.gamedev.net/,GameDev). Google est votre ami !</li>
</ul>
ENDBOX

END_BODY
HTML_FOOTER
