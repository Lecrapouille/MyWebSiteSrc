HELICO_HTML_BEGIN

SECTION(Partie mat&eacute;rielle)
<!-- <p>STRONG(ATTENTION !!!) Vu que ce projet ne fait que commencer, les -->
<!-- infos (raisonements) donn&eacute;es sont encore 'immatures' et sont -->
<!-- STRONG(FORTEMENT) succeptibles d'&eacute;voluer (dans le bon ou mauvais -->
<!-- sens). Elles ne sont donn&eacute;es qu'&agrave; titre indicatif.</p> -->

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#matos,Liste du mat&eacute;riel)</li>
  <li>LINK(#croix,Construction de la croix)</li>
  <li>LINK(#moteur,Construction des attaches des moteurs)</li>
  <li>LINK(#pieds,Construction des pieds)</li>
  <li>LINK(#balanc,Construction des pieds de la balancoire)</li>
</ul>

SUBSECTION(Contexte)
BOX
<p>Cette page explique comment construire la carcasse de
  l'h&eacute;lico. Le design a &eacute;t&eacute; pens&eacute; pour que
  l'h&eacute;licopt&egrave;re soit le plus simple &agrave; fabriquer
  et qu'il soit de petite taille. Avec l'exp&eacute;rience, une
  journ&eacute;e suffit pour construire la croix, les pattes et les
  attaches des moteurs.</p>
<p><!-- Vu que l'appareil est 'fait main' il reste quelques
  probl&egrave;mes de solidit&eacute; (colle qui lache).-->Le site
  EXTLINK(http://perso.orange.fr/pjdag/nico/index.html,suivant)
  d&eacute;crit une autre m&egrave;thode pour construire un
  h&eacute;licopt&egrave;re de taille et de poids plus important.</p>
  ENDBOX

SUBSECTION(Liste du mat&eacute;riel,matos)
BOX

TAB_DIM_4(STRONG(Nom),STRONG(Quantit&eacute;),STRONG(Prix unitaire
(euros)),STRONG(Remarques), Moteur &eacute;lectrique courant continu
&agrave; balais
EXTLINK(http://shop.graupner.de/webuerp/servlet/AI?ARTN=7280,Graupner
Micro Speed 6V),4,5,Poids: 16 g. Pouss&eacute;e max.: xxg en lui
fournissant 8.5V et 1.2A (avec 1 r&eacute;sistance 1&Omega; en
s&eacute;rie). Equivalent au moteur
EXTLINK(http://www.gws.com.tw/english/product/powersystem/edp.htm,GW/EDP-05).,H&eacute;lice
&agrave; pas invers&eacute;,0,?,Des h&eacute;lices de cette taille
&eacute;tant introuvables ...,H&eacute;lice &agrave; pas
fixe,4,2,... on est oblig&eacute; d'utiliser quatre h&eacute;lices
&agrave; pas fixe.,Gyroscope py&eacute;zo-&eacute;lectrique
EXTLINK(,GWS PG03),3,25 sur Ebay,Ce qui nous int&eacute;resse ici
c'est uniquement le capteur gyro ENC-03
EXTLINK(http://www.murata.com/catalog/s42e3.pdf,datasheet).Cette
m&eacute;thode est la plus &eacute;conomique (prix et
difficult&eacute; des soudures) mais n&eacute;c&eacute;ssite de
'hacker' le gyro (voir LINK(helico_electro-LANG.html,ici)).,
Acc&eacute;l&eacute;rom&egrave;tre,1,5,C'est le capteur le plus utile
: il indique la verticale. Vu la taille petite (4x4 mm) il est dur de
la souder manuellement,T&eacute;l&eacute;m&egrave;tre
GP2Y0D340,1,15,Passe de l'&eacute;tat 0 &agrave; 1 &agrave; 40 cm d'un
obstacle
EXTLINK(http://info.hobbyengineering.com/specs/SHARP-gp2y0d340_j.pdf,Datasheet).,Microcontr&ocirc;leur
PIC 16F876A
EXTLINK(http://ww1.microchip.com/downloads/en/DeviceDoc/39582b.pdf,(datasheet)),2,?,On
peut choisir entre 1 dsPIC ou 2 PIC 16F876A vu que
...,Microcontr&ocirc;leur dsPIC LINK(???),1,?,... le dsPIC a quatre
sorties PWM alors que le PIC en a que deux.,Programmeur (ds)PIC,1,30
sur Ebay,On peut se construire son propre programmeur
EXTLINK(http://www.jdm.homepage.dk/newpic.htm,JDM) PIC., C&acirc;ble
s&eacute;rie,1,?,Pour la communication avec le PC.,Composants
&eacute;lectroniques,,,(AOP, Mosfet, connectique port s&eacute;rie,
...).,Tube de carbone creux (diam&egrave;tre: 6mm; longueur: >=
20cm),2,?,Pour construire les axes de l'h&eacute;lico.,Plaque
d'aluminium,1,?,Pour construire la croix qui reliera les 2 tubes de
carbon entre eux.,Tube rond de laiton 2x0.3-1m,1,?,Serviront &agrave; Pour
construire les pieds qui rentreront dans les tubes de
carbone.,Batterie,0,0,Il n'y aura pas de batterie &agrave; cause de
leur poids. L'h&eacute;lico sera branch&eacute; sur une alimentation
externe (12V)., STRONG(Total : h&eacute;lico 4
h&eacute;lices),STRONG(1),STRONG(170),C'est le prix d'un X-UFO)

<p>STRONG(Note:) Les anciens moteurs &eacute;lectrique &agrave; balais
EXTLINK(http://www.netshop.nl/shop/krikkem/contents/nl/d231_01.html,Graupner
Speed 195) &eacute;taient utilis&eacute;. Leur poids est de 7 g. Ils ont une
pouss&eacute;e de 30g en leur fournissant ??V et ??A. Equivalent au
moteur
EXTLINK(http://www.gws.com.tw/english/product/powersystem/edp.htm,GW/EDP-05). Ils
ont &eacute;t&eacute; remplac&eacute; par des moteurs Micro Speed +6V Graupner car ces
derniers sont plus puissants.</p>  ENDBOX

dnl SECTION(Construction de l'h&eacute;lico,helico)
SUBSECTION(Construction de la croix,croix)
BOX
<p>Les axes &agrave; de l'h&eacute;licopt&egrave;re sont obtenus en coupant deux
  tube en fibre de carbone de 20cm de longueur. Ces tubes sont creux
  (diam&egrave;tre 6 mm) afin de pouvoir ins&eacute;rer les tiges de
  laiton qui serviront de pieds.</p>
<p>Pour ma part, le carbone n'est pas un tr&egrave;s bon mat&eacute;riau. En
  effet, quand il recoit une onde (choc, vibration), cette derniere se
  propage en s'amplifiant. On peut facilement faire
  l'exp&eacute;rience, avec notre tube. Donc, plus les tiges de
  l'h&eacute;lico seront longues, plus les capteurs ressentiront ces
  vibrations et plus il sera difficile de filtrer les bruits des
  capteurs. J'ignore quel est le meilleur mat&eacute;riau, mais les
  deux tubes de carbone de 20cm sont assez rigides pour notre
  appareil.</p>
<p>Les deux tiges de carbone doivent &ecirc;tre attach&eacute;es
  ensemble. C'est le r&ocirc;le de
  la plaque d'aluminium. Il faut d&eacute;couper deux
  carr&eacute;s de longueur arbitraire MATHS(C) dans la plaque
  d'alumium et dessiner sur chaque
  carr&eacute; le LINK(helico/schemas/patron_croix.jpg,patron de
  la figure ci dessous gauche).

TAB_DIM_2(CAPTION(helico/schemas/patron_croix.jpg),
CAPTION(helico/photos/croix.jpg))

Sur ce patron nous avons trois formes
  g&eacute;om&eacute;triques :</p>
<ul>
<li>Les deux petits triangles (en pointill&eacute;) qui sont des
parties &agrave; &eacute;liminer;</li>
<li>Les deux grands triangles qui sont des parties &agrave; coller avec
  les deux autres triangles de la deuxi&egrave;me plaque;</li>
<li>Le rectangle de longueur MATHS(L) arbitraire et de largeur
  MATHS(&pi;D) (o&ugrave; D doit &ecirc;tre le diam&egrave;tre des
  tubes de l'h&eacute;lico donc, ici, 6 mm)
  va s'enrouller autour d'une des deux tiges/axes de
  l'h&eacute;lico.</li>
</ul>

<p>Avec l'aide d'un &eacute;tau, on plie les triangles le long des
  ar&ecirc;tele segment du rectangle et on enroulle les rectangles sur les
  tubes de carbone. Avec de la colle super forte on colle
  l'ensemble. Avec des pinces &agrave; linge on sert les triangles
  afin de bien les coller ensemble LINK(helico/photos/croix.jpg,figure
  haut droit). Le fait de limer la surface des triangles aide &agrave;
  mieux coller les 2 plaques entre elles.</p>
<p>Attendre un jour entier, que la colle prenne ;-(</p>

ENDBOX

SUBSECTION(Construction des attaches des moteurs,moteur)
BOX
<p>On va reprendre le m&ecirc;me principe que pour la croix. Avec la
  plaque d'aluminium, on coupe quatre pi&eacute;ces selon le patron
  dessin&eacute; en dessous.</p>

TAB_DIM_2(CAPTION(helico/schemas/patron_attache.jpg),
CAPTION(helico/photos/attachehelicev2.jpg))

<p>Le rectangle de longueur 1.88cm (&pi;D) et de largeur 1cm va
s'enrouller autour du tube en fibre de carbone. Les deux rectangles
verticaux (1 x 4cm) se retrouveront c&ocirc;te &agrave;
c&ocirc;te. Ils vont permettent d'entourer le moteur. La surface du
moteur est alors entierement recouverte. D'o&ugrave; une bonne surface
de fixation pour la colle. Une partie facultative est le capuchon
trou&eacute; (1 x 1.5 cm) qui se rabat sur le haut du moteur.</p>
ENDBOX

SUBSECTION(Construction des pieds,pieds)
BOX
<p>On usinera la tige de laiton pour cr&eacute;er les quatre pieds de
l'h&eacute;licopt&egrave;re.  Comme les deux axes de
l'h&eacute;licopt&egrave;re reposent l'un sur l'autre, on coupera deux
tiges parmi les quatre l&eacute;gerement plus longues que les autres.  La
diff&eacute;rence de longueur est le diam&egrave;tre de l'axe de
l'h&eacute;licopt&egrave;re. Avec l'&eacute;tau, on plie les pieds en
forme de L (figure ci dessous gauche).</p>

<p>Si les tiges de laiton sont trop fines pour entrer dans les axes de
  l'h&eacute;licopt&egrave;re, on peut s'aider en les inserant dans des suports pour
  vis en plastique (qui se mettent dans les murs).</p>

TAB_DIM_3(CAPTION(helico/photos/pieces_patte.jpg),
CAPTION(helico/photos/pieces_croix.jpg),
CAPTION(helico/photos/h4hpattes.jpg),
Tige de laiton et son support pour vis,
Les parties &agrave; usiner et &agrave; coller,
h&eacute;lico final)
ENDBOX

SUBSECTION(Construction de la carte des capteurs,capt)
BOX
<p>Cette carte est une plaque d'essai en epoxy d&eacute;tachable de la
croix. Elle contient, pour l'instant, un gyroscope, un
acc&eacute;l&eacute;rom&egrave;tre et un capteur de distance IR. Il
reste de la place pour deux gyroscopes et un AOP avec ses
r&eacute;sistances.</p>

TAB_DIM_2(CAPTION(helico/photos/capteurdessus_low.jpg),
CAPTION(helico/photos/capteurdessous_low.jpg))

<p>Cette carte sera plac&eacute;e sur le dos de
l'h&eacute;licopt&egrave;re. Une deuxi&egrave;me carte
&eacute;lectronique (&eacute;galement d&eacute;tachable et contenant
PIC, AOP, interface de puissance, ...), plus lourde, sera mise sur le
'ventre' de l'h&eacute;licopt&egrave;re afin de placer son centre de
gravit&eacute; le plus bas possible. Les deux cartes
s'embo&icirc;teront ensemble.</p>

<p>En attendant, de r&eacute;aliser cette deuxi&egrave;me carte
&eacute;lectronique, la carte des capteurs est mise sur le ventre de
l'h&eacute;licopt&egrave;re. En effet, &eacute;tant relativement
lourde pour l'h&eacute;licopt&egrave;re, elle le rend instable et
l'h&eacute;licopt&egrave;re se comporte, alors, comme un pendule
invers&eacute;, rendant l'asservissement plus difficile &agrave;
r&eacute;aliser. La configuration actuelle rend
l'h&eacute;licopt&egrave;re naturellement stable sur la
balan&ccedil;oire. Le chapitre sur
LINK(helico_asservissement-LANG.html,l'asservissement) sera plus
explicite sur comment stabilisser l'h&eacute;licopt&egrave;re.</p>
ENDBOX

SUBSECTION(Construction des pieds de la balancoire,balanc)
BOX
<p>Le banc d'essai est &eacute;galement appel&eacute;
ITALIQUE(balan&ccedil;oire).  Cette partie a &eacute;t&eacute; faite
en LEGO Technique et en DUPLO pour des raisons de
simplicit&eacute;. La forme des pieds de la balan&ccedil;oire n'est
pas importante du moment qu'elle est assez haute (pour
l'asservissement en altitude). Les trous dans les briques sont assez
grands pour laisser passer la tige de laiton (pieds de
l'h&eacute;licopt&egrave;re).  L'ajout de tiges horizontales LEGO sur
chacun des coins de la balan&ccedil;oire permet de bloquer les pieds
(plac&eacute;s vers le haut) de l'h&eacute;licopt&egrave;re s'il
bascule trop.</p>

<p>Un mod&egrave;le simple de rotule a &eacute;t&eacute;, mis en place
sur la version 1 de la balan&ccedil;oire, n'a pas encore servi.</p>

TAB_DIM_3(CAPTION(helico/photos/balancoirev1.jpg),
CAPTION(helico/photos/helico_balan1.jpg),
CAPTION(helico/photos/balancoirev2.jpg),
Version 1 avec rotule,Version 1 sans rotule,Version 2)

La version 2 de la balan&ccedil;oire a &eacute;t&eacute; agrandie avec des
briques DUPLO et mesure maintenant 40 cm de haut. Deux barres
verticales de LEGO, lisses et parall&egrave;le entre elles, ont
&eacute;t&eacute; ajout&eacute;es afin d'&eacute;tudier la
r&eacute;gulation en altitude de l'h&eacute;licopt&egrave;re. Le but
est de laisser l'h&eacute;licopt&egrave;re coulisser verticalement
o&ugrave; un elastique permet de limiter sa chute.

FINALBOX(helico_etapes,helico_electronique)
END_BODY
HTML_FOOTER
