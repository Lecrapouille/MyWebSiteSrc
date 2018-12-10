DEF_TITLE(Aide &agrave; l'&eacute;criture de noyaux d'ex&eacute;cutif
pour le logiciel SynDEx)
 HTML_HEADER()

HEADER_TITLE
HEADER_MENU(CV,cv,Stage,X,ASE,ase,BSP,bsp,Dynamique,dyna,SpeedWay,speedway,Ecstasy,ecstasy,SimTaDyn,simtadyn,Forth,myforth,Helico,helico_intro,Home,index)

LEFT_MENU(
LEFT_RUBRIC(Sommaire,Presentation,syndex_presentation-LANG.html,Travail,syndex_travail-LANG.html,Downloads,syndex_downloads-LANG.html),
XHTML_VALIDATOR<br />
PRINT_MAJ)

BEGIN_BODY

SECTION(R&eacute;sum&eacute; de mes activit&eacute;s)
SUBSECTION(Travail accompli,trav)

<p>Apr&egrave;s mon travail, gr&acirc;ce &agrave; un outil appel&eacute;,
Editeur de Code il est possible d'associer un code source &agrave; des
op&eacute;rations provenant d'une application SynDEx. Un Editeur de Code
est un simple &eacute;diteur de texte affichant le code source aux
associ&eacute; aux diff&eacute;rentes phases d'une op&eacute;ration SynDEx.</p>
<p>Le texte ins&eacute;r&eacute; par l'utilisateur est automatiquement
format&eacute; dans un language m4 avec un squelette
sp&eacute;cifique &agrave; SynDEx. La syntaxe complexe du langage m4 est alors
cach&eacute;e &agrave; l'utilisateur. Celui-ci n'a plus
qu'&agrave; se soucier de l'inpl&eacute;mentation de son code et la
seule syntaxe reste celle du language cible (C, assembleur, etc).</p>

SUBSECTION(Chronologie,chron)
<p>Les trois premiers mois de mon stage ont &eacute;t&eacute;
r&eacute;parties de la fa&ccedil;on suivante :</p>
<ul>
  <li>Une p&eacute;riode de deux semaines pour comprendre la
  m&eacute;thodologie AAA en lisant de la documentation. De
  ma&icirc;triser le fonctionnement de SynDEx en lisant des
  tutoriaux.</li>
  <li>Deux p&eacute;riodes de deux semaines pour concevoir
  l'&eacute;diteur de code sous la forme d'une IHM en CamlTk.</li>
<li>Deux semaines pour finir de d&eacute;boguer l'IHM et faire un
  portage sur Mac OS X.</li>
<li>Trois semaines pour &eacute;crire un premier tutorial consernant
le fonctionnement de l'&eacute;diteur de code.</li>
<li>Durant les trois premiers mois, en parall&egrave;le au stage, j'ai
&eacute;tudi&eacute; une introduction &agrave; l'automatique, j'ai
appris &agrave; utilis&eacute; Scicos l'&eacute;diteur de bloc
diagrammes du logiciel Scilab. Cette initiative personnelle fut
encourag&eacute;e par mon maitre de stage afin de cr&eacute;er un
exemple en automatique pour d&eacute;tecter d'&eacute;ventuels bogues
dans SynDEx.</li>
<li>Deux semaines furent n&eacute;cessaire pour &eacute;crire un
deuxi&egrave;me tutorial afin d'expliquer le fonctionnement de
l'exemple. Il simule le fonctionnement d'une voiture suivant une autre
et gardant une distance alors que la premi&egrave;me peut
acc&eacute;lerer ou ralentir.</li>
<li>J'ai particip&eacute; &agrave; trois r&eacute;unions avec un des
utilisateur-clients principaux de SynDEx.</li>
</ul>

SUBSECTION(Appr&eacute;ciations par l'utilisateur
industriel MBDA de l'Editeur de Code,app)

<p>Ce travail &eacute;tait demand&eacute; par un des principaux utilisateur-clients de SynDEx. Ils ont pu tester mon travail et ont
appr&eacute;ci&eacute; les points suivants :</p>
<ul>
  <li>Les ports d'entr&eacute;es-sorties d'un op&eacute;rateur ne sont
  plus d&eacute;sign&eacute;s par leurs positions relatives
  mais, maintenant, par leurs noms. Ceci permet d'&eacute;viter de
  nombreux probl&egrave;mes lors de la g&eacute;n&eacute;ration de code lorsqu'elle
  devait &ecirc;tre fait &agrave; la main.</li>
  <li>Le code est maintenant lisible, puisque le squelette en language
  m4 a disparut.</li>
  <li>Tous les moyens d'&eacute;dition de code sont directement
  int&eacute;gr&eacute;s dans l'IHM de SynDEx.</li>
</ul>

SUBSECTION(Exp&eacute;rience acquise,exp)
<p>Ce stage m'a permis de me perfectionner dans les points suivants :</p>
<ul>
<li>De d&eacute;couvrir les probl&egrave;mes d'ordonnancement et de
temps r&eacute;el,</li>
<li>D'avoir eu une introduction aux probl&egrave;mes d'automatique.</li>
<li>De progresser dans la connaissance du language OCaml (pour
l'anecdote : notre &eacute;quipe partage le meme batiment que les
cr&eacute;ateurs de Caml).</li>
</ul>

END_BODY

HTML_FOOTER
