HELICO_HTML_BEGIN

SECTION(Pr&eacute;vision du d&eacute;roulement du projet)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#intro,Introduction)</li>
  <li>LINK(#scios,Premi&egrave;re &eacute;tape: Balan&ccedil;oire avec Scicos dans
la boucle)</li>
  <li>LINK(#auto,Deuxi&egrave;me &eacute;tape : Balan&ccedil;oire Autonome)</li>
  <li>LINK(#quad,Troisi&egrave;me et quatri&egrave;me &eacute;tape :
Simulation et r&eacute;alisation d'un Quadrirotor)</li>
</ul>

SUBSECTION(Introduction,intro)
BOX
<p>Le projet se d&eacute;compose en plusieurs &eacute;tapes, chaque
&eacute;tape comprenant plusieurs phases.  Certaines phases peuvent
&ecirc;tre men&eacute;es en parall&egrave;le d'autres demandent la
r&eacute;alisation de t&acirc;ches pr&eacute;alables. Une tentative de
planification avec affectation des t&acirc;ches sera r&eacute;alis&eacute;e
pour simuler les contraintes d'un projet industriel. L'absence
d'exp&eacute;rience rendant tr&egrave;s peu pr&eacute;cise les
estimations de temps, ce planning ne sera qu'indicatif.</p>
ENDBOX

SUBSECTION(Premi&egrave;re &eacute;tape: Balan&ccedil;oire avec Scicos dans
la boucle,scicos)
BOX
CENTER(CAPTION(helico/schemas/helicoiter.jpg))
<p>Le but de cette &eacute;tape est d'obtenir un ordinateur et un
embryon d'h&eacute;licopt&egrave;re capables de communiquer entre
eux. Cette &eacute;tape se d&eacute;compose en plusieurs t&acirc;ches.</p>

<!-- simul Scilab 1/4 helico -->
<p>La premi&egrave;re t&acirc;che consiste &agrave; mod&eacute;liser
et &agrave; simuler la dynamique d'un quart
d'h&eacute;licopt&egrave;re (que l'on appelle aussi
demi balan&ccedil;oire). La figure (LINK(helico/schemas/helicoiter.jpg,cliquer ici)) montre la
demi balan&ccedil;oire. La simulation et la conception de la commande
est r&eacute;alis&eacute;e gr&acirc;ce &agrave; un logiciel de calcul
num&eacute;rique (notre choix s'est port&eacute; sur le logiciel
Scilab qui est l'&eacute;quivalent de Matlab mais qui est libre). La
commande est du type PID, placement de p&ocirc;les ou LQG. La
demi balan&ccedil;oire est mod&eacute;lis&eacute;e comme un
syst&egrave;me lin&eacute;aire mono entr&eacute;e
(acc&eacute;l&eacute;rom&egrave;tre ou gyroscope) mono sortie
(moteur/h&eacute;lice). Le but de cette t&acirc;che est de simuler la
dynamique de la balan&ccedil;oire et sa stabilisation &agrave;
l'horizontale.</p>

<!-- %TODO: figure demi balan&ccedil;oire -->

<!-- PIC  PC (RS232) Carte d'acquisition -->
<p>
La deuxi&egrave;me t&acirc;che consiste &agrave; r&eacute;aliser un
circuit &eacute;lectronique permettant la communication entre
ordinateur (PC standard) et un microcontr&ocirc;leur embarqu&eacute;
(notre choix se porte sur des PIC du fabricant Microchip pour des
raisons de prix, de disponibilit&eacute; et de qualit&eacute; de la
documentation disponible). Le microcontr&ocirc;leur r&eacute;alise les
entr&eacute;es-sorties et sous-traite:</p>
<ul>
<li> les
calculs de la loi de commande (fonctionnement normal),</li>
<li>
l'identification des param&egrave;tres le d&eacute;bugage de la loi de
commande &agrave; l'ordinateur (mode d&eacute;veloppement).</li>
</ul>
<p>En effet, un PC standard dispose d'une puissance de
calcul et d'un environnement logiciel sans commune mesure avec ceux
disponibles sur un microcontr&ocirc;leur. Cette t&acirc;che permet de
se doter d'outils analogues &agrave; ceux disponible dans les
laboratoires d'&eacute;lectronique disposant de g&eacute;n&eacute;rateurs de
signaux, d'oscilloscope, d'analyseur de spectre num&eacute;riques (10
bits) dans une bande de fr&eacute;quence de 0 &agrave; 1kHz.</p>

<p>
La communication se fait soit par un port s&eacute;rie soit par un
port USB (qui est beaucoup plus rapide que le port s&eacute;rie) soit
par radiocommande (pour les consignes). Le laboratoire num&eacute;rique est
alors la bo&icirc;te &agrave; outils Scicos de Scilab qui est
l'analogue de Simulink pour Matlab (&eacute;diteur de blocs
diagrammes).</p>

<!-- Scilab dans la boucle. -->
<p>La troisi&egrave;me t&acirc;che consiste &agrave; construire
(mat&eacute;riellement) la demi balan&ccedil;oire avec le
microcontr&ocirc;leur embarqu&eacute;. Le bloc diagramme 'dynamique' du
logiciel de simulation est alors remplac&eacute; par la
'v&eacute;ritable' dynamique de la balan&ccedil;oire acquise
gr&acirc;ce au microcontr&ocirc;leur embarqu&eacute;. Scicos calcule
le feedback en faisant des calculs flottants et renvoie le
r&eacute;sultat au microcontr&ocirc;leur qui impl&eacute;mente en
ligne le r&eacute;sultat. En fin de compte le microcontr&ocirc;leur de
la balan&ccedil;oire fait l'acquisition des donn&eacute;es du gyroscope
(ou acc&eacute;l&eacute;rom&egrave;tre), les envoie &agrave;
l'ordinateur. Ce dernier calcule la commande et renvoie le
r&eacute;sultat au microcontr&ocirc;leur. Celui-ci envoie par sa
sortie PWM la commande au moteur (et donc &agrave;
l'h&eacute;lice). La balan&ccedil;oire doit se stabiliser.</p>
ENDBOX

SUBSECTION(Deuxi&egrave;me &eacute;tape : Balan&ccedil;oire Autonome,auto)
BOX
<p>
Le but est de retirer l'ordinateur de la boucle et de le remplacer par
un microcontr&ocirc;leur sp&eacute;cialis&eacute; qui r&eacute;alise
la loi de commande &agrave; la place du PC. Cette &eacute;tape se fait
en plusieurs phases. L'ordinateur travaille en flottant et le
microcontr&ocirc;leur en entier 8 bits, on doit v&eacute;rifier que la
quantification (erreurs d'arrondis) se fait bien et que la
balan&ccedil;oire arrive encore &agrave; &ecirc;tre stabilis&eacute;e
en pr&eacute;sence de cette quantification.</p>

<!-- Simul Scilab 1/4 helico + emul dsPIC -->
<p>La premi&egrave;re t&acirc;che consiste, alors, &agrave; concevoir
un logiciel &eacute;mulant le fonctionnant du microcontr&ocirc;leur
sp&eacute;cialis&eacute;, pour ajouter un bloc diagramme
'microcontr&ocirc;leur' dans le logiciel de calcul
num&eacute;rique. Ce nouveau bloc diagramme remplacera l'ancien bloc
diagramme 'contr&ocirc;leur'. Il permettra de v&eacute;rifier et de
corriger les erreurs de la quantification en simulation.</p>

<!-- 1/4 helico autonome avec 2 PICs -->
<p>La deuxi&egrave;me t&acirc;che consiste &agrave; ins&eacute;rer le
microcontr&ocirc;leur sp&eacute;cialis&eacute; sur la
balan&ccedil;oire. Elle poss&egrave;de alors 2
microcontr&ocirc;leurs. Le premier s'occupe de la communication avec
l'ordinateur et fait l'acquisition des donn&eacute;es de
l'acc&eacute;l&eacute;rom&egrave;tre (ou gyro) et continue &agrave;
envoyer le signal au moteur. Le deuxi&egrave;me fait les calculs de la
loi de commande. Il cumule les possibilit&eacute;s d'un
microcontr&ocirc;leur et d'un DSP on pense au dsPIC de Microchip pour
rester consistant avec le choix du premier microcontr&ocirc;leur. On
peut penser &agrave; simuler le r&eacute;seau de
microcontr&ocirc;leurs au moyen de logiciels tel que
Syndex. L'ordinateur ne fait plus de calcul mais envoie des consignes
et continue de g&eacute;rer le d&eacute;bugage. Il garde la
possibilit&eacute; de demander au microcontr&ocirc;leur (celui qui
g&egrave;re la communication) la main pour faire les calculs ou
l'acquisition de donn&eacute;es (mais en r&eacute;gime normal c'est le
microcontr&ocirc;leur sp&eacute;cialis&eacute; qui fait les calculs).</p>
ENDBOX

SUBSECTION(Troisi&egrave;me et quatri&egrave;me &eacute;tape :
Simulation et r&eacute;alisation d'un Quadrirotor,quad)
BOX
<p>A cette &eacute;tape, la balan&ccedil;oire peut marcher de fa&ccedil;on
autonome sans l'ordinateur, mais garde la possibilit&eacute; de
communiquer avec lui (d&eacute;bugage, ajout rapide de filtres,
etc.). Il reste ensuite &agrave; it&eacute;rer ces &eacute;tapes en
complexifiant le mod&egrave;le de l'h&eacute;licopt&egrave;re. D'o&ugrave;,
simulation compl&egrave;te du quadrirotor avec Scilab et apprentissage
de la m&eacute;canique du solide.</p>

<p>Si on dispose de suffisamment de temps, une r&eacute;alisation
compl&egrave;te du quadrirotor sera faite en utilisant la
m&eacute;thodologie mise au point sur la balan&ccedil;oire
(r&eacute;alisation d'une autre balan&ccedil;oire) et ajout de la
r&eacute;gulation des 3 axes de libert&eacute;s, d'abord sur le banc
d'essai (sur une rotule) puis en vol libre.</p>

<p>
Un r&eacute;sum&eacute; graphique des diff&eacute;rentes &eacute;tapes
du projet est montr&eacute; sur la LINK(helico/schemas/helicoiter.jpg,figure suivante).
</p>

FINALBOX(helico_intro,helico_mecanique)
END_BODY
HTML_FOOTER
