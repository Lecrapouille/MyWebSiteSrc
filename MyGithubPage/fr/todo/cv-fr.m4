define([ENDBOX],[</div>])dnl

DEF_TITLE(Quentin Quadrat - Etudiant ing&eacute;nieur informaticien syst&egrave;mes temps r&eacute;el)
HTML_HEADER
HEADER_TITLE

HEADER_MENU(CV,X,Stage,syndex_presentation,ASE,ase,BSP,bsp,Dynamique,dyna,SpeedWay,speedway,Ecstasy,ecstasy,SimTaDyn,simtadyn,Forth,myforth,Helico,helico_intro,Home,index)

LEFT_MENU(
LEFT_RUBRIC(Sommaire,Coordonn&eacute;es,#coor,Etudes et comp&eacute;tences,#etudes,Projets informatiques &agrave; EPITA,#proj,Exp&eacute;riences professionnelles,#exp,Divers,#divers))

BEGIN_BODY

<!-- CENTER(HUDGE(STRONG(Je recherche une offre de stage de 6 mois dans le domaine du
temps r&eacute;el et de l'embarqu&eacute; (janvier ==> juin 2007)))) -->

SECTION(Coordonn&eacute;es,coor)
BOX
<p class="coordo">
  <img class="photocoordo" src="img/quentin.jpg" alt="Quentin QUADRAT">
  9 rue du Moulin des Pr&eacute;s<br />
  75013 Paris<br />
  T&eacute;l. 01 53 62 02 74<br />
  23 ans, c&eacute;libataire, n&eacute; &agrave; Versailles le 23/08/83<br />
  E-mail: <a href="mailto:quentin.quadrat@free.fr">quentin.quadrat@free.fr</a><br />
  dnl	Page web: <a href="http://quentin.quadrat.chez-alice.fr">http://quentin.quadrat.chez-alice.fr</a><br />
  Page web: LINK(http://quentin.quadrat.free.fr)<br />
  Mon CV au format PDF EXTLINK(cv/QuentinQuadrat-cv-en.pdf,Anglais), Fran&ccedil;ais.<br />
</p>
ENDBOX

SECTION(Etudes et comp&eacute;tences,etudes)
BOX
SUBSECTION(Cursus scolaire)
<ul>
<li>STRONG(2001 -- 2005) <p>Etudes en cours &agrave; l'EXTLINK(http:/www.epita.fr,EPITA) (Ecole Pour
  l'Informatique et les Techniques Avanc&eacute;es) avec cycle
  pr&eacute;paratoire int&eacute;gr&eacute; en deux ans. D&eacute;but
  de deuxi&egrave;me ann&eacute;e d'ing&eacute;nierie avec
  sp&eacute;cialisation en GISTR (G&eacute;nie Informatique des
  Syst&egrave;mes Temps R&eacute;el).</p>
</li>
<li>STRONG(2000 -- 2001)
<p>Bac scientifique au EXTLINK(http://www.ac-versailles.fr/etabliss/lyc-viollet-le-duc/,Lyc&eacute;e Polyvalent Viollet-le-Duc).</p>
</ul>
ENDBOX

BOX
SUBSECTION(Langues pratiqu&eacute;es)
<ul>
  <li><b>Anglais</b> Niveau courant (TOEIC 750)</li>
  <li><b>Espagnol</b> Niveau lyc&eacute;e</li>
</ul>
ENDBOX

BOX
SUBSECTION(Connaissances en informatique)
<ul>
  <li>STRONG(Langages) C, C++, Java, OCaml, Delphi, Ruby, Scripts Shell,
    Forth, Common Lisp, assembleur PIC.</li>
  <li>STRONG(Outils) Flex, Bison, Camllex, Camlyacc, PostgreSQL, GTK,
    CamlTk, OpenGL, LaTeX, HTML, M4, CVS.</li>
  <li>STRONG(O.S.) Mac Os X, Linux, Unix BSD, Windows CE, QNX.</li>
  <li>STRONG(Mod&eacute;lisation) UML RT, SA-RT.</li>
  <li>STRONG(Logiciels) Scilab, Mathlab, Scicos, Simulink, SynDEx,
  Emacs, Eclipse, MaxPlus2, Mplab.</li>
  <li>STRONG(Connaissances) Automatique, &eacute;l&eacute;ments finis,
  &eacute;lectronique.</li>
</ul>
ENDBOX

SECTION(Projets &agrave; l'EPITA,proj)
BOX
SUBSECTION(Projets temps r&eacute;el)
<ul>
  <li>STRONG(EXTLINK(helico_intro-LANG.html,Draganflyer)) (projet en cours) Etude
    et r&eacute;alisation d'un mod&egrave;le r&eacute;duit
    d'h&eacute;licopt&egrave;re &agrave; quatre h&eacute;lices. L'appareil
    doit se stabiliser seul.</li>
  <li>STRONG(Microprocesseur) Conception et r&eacute;lisation d'un
    microprocesseur RISC avec le logiciel MaxPlus2.
  </li>
</ul>
ENDBOX

BOX
SUBSECTION(Programmation Unix)
<ul>
  <li>STRONG(C/Unix) Nombreux projets en C recr&eacute;ant le
    fonctionnement d'outils Unix (allocateur de m&eacute;moire,
    entr&eacute;es-sorties tampon&eacute;es, pattern matching)
    ou utilisant des outils Unix (processus lourds et l&eacute;gers, signaux, watch dog).</li>
  <li>STRONG(42sh) Interpr&eacute;teur de commandes shell (Bash)
    &eacute;crit en C (1 mois, 6 personnes).</li>
</ul>
ENDBOX

BOX
SUBSECTION(Th&eacute;orie des langages : interpr&eacute;teur et compilateur)
<ul>
  <li>STRONG(Tiger) Compilateur du langage Tiger &agrave; partir d'un code
    &agrave; trous &eacute;crit en C++, Flex et Bison (4 mois, 4 personnes).</li>
  <li>STRONG(Lisp) Interpr&eacute;teur Common Lisp en OCaml (7 jours, 3
    personnes).</li>
  <li>STRONG(Corewar) Machine virtuelle executant des programmes &eacute;crits en langage assembleur.</li>
  <li>STRONG(EXTLINK(myforth-LANG.html,Forth)) Interpr&eacute;teur Forth (projet personnel).</li>
</ul>
ENDBOX

BOX
SUBSECTION(Projets math&eacute;matiques)
<ul>
  <li>STRONG(Recalage) Trouver la transformation rigide qui met en correspondance un nuage de points avec une surface.</li>
  <li>STRONG(EDP) R&eacute;solution d'une &eacute;quation aux d&eacute;riv&eacute;es partielles avec la m&eacute;thode des diff&eacute;rences finies.</li>
  <li>STRONG(Bistro) Calculatrice &agrave; grand nombres (15 jours, 2
personnes).</li>
</ul>
ENDBOX

BOX
SUBSECTION(Projets libres durant le cycle pr&eacute;paratoire)
<ul>
  <li>STRONG(EXTLINK(simtadyn-LANG.html,SimTaDyn)) Syt&egrave;me d'informations de cartes
    g&eacute;ographiques fusionnant le principe d'un
    tableur Excel &agrave; celui d'un &eacute;diteur de carte g&eacute;ographique. Le
    tout &eacute;tant programmable gr&acirc;ce un interpr&eacute;teur Forth (1 an,
    3 personnes, cahier des charges et rapport d'activit&eacute;).</li>
  <li>STRONG(EXTLINK(ecstasy-LANG.html,Ecstasy)) Simulation simplifi&eacute;e de la dynamique
    d'une voiture et de la circulation automobile dans une
    ville. Affichage en 3D (1 an, 2 personnes, cahier des charges et
    rapport d'activit&eacute;).</li>
</ul>
ENDBOX

SECTION(Exp&eacute;riences professionnelles,exp)
BOX
SUBSECTION(INRIA : Septembre -- D&eacute;cembre 2005)
<p>D&eacute;veloppeur stagiaire &agrave; l'INRIA pour cr&eacute;er un
outil d'aide &agrave; la conception de noyau applicatif temps r&eacute;el pour le
logiciel SynDEx :</p>
<ul>
  <li>Cr&eacute;ation d'une IHM pour formater automatiquement
    le code source de l'utilisateur dans un language m4 avec
    un squelette sp&eacute;cifique &agrave; SynDEx.
    Langages utilis&eacute;s : OCaml, CamlTk, Camllex, Camlyacc.</li>
  <li>R&eacute;daction de tutoriaux sur SynDEx et cr&eacute;ation d'une
    application simple en automatique. Logiciels utilis&eacute;s : SynDEx,
    Scilab, Scicos.</li>
</ul>
ENDBOX

BOX
SUBSECTION(CERMICS : Juillet -- Ao&ucirc;t 2004)
<p>D&eacute;veloppeur stagiaire au CERMICS pour l'aide au
d&eacute;veloppement du programme Scilab. Cr&eacute;ation d'un
p&eacute;riph&eacute;rique OpenGL pour l'&eacute;limination de parties
cach&eacute;es lors d'affichage d'objets en 3D.</p>
ENDBOX

SECTION(Divers,divers)
BOX
<ul>
  <li>Permis de conduire.</li>
  <li>Echecs, nombreuses  comp&eacute;titions (niveau &eacute;lo 2000, 9 ans).</li>
  <li>Voyages linguistiques en Angleterre.</li>
</ul>
ENDBOX

END_BODY
HTML_FOOTER
