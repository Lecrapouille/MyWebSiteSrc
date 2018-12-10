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

SECTION(Contexte du stage)
SUBSECTION(Pr&eacute;sentation du stage de fin de tronc commun)
BOX
<p>J'ai &eacute;t&eacute; d&eacute;veloppeur stagiaire dans l'equipe
EXTLINK(http://www.inria.fr/recherche/equipes/aoste.fr.html,AOSTE)
&agrave; l'EXTLINK(http://www.inria.fr/,INRIA Rocquencourt) pour
une p&eacute;riode de 4 mois (de septembre 2005 jusqu'&agrave;
d&eacute;cembre 2005). Le but de mon stage &eacute;tait de concevoir un outil d'aide
&agrave; la conception des noyaux d'executif temps r&eacute;el
du logiciel EXTLINK(http://www-rocq.inria.fr/syndex/,SynDEx).</p>

<p>SynDEx est un logiciel de CAO niveau syst&egrave;me, supportant la
m&eacute;thodologie, pour le prototypage rapide et
pour optimiser la mise en oeuvre d'applications
distribu&eacute;es temps r&eacute;el embarqu&eacute;es.</p>

<p>C'est un logiciel graphique interactif qui offre les services
suivants :</p>
<ul>
  <li>sp&eacute;cification et v&eacute;rification d'un
  algorithme d'application saisi sous la forme d'un graphe flot de
  donn&eacute;es conditionn&eacute; (ou interface avec les langages
  Synchrones tels que SIGNAL),</li>
  <li>sp&eacute;cification d'un graphe d'architecture multicomposant
  (processeurs et/ou composants sp&eacute;cialis&eacute;s),</li>
  <li>heuristique pour la distribution et l'ordonnancement de l'algorithme
  d'application sur l'architecture, avec optimisation du temps de r&eacute;ponse,</li>
  <li>visualisation de la pr&eacute;diction des performances temps r&eacute;el pour le
  dimensionnement de l'architecture,</li>
  <li>g&eacute;n&eacute;ration des ex&eacute;cutifs distribu&eacute;s
  temps r&eacute;el, sans interblocage et principalement statiques, avec
  mesure optionnelle des performances temps r&eacute;el. Ceux-ci sont
  construits, avec un surcout minimal, &agrave; partir d'un noyau
  d'ex&eacute;cutif d&eacute;pendant du processeur cible.  Actuellement
  des noyaux d'ex&eacute;cutifs sont fournis pour : SHARC, TMS320C40, i80386, MC68332,
  i80C196 et stations de travail Unix ou Linux.  Des noyaux pour
  d'autres processeurs sont facilement port&eacute;s &agrave; partir des
  noyaux existants.</li>
</ul>

<p>Puisque les ex&eacute;cutifs distribu&eacute;s sont
g&eacute;n&eacute;r&eacute;s automatiquement, leur codage et leur mise
au point sont &eacute;limin&eacute;s, r&eacute;duisant de mani&egrave;re
importante le cycle de d&eacute;veloppement.</p>
ENDBOX

SUBSECTION(L'INRIA Rocquencourt)
BOX
<p>Faisant suite &agrave; l'IRIA cr&eacute;&eacute; en 1967, l'INRIA
est un &eacute;tablissement public &agrave; caract&egrave;re
scientifique et technologique (EPST) plac&eacute; sous la double
tutelle du ministre charg&eacute; de la Recherche et de
l'Industrie.</p>

<p>Les missions qui lui ont &eacute;t&eacute; confi&eacute;es sont :</p>
<ul>
<li>entreprendre des recherches fondamentales et appliqu&eacute;es,</li>
<li>r&eacute;aliser des syst&egrave;mes exp&eacute;rimentaux,</li>
<li>organiser des &eacute;changes scientifiques internationaux,</li>
<li>assurer le transfert et la diffusion des connaissances et du
savoir-faire,</li>
<li>contribuer &agrave; la valorisation des r&eacute;sultats de recherches,</li>
<li>contribuer, notamment par la formation, &agrave; des programmes de
coop&eacute;ration avec des pays en voie de d&eacute;veloppement,</li>
<li>effectuer des expertises scientifiques.</li>
</ul>

<p>Les chercheurs en math&eacute;matiques, automatique et informatique de l'INRIA
collaborent dans les cinq th&egrave;mes suivants :</p>
<ul>
<li>syst&egrave;mes communicants,</li>
<li>syst&egrave;mes cognitifs,</li>
<li> syst&egrave;mes symboliques,</li>
<li>syst&egrave;mes num&eacute;riques,</li>
<li> syst&egrave;mes biologiques.</li>
</ul>
ENDBOX

SUBSECTION(Projet AOSTE Rocquencourt)
BOX
<p>Le sujet de ce stage s'inscrit dans les activit&eacute;s du projet
AOSTE : Mod&egrave;les et M&eacute;thodes pour l'Analyse et
l'Optimisation des Syst&egrave;mes Temps-R&eacute;el
Embarqu&eacute;s. Ce projet est bilocalis&eacute; &agrave;
Rocquencourt et Sophia Antipolis.</p>

<p>Les travaux de l'&eacute;quipe concernent quatre axes de recherche :</p>
<ul>
<li>la mod&eacute;lisation de tels syst&egrave;mes &agrave; l'aide de
la th&eacute;orie des graphes et des ordres partiels,</li>
<li>l'optimisation d'implantation &agrave; l'aide :
 -- d'algorithmes d'ordonnancement temps r&eacute;el dans le cas
    monoprocesseur, -- d'heuristiques de distribution et
    ordonnancement temps r&eacute;el dans le cas
multicomposant (r&eacute;seau de processeurs et de circuits
int&eacute;gr&eacute;s),</li><li>les techniques de
g&eacute;n&eacute;ration automatique de code pour processeur et pour
circuit int&eacute;gr&eacute;, en vue d'effectuer du
co-d&eacute;veloppement logiciel-mat&eacute;riel,</li>
<li>la tol&eacute;rance aux pannes.</li>
</ul>

<p>Tous ces travaux sont r&eacute;alis&eacute;s avec l'objectif de
faire le lien entre l'automatique et l'informatique en cherchant
&agrave; supprimer la rupture entre la phase de
sp&eacute;cification/simulation et celle d'implantation temps
r&eacute;el, ceci afin de r&eacute;duire le cycle de
d&eacute;veloppement des applications distribu&eacute;es temps
r&eacute;el embarqu&eacute;es.</p>

<p>Ils ont conduit d'une part &agrave; une m&eacute;thodologie
appel&eacute;e AAA (Ad&eacute;quation Algorithme Architecture) et
d'autre part &agrave; un logiciel de CAO niveau syst&egrave;me pour
l'aide &agrave; l'implantation de syst&egrave;mes distribu&eacute;s
temps r&eacute;el embarqu&eacute;s, appel&eacute; SynDEx.</p>
ENDBOX
END_BODY

HTML_FOOTER
