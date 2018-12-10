HELICO_HTML_BEGIN

SECTION(Partie logicielle,logo)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#schema,Sch&eacute;ma de la carte &eacute;lectronique)</li>
  <li>LINK(#scisci,Scilab et Scicos)</li>
  <li>LINK(#serie,Port s&eacute;rie sous Scicos,serie)</li>
  <li>LINK(#tr,Le temps r&eacute;el sous Scicos)</li>
</ul>

SUBSECTION(Justification sur l'utilisation d'un ordinateur,just) BOX
Nous avons vu que les microcontr&ocirc;leurs PIC 16F876A
embarqu&eacute;s sur l'h&eacute;licopt&egrave;re, sont puissants pour
convertir des signaux analogiques, utiliser des timers, ou
g&eacute;n&eacute;rer des signaux PWM.  Cependant, ils souffrent d'un
manque de puissance au niveau calcul num&eacute;rique : ils ne savent
faire que des additions sur des nombres de 8 bits non sign&eacute;s.

L'utilisation d'un ordinateur non embarqu&eacute; coupl&eacute;
&agrave; l'h&eacute;licopt&egrave;re, avec une biblioth&egrave;que de
calcul num&eacute;rique pour augmenter la puissance de calcul semble
&ecirc;tre une bonne id&eacute;e. Le probl&egrave;me est de savoir
quel logiciel utiliser et comment l'interfacer avec la carte de
l'h&eacute;licopt&egrave;re.  ENDBOX

SUBSECTION(Scilab et Scicos,scisci)
BOX
<p>Il existe deux types de programmes scientifiques~:</p>
<ul>
  <li> les logiciels alg&eacute;briques faisant essentiellement du
calcul symbolique (Maple, Mathematica, Maxima, Axiom, et MuPad);</li>
  <li>les logiciels de calcul scientifique faisant essentiellement de
l'analyse num&eacute;rique (Scilab, Matlab).</li>
</ul>

<p>LINK(helico_bibli-LANG.html,Scilab) est un logiciel libre pour le
calcul scientifique. C'est un interpr&eacute;teur de langage
manipulant des objets typ&eacute;s dynamiquement. Il inclut de
nombreuses fonctions sp&eacute;cialis&eacute;es pour le calcul
num&eacute;rique organis&eacute;es sous forme de librairies ou de
boites &agrave; outils qui couvrent des domaines tels que la
simulation, l'optimisation, et le traitement du signal et du
contr&ocirc;le.</p>

<p>Une des boites &agrave; outils les plus importantes de Scilab est
LINK(helico_bibli-LANG.html,Scicos). Scicos est un simulateur hybride
avec un &eacute;diteur graphique de bloc diagrammes permettant de
mod&eacute;liser et de simuler des syst&egrave;mes dynamiques. Il est
particuli&egrave;rement utilis&eacute; pour mod&eacute;liser des
syst&egrave;mes o&ugrave; des composants temps-continu et
temps-discret sont inter-connect&eacute;s.</p>  ENDBOX

SUBSECTION(Port s&eacute;rie sous Scicos,serie)
BOX
<p>Scicos ne poss&egrave;de pas de moyen de communication avec
l'ext&eacute;rieur, d'o&ugrave; son impossibilit&eacute; de
contr&ocirc;ler l'h&eacute;licopt&egrave;re. Il a fallu cr&eacute;er
un bloc diagramme qui puisse envoyer et &eacute;couter des
donn&eacute;es sur un port s&eacute;rie.</p>

<p>Ceci est facilement r&eacute;alisable, car Scilab permet de faire
de l'&eacute;dition de liens sur des fonctions C et de les lier
&agrave; des blocs diagrammes Scicos. Pour construire un bloc Scicos,
deux fichiers sont n&eacute;cessaires, donc deux fonctions :
BOLD(fonction de calcul) et BOLD(fonction d'interface).</p>

<p>En cr&eacute;ant la fonction de calcul et d'interface pour le port
s&eacute;rie, Scicos devient un oscilloscope num&eacute;rique 50Hz (on
peut les t&eacute;l&eacute;charger sur
LINK(helico_download-LANG.html,download)). Il lit les donn&eacute;es
des capteurs de l'h&eacute;licopt&egrave;re sur le port s&eacute;rie,
les affiche sous forme de courbes, calcule la loi de commande et
envoie les consignes PWM sur le port s&eacute;rie. La vitesse du port
s&eacute;rie est de 19200 bauds, 8 bits de donn&eacute;es, 1 bit de
stop et aucun flot de contr&ocirc;le (ni mat&eacute;riel ni
logiciel).</p>  ENDBOX

SUBSECTION(Le temps r&eacute;el sous Scicos,tr) BOX
<p>Une des grosses difficult&eacute; de ce projet fut de
d&eacute;terminer avec pr&eacute;cision la vitesse d'ex&eacute;cution
de Scilab et donc de sa fr&eacute;quence d'&eacute;chantillonnage.</p>

<p>Scicos permet lancer une simulation en utilisant le temps reel
(en modifiant la valeur STRONG(Real Time Scaling) du menu
STRONG(<Simulate><Setup>)). Une seconde Scilab correspond alors
&agrave; une seconde r&eacute;elle. Malgr&eacute; cela, Scicos peut
ralentir durant la simulation &agrave; cause d'une fr&eacute;quence
d'horloge trop grande, d'un buffer graphique trop petit ou &agrave;
cause de bloc diagramme &eacute;crit en langage Scilab (bloc
STRONG(Sciblock)) que Scicos doit interpr&eacute;ter (les
STRONG(Sciblock) sont &agrave; proscrire. Il vaut mieux utiliser
STRONG(Mathematical Expression) ou STRONG(C block) qui sont beaucoup
plus rapides).</p>

<p>Ceci entra&icirc;ne des probl&egrave;mes de fr&eacute;quence
d'&eacute;chantillonnage. Le th&eacute;or&egrave;me de Shannon dit que
la fr&eacute;quence d'&eacute;chantillonnage doit &ecirc;tre plus du
double de la fr&eacute;quence maximale du signal pour le restituer
correctement.</p>

<p>Les vitesses d'&eacute;chantillonnage ont &eacute;t&eacute;
obtenues sous Scicos avec un port s&eacute;rie &agrave; 19200
bauds~:</p>
<ul>
  <li> 20Hz sur un Macintosh iBook G4 cadenc&eacute; &agrave;
  933MHz.</li>
  <li> 50Hz sur un PC 1.2 GHz avec un Linux Ubuntu recompil&eacute; en
    mode 1kHz.</li>
</ul>

<p>Dans l'utilisation du temps de Scicos, il faudra prendre garde
&agrave; ce qui est appel&eacute; une fr&eacute;quence est en fait une
pulsation et que les p&eacute;riodes r&eacute;f&egrave;rent aux
&eacute;v&eacute;nements g&eacute;n&eacute;r&eacute;es par l'horloge
(un cycle d'un signal carr&eacute; {\tt square wave generator}
n&eacute;cessite deux tops d'horloge pour &ecirc;tre
g&eacute;n&eacute;r&eacute;.</p>

DOWNLOAD
ENDBOX

SUBSECTION(Trame port s&eacute;rie,trame)
BOX
TAB_DIM_4(octet,PIC --> PC,Erreure PIC --> PC,PC --> PIC,
1,Accelero X poids fort,0x80,Consigne PWM moteur 1 poids fort,
2,Accelero X poids faible,Code ascii,Consigne PWM moteur 1 poids faible,
3,Gyroscope X poids fort,Code ascii,Consigne PWM moteur 2 poids fort,
4,Gyroscope X poids faible,Code ascii,Consigne PWM moteur 2 poids faible,
5,Courant moteur 1 poids fort,Code ascii,Consigne PWM moteur 3 poids fort,
6,Courant moteur 1 poids faible,vide,Consigne PWM moteur 3 poids faible,
7,Courant moteur 2 poids fort,vide,Consigne PWM moteur 4 poids fort,
8,Courant moteur 2 poids faible,vide,Consigne PWM moteur 4 poids faible,
9,Gyroscope Z poids fort,vide,EOL,
10,Gyroscope Z poids faible,vide,,
11,Accelero Y poids fort,vide,,
12,Accelero Y poids faible,vide,,
13,Gyroscope Y poids fort,vide,,
14,Gyroscope Y poids faible,vide,,
15,Courant moteur 3 poids fort,vide,,
16,Courant moteur 3 poids faible,vide,,
17,Courant moteur 4 poids fort,vide,,
18,Courant moteur 4 poids faible,vide,,
19,Altimetre + retard + mode PIC,vide,,
20,EOL,EOL,
)
FINALBOX(helico_electronique,helico_asservissement)

END_BODY
HTML_FOOTER
