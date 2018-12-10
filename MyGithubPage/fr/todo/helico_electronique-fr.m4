HELICO_HTML_BEGIN

SECTION(Partie &eacute;lectronique,partie_electro)
<!-- <p>STRONG(ATTENTION !!!) Vu que ce projet ne fait que commencer, les -->
<!-- infos/raisonements donnees sont encore immatures et sont -->
<!-- STRONG(FORTEMENT) succeptibles d'evoluer (dans le bon ou mauvais -->
<!-- sens). Elles ne sont donnees qu'a titre indicatif.</p> -->
<!-- <p>Cette page d&eacute;crit la partie &eacute;lectronique de -->
<!-- l'h&eacute;licotp&egrave;re.</p> -->

<p>STRONG(Chapitrage :)</p>
<ul>
<li>LINK(#schema,Sch&eacute;ma de la carte &eacute;lectronique)</li>
<li>LINK(#choix,Remarque sur le choix des microcontroleurs)</li>
<li>LINK(#comm,Communication inter composants)</li>
<li>LINK(#chrono,Chronogramme des interruptions)</li>
<li>LINK(#icsp,Interface de programmation)</li>
<li>LINK(#aop,L'amplificateur op&eacute;rationel)</li>
<li>LINK(#acc,L'acc&eacute;l&eacute;rom&egrave;tre)</li>
<li>LINK(#gyro,Les gyroscopes)</li>
<li>LINK(#alti,L'altim&egrave;tre infrarouge)</li>
<li>LINK(#pui,L'&eacute;lectronique de puissance)</li>
</ul>

SUBSECTION(Sch&eacute;ma de la carte &eacute;lectronique,schema)
BOX
<p>La derni&egrave;re version du sch&eacute;ma &eacute;lectronique
  complet de la carte embarqu&eacute;e de l'h&eacute;copt&egrave;re
  est t&eacute;l&eacute;chargeable au format PDF, PNG ou
  EXTLINK(http://www.cadsoftusa.com/,Eagle). Elle comprend :</p>
<ul>
  <li>Une partie contenant tous les capteurs (1
  acc&eacute;l&eacute;rom&egrave;tre, 3 gyroscopes, 1 altim&egrave;tre
  IR),</li>
  <li>Une partie logique contenant les microcontr&ocirc;leurs, la mise
  en forme des signaux et le port de communication avec
  l'ordinateur,</li>
  <li>Une partie &eacute;lectronique de puissance qui alimente les 4
  moteurs contr&ocirc;l&eacute;s par les microcontr&ocirc;leurs.</li>
</ul>

TAB_DIM_3bis(LINK(helico/schemas/h4h_schematic.pdf,Sch&eacute;ma au format PDF),
LINK(helico/schemas/h4h_schematic.png,Sch&eacute;ma au format PNG),
LINK(helico/schemas/h4h_schematic.sch,Sch&eacute;ma au format SCH),
ICON_PDF,ICON_TGZ,ICON_TGZ,220Ko,128Ko,230Ko)

<p>La carte &eacute;lectronique doit g&eacute;rer :</p>
<ul>
  <li>9 entr&eacute;es analogiques :
    <ul>
      <li>les courants circulant dans les moteurs soit quatre
      entr&eacute;es analogiques,</li>
      <li>les vitesses angulaires donn&eacute;es par les gyroscopes
      soit trois entr&eacute;es analogiques,</li>
      <li>l'orientation par rapport &agrave; la verticale (roulis,
	tangage) donn&eacute;e par
	l'acc&eacute;l&eacute;rom&egrave;tre, soit deux entr&eacute;es
	analogiques.</li>
      <li>L'altitude soit une entr&eacute;e num&eacute;rique.</li>
    </ul>
  <li>les quatre sorties PWM (Pulse Width Modulation) contr&ocirc;lant
  la vitesse des moteurs.</li>
  <li>le port s&eacute;rie de communication avec l'ordinateur.</li>
  <li>la port s&eacute;rie de communication entre deux microcontr&ocirc;leurs.</li>
</ul>
ENDBOX

SUBSECTION(Remarque sur le choix des microcontroleurs,choix)
BOX
<p>Les microcontr&ocirc;leurs de Microchip ont &eacute;t&eacute;
  choisis &agrave; cause de leur prix, de la disponibilit&eacute; de
  la documentation et de la distribution gratuites des logiciels (PC
  et Linux) pour les programmer et les d&eacute;bugger. Parmi les
  microcontr&ocirc;leurs de Microchip, au moins deux choix sont
  possibles :</p>
<ul>
  <li>Soit utiliser deux PIC 16F876A,</li>
  <li>Soit utiliser un dsPIC 30F3011.</li>
</ul>

<p>En effet, les PIC 16F876A ont deux sorties PWM et cinq
  entr&eacute;es analogiques alors que le dsPIC 30F3011 a six sorties
  PWM et neuf entr&eacute;es analogiques.</p>

<p>Le choix s'est port&eacute; sur le PIC 16F876A plut&ocirc;t que sur
  le dsPIC 30F3011. Etant novice dans ce domaine, ce choix
  &eacute;tait le plus simple (quitte &agrave; devoir r&eacute;ecrire
  plus tard le prog assembleur pour le dsPIC) sachant que l'excellent
  cours sur les PIC de BIGONOFF est
  une aide pr&eacute;cieuse pour la compr&eacute;hension des PIC 16F84
  et 16F87x. Par contre, pour le dsPIC, on ne dispose que de la
  documentation du constructeur Microchip, qui bien que tr&egrave;s
  riche, est beaucoup moins p&eacute;dagogique que le cours de
  BIGONOFF. Avant d'utiliser des dsPIC, il est
  pr&eacute;f&eacute;rable de ma&icirc;triser le fonctionnement des
  PIC.  Dans une deuxi&egrave;me version du projet, on utilisera un
  unique dsPIC car, en plus du tr&egrave;s grand nombre
  d'entr&eacute;es/sorties disponibles, il dispose d'un multiplieur
  int&egrave;gr&eacute; qui permet de mettre en oeuvre plus facilement
  les contr&ocirc;leurs et les filtres n&eacute;c&eacute;ssaires.</p>

<p>On a choisi le 16F876A au lieu du 16F877 pour son meilleur
  compromis puissance/poids. Le 16F877 est beaucoup plus
  lourd (40 pattes contre 28).</p>

TAB_DIM_1(CAPTION(helico/photos/electronik.jpg),Electronique
g&eacute;rant 1 axe)

<p>Pour l'instant, un seul PIC 16F876A est utilis&eacute;, il
  contr&ocirc;le un des deux axes de l'h&eacute;licopt&egrave;re.
  Son programme est expliqu&eacute; dans la section
  LINK(helico_logiciel-LANG.html,partie logicielle).
</p>  ENDBOX

SUBSECTION(Communication inter composants,comm)
BOX
<p>TODO changer titre</p>
<p>Dans ce diagramme, les num&eacute;ros encercl&eacute;s
d&eacute;finissent l'ordre dans lequel se fait la communication entre
les microcontr&ocirc;leurs et l'ordinateur.</p>

CENTER(CAPTION(helico/schemas/comm.jpg))

<ol>
<li>Le PIC ma&icirc;tre et le PIC esclave lisent les valeurs
  (analogiques et num&eacute;riques) des capteurs
  (acc&eacute;l&eacute;rom&egrave;tre, gyroscopes,
  altim&egrave;tre).</li>
<li>Scilab envoie au PIC ma&icirc;tre les consignes des signaux PWM des
  quatre moteurs.</li>
<li><!-- Le PIC ma&icirc;tre re&ccedil;oit une interruption.-->Les consignes
  PWM sont traduites en signal PWM pour les moteurs 1 et
  2. Parall&eacute;lement, le PIC ma&icirc;tre envoie au PIC esclave
  les consignes PWM des moteurs 3 et 4 gr&acirc;ce au module
  I2C.</li>
<li>Le PIC esclave r&eacute;pond au PIC ma&icirc;tre en lui envoyant les
 r&eacute;sultats des lecture de ses capteurs.</li>
<li>Pendant que le PIC ma&icirc;tre envoie &agrave; l'ordinateur
  l'ensemble des lectures des capteurs (provenant du ma&icedil;tre et
  de l'esclave), le PIC esclave traduit les consignes PWM des moteurs
  3 et 4 en signal PWM r&eacute;el.</li>
</ol>

<p>Le PIC ma&icirc;tre, configur&eacute; en mode USART (Universal Synchronous
Asynchronous Receiver Transmitter) communique de fa&ccedil;on
asynchrone un avec un ordinateur via ses pattes Rx (r&eacute;ception)
et Tx (transmission) branch&eacute;es sur un port s&eacute;rie. La
vitesse de transmission est de 19200 bauds, 8 bits de donn&eacute;es,
parit&eacute; paire, 1 bit de stop et aucun contr&ocirc;le de flux.
Le composant MAX232 convertit les signaux du port s&eacute;rie
(+12V/-12V) en signaux adapt&eacute;s au PIC (0V/+5V). Le site de
BIGONOFF explique en d&eacute;tail comment fonctionne l'ensemble et
fournit un programme type &agrave; charger sur le
microcontr&ocirc;leur et un programme PC pour tester la communication
s&eacute;rie.</p>

<p>TODO: Comm I2C</p>
ENDBOX

SUBSECTION(Chronogramme des interruptions,chrono)
BOX
<p>Le PIC permet de lancer plusieurs op&eacute;rations en
parall&egrave;le. Les fins de calcul sont signal&eacute;es par des
interruptions. Le PIC a &eacute;t&eacute; programm&eacute; pour
faire tourner en parall&egrave;le deux timers, une conversion
analogique, la g&eacute;n&eacute;ration de deux signaux PWM, la
r&eacute;ception et l'&eacute;mission d'un octet sur le port
s&eacute;rie et le module I2C. Le chronogramme des interruptions
est illustr&eacute; sur la figure.</p>

CENTER(CAPTION(helico/schemas/chronointerrup.jpg))

<p>Le PIC ma&icirc;tre contient deux buffers permettant de communiquer
avec l'ordinateur~:</p>
<ul>
<li>un premier pour la r&eacute;ception, que l'on appellera
  ITALIQUE(BufRec);</li>
<li>un deuxi&egrave;me pour l'&eacute;mission, que l'on appellera
  ITALIQUE(BufEm).</li>
</ul>

<p>Chaque r&eacute;sultat des conversions analogiques est
sauvegard&eacute; dans ITALIQUE(BufEm). A chaque fin, une interruption
est lancée (repr&eacute;sent&eacute;e par une fl&egrave;che noire sur
le chronogramme). Vu que le PIC permet une seule conversion analogique
&agrave; la fois, on doit alors changer de patte analogique à chaque
fois qu'une convertion se termine. Il faut attendre que~:</p>
<ul>
  <li>les condensateurs de la nouvelle patte se chargent;</li>
  <li>la conversion analogique se finisse.</li>
</ul>
<p>Comme ces dur&eacute;es d&eacute;pendent de la tension et de la
chaleur du PIC, on utilise le timer 0 avec une p&eacute;riode assez
grande pour pouvoir relancer une nouvelle lecture sans risque de
corruption de la lecture (interruption en vert sur le chrono).</p>

<p>Scilab envoie alors les consignes PWM par le port s&eacute;rie, ce
qui cr&eacute;e une interruption (orange sur le chrono). Le PIC les
lie et les stocke dans ITALIQUE(BufRec). Il profite de cette
interruption pour envoyer le contenu de ITALIQUE(BufEm).</p>

<p>Les consignes PWM, stock&eacute;es dans ITALIQUE(BufRec), sont les
nouvelles valeurs des comparateurs du PIC. Deux comparateurs sont
pr&eacute;sents et fonctionnent avec le timer 2. Lorsque la
valeur du timer 2 atteint celle du comparateur ITALIQUE(x) , +5V est
g&eacute;n&eacute;r&eacute; sur la patte CCPx du PIC jusqu'au
d&eacute;bordement du Timer 2, qui permet de terminer un cycle d'un
signal PWM, en mettant &agrave; la masse les sorties des pattes
CCP. La vitesse de notre signal PWM est de 5 kHz avec un PIC
poss&eacute;dant un quartz de 20MHz.</p>

<p>Enfin, avant qu'une interruption de d&eacute;bordement du Timer 2
soit lanc&eacute;e, quatre interruptions de d&eacute;bordement du
Timer 0 sont lanc&eacute;es.</p>  ENDBOX

SUBSECTION(Interface de programmation,icsp)
BOX
<p>La programmation du PIC se fait par un port ICSP (In Circuit Serial
  Programming) comprenant 5 fils.</p>
  TAB_DIM_1(CAPTION(helico/schemas/icsp.jpg),Sch&eacute;ma provenant
  du site de Microchip)
<p>Lorsque la pin VPP du PIC est &agrave; +12V (au lieu du +5V), le
  PIC se met en mode 'programmation' et charge le nouveau programmme
  par la patte ICSPDAT, synchronis&eacute; par ISPCLK. Ceci est
  possible gr&acirc;ce &agrave; un circuit ind&eacute;pendant
  appel&eacute; programmeur command&eacute; par un logiciel.</p>
<p>Un programmeur PIC que l'on branche sur le port s&eacute;rie peut
  &ecirc;tre facilement &ecirc;tre fabriqu&eacute; comme l'explique le
  site EXTLINK(,JDM). D'autres, plus &eacute;volu&eacute;s, permettant
  le d&eacute;bugage en ligne sont disponibles chez le constructeur et
  des vendeurs ind&eacute;pendants accessibles par Ebay.</p>
<p>La photo et le sch&eacute;ma de mon premier programmeur JDM (les
  composants du sch&eacute;ma &eacute;lectronique ont
  &eacute;t&eacute; replac&eacute;s par rapport &agrave; l'original
  afin de d&eacute;centraliser le PIC).</p>

<!-- TAB_DIM_3bis(CAPTION(,TODO),
LINK(helico/schemas/h4h_schematic.pdf,Sch&eacute;ma au format PDF),
LINK(helico/schemas/h4h_schematic.sch,Sch&eacute;ma au format SCH),
TODO,ICON_PDF,ICON_TGZ,Mes premi&egrave;res soudures,88Ko,230Ko) -->

ENDBOX
<!-- . La compr&eacute;hension plus -->
<!--   evolu&eacute;e du fonctionnement du programmateur ne nous -->
<!--   int&eacute;resse pas pour ce projet. Il existe un moyen plus -->
<!--   evolu&eacute; que celui de l'ICSP : le bootloader. Ceci est -->
<!--   expliqu&eacute; sur le site de BIGONOFF. -->

SUBSECTION(L'amplificateur op&eacute;rationel,aop)
BOX
<p>Un AOP est un composant &eacute;lectronique qui permet d'amplifier
  un signal continu ce qui permet au final de cr&eacute;er des
  fonctions math&eacute;matiques (d'o&ugrave; le mot
  op&eacute;rationel) telles que la d&eacute;riv&eacute;e,
  l'int&eacute;grale, l'addition, le log, des filtres ... Le site
  EXTLINK(http://courelectr.free.fr/OUTILS/COURS.HTM#O58,courelectr)
  &eacute;tudie les AOP et explique les diff&eacute;rents montages
  possibles. Des AOP sous la forme de composants &agrave; deux sorties
  (EXTLINK(,LM358)) ou &agrave; quatre sorties (EXTLINK(,LM324))
  consommant du +5V sont utilis&eacute;s pour la carte de
  l'h&eacute;licot&egrave;re.</p>

<p>Dans le cadre de ce projet, seuls les montages AOP permettant de
  faire des transformations affines nous int&eacute;ressent, en effet
  le filtrage des bruits des signaux des capteurs ou bien
  l'application d'un PID sur un signal se fait logiciellement sur un
  ordinateur non embarqu&eacute; (voir section
  LINK(helico_asservissement-LANG.html,asservissement)) (ou
  directement sur un dsPIC pour une version future). Par contre, pour
  garder la pr&eacute;cision maximale des calculs, les signaux doivent
  &ecirc;tre centr&egrave;s et normalis&egrave;s.</p>

<p>Voici le sch&eacute;ma caract&eacute;ristique. On obtient la sortie Vout = G
  (V1-V2) avec un gain G = R2/R1. En pratique, les valeurs des
  r&eacute;sistances R1 et R2 seront choisies de l'ordre de
  100K&Omega;.</p>

CENTER(CAPTION(helico/schemas/aopsoustracteur2.jpg))
ENDBOX

SUBSECTION(L'acc&eacute;l&eacute;rom&egrave;tre,acc)
BOX
<p>Un acc&eacute;l&eacute;rom&egrave;tre deux axes plac&eacute;
  horizontalement au centre de gravit&eacute; (suppos&eacute;
  immobile) de l'h&eacute;licopt&egrave;re, permet de d&eacute;tecter
  la verticale. C'est le capteur le plus important dans la phase
  d'essai o&ugrave; le centre de gravit&eacute; de
  l'h&eacute;licopt&egrave;re sur son banc d'essai est maintenu
  immobile (cas de la balan&ccedil;oire). Un unique
  acc&eacute;l&eacute;rom&egrave;tre 5g EXTLINK(,xx) de AnalogDevice
  est alors suffisant pour stabiliser l'h&eacute;licot&egrave;re.
  Malheureusement, les acc&eacute;l&eacute;rom&egrave;tres disponibles
  bons march&eacute;s existent sous formes de petites tailles (4mm X
  4mm) et sont tr&egrave;s difficiles &agrave; souder sur une carte
  &eacute;poxy standard.</p>

CENTER(CAPTION(helico/photos/accelero.jpg))

  <p>L'acc&eacute;l&eacute;rom&egrave;tre choisi donne un signal utile
  compris entre +1.3V (&agrave; l'horizontale) et +1.7V (&agrave; 90
  degr&eacute;s) qui doit donc &ecirc;tre recentr&eacute; et
  normalis&eacute; entre 0V et +5V afin d'avoir une pr&eacute;cision
  maximale avec le convertisseur analogique num&eacute;rique 10 bits
  disponibles sur le PIC LINK(helico/schemas/acce_amplif.jpg,figure de
  gauche).</p>

TAB_DIM_2(CAPTION(helico/schemas/acce_amplif.jpg),
CAPTION(helico/schemas/aopsoustracteur.jpg))

<p>L'utilisation d'un AOP en montage soustracteur
  LINK(helico/schemas/aopsoustracteur.jpg,figure de droite) est
  utilis&eacute;. Pour conna&icirc;tre les valeurs des
  r&eacute;sistances R1 et R2, on r&eacute;soud le syst&egrave;me
  suivant, o&ugrave; G est le gain et r la tension de
  r&eacute;f&eacute;rence.</p>

<ul>
  <li>G(1.3 - r) = 0</li>
  <li>G(1.7 - r) = 5</li>
</ul>

<p>D'o&ugrave; G = 12.5 et r = 1.3 D'o&ugrave; les valeurs R1 = 22k, R2
  = 250k, Ra = 800 et Rb = 265 sur LINK(helico/schemas/aopsoustracteur.jpg,le
  schema droit). La sortie amplifi&eacute;e Vout est branch&eacute;e
  directement sur une des pattes analogiques d'un PIC.</p>

<p>Du a la lenteur d'&eacute;chantillonnage de l'ordinateur (25Hz
&agrave; comparer aux 5kHz du PIC dont la section
LINK(helico_asservissement-LANG.fr,asservissements) sera plus
explicite dessus), nous devons couper les fr&eacute;quences au dessus
de 25Hz afin d'&eacute;viter de les retrouver sous forme de signaux
parasites dus &agrave; un repliement de spectre.</p>

<p>Nous allons cr&eacute;er un filtre anti repliement de spectre
d'ordre 4. Nous allons combiner un filtre d'ordre 2
&eacute;lectronique, &agrave; savoir au niveau de l'AOP et un
deuxi&egrave;me filtre d'ordre 2 en assembleur dans le PIC.</p>

<p>Des condensateur C1 et C2 viennent s'ajouter
&agrave; l'AOP du montage ce qui donne le nouveau sch&eacute;ma.</p>

CENTER(CAPTION(helico/schemas/aop3.jpg))

<p>C1 = 800nF et C2 = 100 nF</p>

<p>TODO: a justifier les val C1 et C2: filtre 25hz</p>

ENDBOX

SUBSECTION(Les gyroscopes,gyro)
BOX
<p>Les gyroscopes sont des capteurs qui mesurent la vitesse angulaire
  gr&acirc;ce &agrave; la force de coriolis. Il en existe deux sortes
  : les m&eacute;caniques et les pi&eacute;zo-&eacute;lectriques. Dans
  le cadre de ce projet, trois gyros pi&eacute;zo-&eacute;lectriques
  un axe EXTLINK(,Gyrostar) (s&eacute;ries ENC) de Murata sont
  utilis&eacute;s.</p>

<p>A l'&eacute;tat actuel d'avancement du projet, ces gyroscopes
    pi&eacute;zo-&eacute;lectriques semblent avoir les
    inconv&eacute;nients suivants :</p>
<ul>
  <li>Ils donnent un signal utile dans une bande de fr&eacute;quence
    de l'ordre de l'hertz &agrave; quelques dizaines de hertz (ils
    d&eacute;nt). Ils sont difficilement utilisables pour maintenir
    l'h&eacute;licopt&egrave;re dans une position stationaire
    (objectif principal de ce projet) mais seront utiles pour le
    contr&ocirc;le de trajectoire impliquant des vitesses plus
    grandes.</li>
  <li>Il n'est pas clair qu'il soit possible de
    stabiliser la plate-forme avec les seuls
    acc&eacute;l&eacute;rom&egrave;tres, lorsque le centre de
    gravit&eacute; de l'h&eacute;licopt&egrave;re n'est pas maintenu
    fixe. Dans ce dernier cas, on peut penser &agrave; une
    stabilsation gr&acirc;ce aux gyroscopes recal&eacute;s par des
    acc&eacute;l&eacute;rom&egrave;tres.</li>
</ul>

<p>Les capteurs Gyrostar sont difficiles &agrave; trouver, mais sont
  le coeur de gyroscopes utilis&eacute;s en
  a&eacute;romod&eacute;lisme comme les EXTLINK(,GWS PG03). Les PG03
  sont con&ccedil;us pour &ecirc;tre branch&eacute;s entre la
  t&eacute;l&eacute;commande et le servo-moteur. Ils disposent donc de
  l'&eacute;lectronique pour moduler le signal de
  t&eacute;l&eacute;commande. Deux choix sont alors possibles :</p>
<ul>
<li>r&eacute;cup&eacute;rer le signal analogique du Gyrostar avec la
  carte du PG03,</li>
<li>utiliser directement la sortie du PG03 (&agrave; savoir la
modulation de type PWM).</li>
</ul>
<p>Le premier choix &eacute;limine la contrainte de vitesse du signal
  t&eacute;l&eacute;command&eacute; modul&eacute; &agrave; 50hz des
  PG03 mais n'utilise plus son circuit d'amplification. Il semble
  facile de d&eacute;ssouder le Gyrostar du PG03 mais il est moins
  dangereux de souder un fil sur la patte Out (numero 4) du Gyrostar
  directement sur la carte du PG03 LINK(,figure de droite). C'est la
  m&eacute;thode utilis&eacute;e ici.</p>

TAB_DIM_2(CAPTION(helico/photos/gyro.jpg),
CAPTION(helico/photos/gyro1.jpg))

<p>Comme pour les acc&eacute;l&eacute;rom&egrave;tres, les sorties de
  gyroscopes sont centr&eacute;es et normalis&eacute;es en utilsant un
  AOP puis reli&eacute;es sur des pattes analogiques d'un PIC.</p>

<p>TODO: EXPLIQUER Filtre</p>

  ENDBOX

SUBSECTION(L'altim&egrave;tre infrarouge,alti)
BOX
<p>L'altim&egrave;tre infrarouge EXTLINK(,GPXXX) est le plus simple
  &agrave; et le moins cher des capteurs IR. Il commute de 0 &agrave;
  1 lors de la pr&eacute;sence d'un obstacle &agrave; moins de
  40cm. Il se branche sur une patte num&eacute;rique du PIC. La
  distance de commutation semble d&eacute;pendre de la couleur de
  l'obstacle. Le capteur est dirig&eacute; vers le haut de
  l'h&eacute;licopt&egrave;re (et non vers le bas) afin qu'un
  utilisateur puisse contr&ocirc;ler l'alitude de la plate-forme en
  pr&eacute;sentant au dessus un obstacle &agrave; la distance
  voulue.</p>  ENDBOX

SUBSECTION(L'&eacute;lectronique de puissance,puis)
BOX
<p>Cette partie alimente les moteurs et contr&ocirc;le leur
  vitesse. Elle fait intervenir une tension importante de +8.5V, 2A
  (par rapport au PIC qui consomme du +5V, 20mA) obtenue &agrave;
  partir d'une source de courant (+12V) et de ...<!-- et d'un r&eacute;gulateur
  EXTLINK(,L78S0x) (le x d&eacute;signant la tension de sortie) -->. Pour
  des raisons de simplicite, cette version d'h&eacute;licopt&egrave;re utilise
  uniquement des moteurs &eacute;lectrique DC &agrave; balais (courant direct) que
  l'on fera tourner que dans un seul sens.</p>
<p>La documentation de Microchip AN905 EXTLINK(,Brushed DC Motor
  Fundamentals) montre deux schemas pour controler un moteur.</p>

TAB_DIM_2(CAPTION(helico/schemas/lowside.jpg),
CAPTION(helico/schemas/highside.jpg),Low side,high side)

<p>Le PIC via sa patte CCP1 ou CCP2 (Compare Capture PWM) attaque le
  Mosfet avec un signal PWM (+5V/0V) ce qui le fait bloquer ou le fait
  conduire alternativement. En faisant varier le rapport cyclique du
  signal PWM (rapport entre le temps de l'etat haut et le temps de
  l'etat bas), on fait varier le courant moyen dans le moteur. La
  dynamique du signal PWM est explique dans la
  LINK(helico_logiciel-LANG.html, partie logicielle). Le cours de
  BIGONOFF explique comment generer un signal en mode
  compare ou en mode PWM.</p>

<p>La resistance R1 protege le PIC des surtensions et la resitance R2
  empeche le Mosfet d'etre passant lors de l'initialisation du PIC. La
  diode (dite de roue libre car tres rapide a commuter) protege le
  mosfet des courants contre electromagnetique generes par le moteur
  quand il tourne. En effet, si la bobine est encore chargee et que le
  mosfet est coupe, un courant inverse ce produit. Pour comprendre ce
  phenomene, on peut simplifier le moteur par une bobine et le mosfet
  par un interrupteur comme sur la
  LINK(helico/schemas/bobdiode.jpg,figure ci dessous).</p>

TAB_DIM_1(CAPTION(helico/schemas/bobdiode.jpg),bob diode)

<p>Par definition, la tension U d'une bobine vaut Ldi/dt. Lorsque le
  mosfet est sature il se comporte comme un interupteur ferme et le
  courant I augmente pour que U atteigne Vcc. La derivee du courant
  est positive. Quand U est charge et que l'on coupe a ce moment le
  mosfet, celui-ci se comporte comme un interrupteur ouvert donc la
  valeur de I passe de tres grande a nulle. La derivee est donc un
  dirac negatif et le courant change de sens avec une tension enorme
  en B avec VB >> VA. La diode protege le circuit car le courant va la
  traverser de B vers A.</p>

<p>La difference entre les deux schemas
  LINK(helico/schemas/lowside.jpg,low side) et
  LINK(helico/schemas/highside.jpg,high side) est que le schema de
  gauche utilise un Mosfet N alors que celui de droite utilise un
  Mosfet P.</p>

<p>  L'inconvenient du mosfet P est que la gate et le drain du mosfet
  sont tous les deux alimentes par Vcc, ce qui est problematique avec
  la patte CCP du PIC dans le cas ou Vcc > +5V. Malheureusement,
  n'ayant pas de Mosfet N et la tension d'alimentation du moteur
  depassant les +5V du PIC, il a fallu faire le schema suivant
  EXTLINK(helico/schemas/moteur1.jpg,gauche) en ajoutant un transistor
  NPN et trois resistances.</p>

TAB_DIM_2(CAPTION(helico/schemas/moteur1.jpg),
CAPTION(helico/schemas/moteur2.jpg),Electro de puissance,Electro de
puissance et son feedback en courant)

<p>L'asservissement des moteurs se fait en courant, comme l'explique
le chapitre LINK(helico_asservissement-LANG.html,asservissement). On
doit pouvoir suivre l'&eacute;volution du courant. On utilise le
sch&eacute;ma &eacute;lectronique de droite.</p>

<p>La lecture du courant se fait gr&acirc;ce &agrave; un AOP en
montage soustracteur (gain de 1) qui permet d'obtenir la
diff&eacute;rence de potentiel sur la r&eacute;sistance de puissance
R2 (1&Omega;, 4W). L'inconv&eacute;nient non n&eacute;gligeable
est que la r&eacute;sistance interne des moteurs Micro Speed augmente
et passe de 2&Omega; &agrave; 3&Omega;.</p>

<p>On aurait pu mettre R2 entre le moteur et la masse, ce qui
aurait &eacute;viter d'utiliser un AOP. L'inconv&eacute;nient est que
la lecture du courant est moins fiable aux apparitions.</p>

<p>TODO: EXPLIQUER Filtre</p>

FINALBOX(helico_mecanique,helico_logiciel)
END_BODY
HTML_FOOTER
