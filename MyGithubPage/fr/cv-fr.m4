TITLE(Quentin Quadrat - Ing�nieur informaticien syst�mes temps r�el)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Curriculum vitea CV resume Quentin Quadrat)
DESCRIPTION(Curriculum vitea Quentin Quadrat)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_CV)

BEGIN_BODY
FORKME()

SECTION(Coordonn�es,coor)
TABLE(2,
  [Quentin QUADRAT<br />
  E-mail: quentin quadrat gmail com<br />
  Page web: LINK(https://lecrapouille.github.io)<br />
  GitHub: MYGITHUB()<br />],
  [Mon CV au format PDF EXTLINK(cv/CV.pdf,Anglais)])

SECTION(Etudes et comp�tences,etudes)

SUBSECTION(Cursus scolaire)
LIST(STRONG(2007:) [Dipl�m� de l'EXTLINK(http:/www.epita.fr,EPITA) (Ecole Pour l'Informatique
et les Techniques Avanc�es) avec cycle pr�paratoire int�gr� en deux ans. D�but
de deuxi�me ann�e d'ing�nierie avec sp�cialisation en GISTR (G�nie
Informatique des Syst�mes Temps R�el).],
STRONG(2000:) Bac scientifique.,
STRONG(Anglais) Niveau courant (TOEIC 750).,
STRONG(Espagnol) Niveau lyc�e.)

SUBSECTION(Connaissances en informatique)
LIST(
STRONG(Langages) [C, C++11, Esterel, OCaml, Delphi, Forth, Julia.],
STRONG(GNU/Linux) [git, bash, M4, Makefile, gdb(server), valgrind, emacs, flex/bison],
STRONG(Lib) [GTKmm, OpenGL core, LaTeX],
STRONG(CI/Tests) [gmock/gtest, crpcut, cppunit, gcov, Travis-CI, OpenSuse Build, Coverity Scan],
STRONG(Sys. Analyse) [Real-Time Structured methods (SART), plantuml],
STRONG(Embarqu�) [Digital electronics, oscilloscopes, Cypress PsoC3/5,
  Active Semi PAC2553, Cortex M0, PIC16F (assembly language), dsPIC30F
  (C language), UART, I$^2$C, SPI],
STRONG(Contr�le/TR) [Scilab, Scicos, SynDEx])

SECTION(Exp�riences professionnelles,exp)

SUBSECTION(Parrot Faurecia Automotive: 2017 -- maintenant)

<p>D�veloppeur C++ middleware sur Android pour les</p>

SUBSECTION(Parrot Drones: 2010 -- 2017)

<p>D�veloppeur C/bas niveau du contr�le moteur sur plusieurs g�n�rations de
drones: AR Drone 2 jusqu'au Bebop 2.</p>

SUBSECTION(Consultant: 2007 -- 2010)

<p>Analyse et d�bogue du code source de la centrale inertielle d'un avion.</p>

SUBSECTION(INRIA : Septembre -- D�cembre 2005)
<p>D�veloppeur stagiaire � l'INRIA pour cr�er un outil d'aide � la conception de
   noyau applicatif temps r�el pour le logiciel SynDEx :</p>

LIST(
[Cr�ation d'une IHM pour formater automatiquement le code source de
 l'utilisateur dans un language m4 avec un squelette sp�cifique � SynDEx.
 Langages utilis�s : OCaml, CamlTk, Camllex, Camlyacc.],
[R�daction de tutoriels sur SynDEx et cr�ation d'une application simple en
 automatique. Logiciels utilis�s : SynDEx, Scilab, Scicos.])

SUBSECTION(CERMICS : Juillet -- Ao�t 2004)

<p>D�veloppeur stagiaire au CERMICS pour l'aide au d�veloppement du programme
   Scicoslab. Cr�ation d'un p�riph�rique OpenGL pour l'�limination de parties
   cach�es lors d'affichage d'objets en 3D.</p>

SECTION(Projets � l'EPITA,proj)
SUBSECTION(Projets temps r�el)

LIST(
STRONG(EXTLINK(helico_intro-LANG.html,H�licopt�re 4 rotors))
[Etude et r�alisation d'un mod�le r�duit d'h�licopt�re � quatre
 h�lices. L'appareil doit se stabiliser seul.],
STRONG(Microprocesseur)
[Conception et r�alisation d'un microprocesseur RISC avec le logiciel MaxPlus2])

SUBSECTION(Programmation Unix)

LIST(
STRONG(C/Unix)
[Nombreux projets en C recr�ant le fonctionnement d'outils Unix (allocateur de
m�moire, entr�es-sorties tamponn�es, pattern matching) ou utilisant des outils
Unix (processus lourds et l�gers, signaux, watch dog).],

STRONG(42sh)
[Interpr�teur de commandes shell (Bash) �crit en C (1 mois, 6 personnes).])

SUBSECTION(Th�orie des langages : interpr�teur et compilateur)
<ul>
  <li>STRONG(Tiger) Compilateur du langage Tiger � partir d'un code
    � trous �crit en C++, Flex et Bison (4 mois, 4 personnes).</li>
  <li>STRONG(Lisp) Interpr�teur Common Lisp en OCaml (7 jours, 3
    personnes).</li>
  <li>STRONG(Corewar) Machine virtuelle ex�cutant des programmes �crits en langage assembleur.</li>
  <li>STRONG(EXTLINK(myforth-LANG.html,Forth)) Interpr�teur Forth (projet personnel).</li>
</ul>

SUBSECTION(Projets math�matiques)
<ul>
  <li>STRONG(Recalage) Trouver la transformation rigide qui met en correspondance un nuage de points avec une surface.</li>
  <li>STRONG(EDP) R�solution d'une �quation aux d�riv�es partielles avec la m�thode des diff�rences finies.</li>
  <li>STRONG(Bistro) Calculatrice � grand nombres (15 jours, 2
personnes).</li>
</ul>

SUBSECTION(Projets libres durant le cycle pr�paratoire)
<ul>
  <li>STRONG(EXTLINK(simtadyn-LANG.html,SimTaDyn)) Syst�me d'informations de cartes
    g�ographiques fusionnant le principe d'un
    tableur Excel � celui d'un �diteur de carte g�ographique. Le
    tout �tant programmable gr�ce un interpr�teur Forth (1 an,
    3 personnes, cahier des charges et rapport d'activit�).</li>
  <li>STRONG(EXTLINK(ecstasy-LANG.html,Ecstasy)) Simulation simplifi�e de la dynamique
    d'une voiture et de la circulation automobile dans une
    ville. Affichage en 3D (1 an, 2 personnes, cahier des charges et
    rapport d'activit�).</li>
</ul>

SECTION(Divers,divers)
LIST([Permis de conduire.], [Echecs: nombreuses  comp�titions (niveau �lo 2000, 9 ans).],
[Aime les jeux de r�les et l'aquariophilie.])

END_BODY(,,,)
