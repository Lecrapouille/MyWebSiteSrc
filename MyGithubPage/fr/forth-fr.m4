TITLE(Interpr�teur Forth)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Forth language)
DESCRIPTION(A introduction to Forth language)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_TUTO)

BEGIN_BODY
SECTION(Le langage Forth)
SUBSECTION(ICON_READ,R�f�rences � Forth,ref)

<p>Le but de ce document est de faire d�couvrir (ou red�couvrir) le
langage Forth cr�� par Charles Moore, d'expliquer son fonctionnement interne et de mieux
faire comprendre certains mots dits STRONG(de hauts niveaux). Ce
document montre aussi qu'il existe, non pas un unique langage Forth
standardis� mais des Forth personnalis�s et adapt�s � chaque projet.
Avant de poursuivre la lecture de ce tutoriel, voici une s�lection non
exaustive d'ouvrages et de liens que je recommande de lire. Je sugg�re
aux lecteurs qui n'ont jamais connu ce langage de s'initier avec les
quatre premiers liens puis, si possible le livre de W.P. Salman,
O. Tisserand, B. Toulout qui est, selon moi, un livre de r�f�rence
expliquant compl�tement le fonctionnement interne du Forth.</p>

LIST(
ICON_FR EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,Un
cours) [acad�mique sur le Forth. Ce document est int�ressant car il
parle de la derni�re variante de Forth invent� par Moore: colorForth.],

ICON_EN EXTLINK(https://www.forth.com/starting-forth/,Starting Forth)
[est le cours d'introduction p�dagogique recommand� pour s'initier � ce
langage.],

ICON_EN ICON_FR EXTLINK(https://www.amazon.com/FORTH-W-P-SALMAN/dp/0387912568/,Forth)
[W.P. Salman, O. Tisserand, B. Toulout. Edition Macmillan (english
version) ou Edition Eyrolles (french version) 1983. (ISBN-13:
978-0387912561, ISBN-10: 0387912568) est un excellent livre d�crivant
de fa�on compl�te la th�orie du fonctionnement d'un interpr�teur
Forth. Avec ce livre seul, il est possible de re-cr�er son propre
Forth. A noter que la version fran�aise 1983 contient quelques erreurs
de typographie dans du code Forth corrig�es dans la version anglaise
(et probablement la version fran�aise de 1984).],

ICON_EN EXTLINK(http://git.annexia.org/?p=jonesforth.git;a=blob;f=jonesforth.S;h=45e6e854a5d2a4c3f26af264dfce56379d401425;hb=HEAD,JonesForth)
[Un excellent tutoriel sur l'impl�mentation d'un interpr�teur Forth
�crit en assembleur i386. Cet document compl�te le livre de
W.P. Salman pour la clart� de ses explications et de son
impl�mentation tr�s claire en code assembleur (il existe des versions
de ce code pour d'autre assembleur et dont un fonctionnant pour
Arduino Due, voir lien suivant). L'interpr�teur n'est pas complet mais
les explications y sont plus claires.)],

ICON_EN EXTLINK(https://github.com/ekoeppen/CoreForth, CoreForth) [un
  Forth pour Cortex M0 et M3. Fonctionne chez moi avec une carte
  EXTLINK(https://www.arduino.cc/en/Main/arduinoBoardDue,Arduino Due).],

ICON_EN EXTLINK(https://www.amazon.com/Object-Oriented-Forth-Dick-Pountain/dp/0125635702,Object
Oriented Forth) [Livre expliquant comment faire �voluer son Forth pour
le programmer fa�on objet. Mon deuxi�me livre coup de coeur concernant Forth.],

ICON_FR EXTLINK(https://www.amazon.fr/Concept-Forth-Langage-syst%C3%A8me-dexploitation/dp/2866990110,
Le Concept Forth) [de Pascal Courtois (fran�ais, ISBN-10:
2866990110, ISBN-13: 978-2866990114). Explique les mots de base,
comment fonctionne un interpr�teur Forth mais est moins complet que le
livre Forth de W.P. Salman. On peut trouver des extraits sur le site de developpez.net
(avec l'aimable autorisation de son auteur). Il donne des programmes
assembleur sur des interpr�teurs Forth mais ils sont difficilement
compr�hensibles et pour des vieux micro et il vaudra mieux se baser le
lien pr�c�dent.],

ICON_FR EXTLINK(http://jpb.forth.free.fr/,Entrer dans le monde du
Forth) [Tr�s belle r�alisation de cartes �lectroniques pour syst�mes
Forth. Les explications sont claires mais peu nombreuses.],

ICON_EN EXTLINK(http://thinking-forth.sourceforge.net/,Thinking Forth)
[Livre pour les d�veloppeurs mod�r�s en Forth donnant des conseils sur
comment bien penser son projet en Forth. Ce livre est destin� pour les
enthousiastes non d�butants.],

ICON_EN EXTLINK(http://lars.nocrew.org/forth2012/core.html,forth2012) le
glossaire Forth ANSI 2012.
)

<p>Voici une liste non exhaustive de Forth non payants :</p>

LIST(
ICON_EN EXTLINK(https://www.gnu.org/software/gforth/,gForth) le Forth GNU
toujours activement d�velopp� et servant de r�f�rence.,

ICON_EN EXTLINK(https://thebeez.home.xs4all.nl/4tH/4tHmanual.pdf,4th)
un Forth consid�r� comme ne crashant jamais.,

ICON_EN ICON_FR EXTLINK(http://christophe.lavarenne.free.fr/ff/,FreeForth) un Forth
fait par Christophe Lavarenne o� le mode ex�cution n'existe plus et
est remplac� par la compilation d'un mot anonyme.,

ICON_EN EXTLINK(http://www.softsynth.com/pforth,pForth) un Forth connu
  � son �poque et portable en C mais n'est plus d�velopp�.,

ICON_EN EXTLINK(https://github.com/seanpringle/reforth,reForth) un
  Forth �crit en C avec des modifications int�ressantes vis � vis des
  Forth standards. Il n'est plus d�velopp�.,

ICON_EN ICON_FR MYGITHUB(SimForth, SimForth) [mon interpr�teur Forth
fait maison �crit en C++ pour les besoins de mon projet
personnel de cartes g�ographiques MYLINK(simtadyn, SimTaDyn). Il est inspir� de pForth
et du livre et cr�� contenant son mon interpr�teur Forth. J'utilise l'h�ritage du
C++ pour avoir � la fois un interpr�teur Forth classique (compilable
s�par�ment du projet principal), tout en ayant un interpr�teur
sp�cialis� pour mes cartes g�ographiques.])

SUBSECTION(ICON_READ,Histoire du Forth,intro)

<p>Forth est un langage invent� par Charles H. Moore dans les ann�es
1970 afin de palier la lourdeur des langages de l'�poque incompatibles
pour des applications temps r�el, Moore travaillant � l'�poque �
l'Observatoire National de Radio-Astronomie des Etats-Unis. Forth a
�t� con�u pour �tre le plus simple et minimaliste possible o� avec
environ 150 mots du langage, un petit syst�me d'exploitation peut �tre
cr��. Forth fut, par la suite, devenu un langage largement utilis�
dans ce milieu (comme par la NASA) mais aussi pour des machines
personnelles telles que le Machintosh avec le MacForth (pour ne citer
que lui). Forth a �t� utilis�, � ces �poques, en industrie pour tester
et d�boguer les registres des nouveaux chips (SoC). Actuellement, le
prix du stockage m�moire ayant fortement baiss� et la puissance brute
en calcul augment�e, l'optimisation des ressources des syst�mes
embarqu�s est devenu moins critique, ce langage est devenu beaucoup
moins � la mode l� o� le C demeure toujours en ma�tre.</p>

<p>Comme nous allons le d�tailler tout le long de ce document, faire
son propre interpr�teur Forth est relativement ais�, chacun pouvant impl�menter
le sien mais pas forc�ment compatible avec celui d'un autre. Cela fut
un point noir de ce langage, qui malgr� plusieurs tentatives de
standards (78, 79, 83, 2012 ...) pour normaliser les mots les plus
courants, ne furent pas forc�ment b�n�fique au langage: Charles H. Moore
est toujours actif mais il a quitt� le
consortium, jugeant que la normalisation nuisait � l'innovation de
nouveaux Forth. Il a ainsi pu continuer � simplifier les structures
Forth comme expliqu� dans
EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,le
lien suivant[,] section Structures simplifi�es). Avec
EXTLINK(https://blogs.msdn.microsoft.com/ashleyf/2013/11/02/the-beautiful-simplicity-of-colorforth/,colorForth)
Moore a ajout� un r�le aux mots en leur ajoutant une
EXTLINK(http://www.profibing.de/colorforth/display.html,couleur).
Pour plus d'information conf�re ce
EXTLINK(http://www.figuk.plus.com/articles/chuck.pdf,document).
Moore a �galement fond� GreenArrays Inc. qui produit des puces
EXTLINK(http://bitlog.it/programming-languages/getting-started-with-the-ga144-and-arrayforth/,GA144)
contenant un r�seau communicant de sous-processeurs Forth dont le
EXTLINK(https://www.google.com/patents/US7752422,brevet) explique
clairement le fonctionnement (et est tr�s lisible pour un brevet).</p>

<p>Nous allons, tout au long de ce document, revenir sur chaque
�l�ments de la d�finition, mais en quelques mots Forth peut-�tre
r�sum� � :</p>

LIST(un langage � piles;,

un langage extensible avec une syntaxe auto-�volutive (r�-entrance[,] m�taprogrammtion);,

semi-compil� (embarquant son propre compilateur hybrid� avec un interpr�teur);,

peut �tre vu comme un syst�me d'exploitation car il est � la fois un
langage[,] une machine virtuelle car Forth sait g�rer sa propre
m�moire de masse et dispose d'entr�es/sorties;,

il est � la fois un langage bas-niveau (manipulant de l'assembleur et
des registres hardware) et un langage haut-niveau (abstraction des
donn�es[,] faible couplage[,] peut �tre orient� objet[,] etc);,

bien que la plupart des langages soient complets au sens de Turing[,]
Forth offre � l'utilisateur la possibilit� d'acc�der directement aux
diff�rents �l�ments d'une machine de Turing (ruban infini[,] t�te de
lecture/�criture[,] registre d'�tat[,] table d'actions.))

SUBSECTION(ICON_EYES,Coloration syntaxique,color)

<p>Pour ce document, nous allons, concernant la coloration syntaxique,
   prendre une convention qui n'est pas officielle mais inspir�e de
   ColorForth, mais dans ce document la couleur est purement
   d�corative, contrairement � ColorForth qui ajoute une information
   aux mots Forth pour le compilateur:</p>

TABLE(3, Couleur:, Mode de l'interpr�teur:, Commentaire:,
STRONG(En gras), ignor�, Les commentaires,
GREY(En gris), compilation/ex�cution, les mots manipulant les nombres dans la pile des donn�es,
RED(En rouge), compilation, la d�finition d'un nouveau mot,
ORANGE(En orange), compilation, les mots imm�diats,
BLUE(En bleu), ex�cution, les litt�raux,
GREEN(En vert), ex�cution, saute sur la d�finition d'un mot non primitif)

LIST(RED(En rouge) les litt�raux;,GREEN(En vert) la d�finition d'un
   nouveau mot;,ORANGE(les mots imm�diats);,BLUE(En bleu) les mots de
   structure conditionnelle;,GREY(En gris) les commentaires.)</p>

SUBSECTION(ICON_EYES,Rapide aper�u de la th�orie des langages,theo)

<p>Le but de cette section n'est pas d'expliquer la th�orie des
langages mais plut�t de faire resentir au lecteur la difficult� de ce
sujet et par contraste de montrer la simplicit� du langage Forth. Par
cons�quent, cette section empruntera de grossiers racourcis.</p>

<p>Pour rappel et faire tr�s simple, en th�orie des langages, un
ITALIC(compilateur) est un outil qui transforme un langage
informatique en un autre langage. Par exemple du langage C au langage
machine directement ex�cutable. Pour cela un compilateur utilise
g�n�ralement deux outils:</p>

LIST(Un ITALIC(lexer) est un outil d'analyse lexicale qui convertit un
texte (entr�e) en une liste d'unit� lexicale (sortie) appel�e
ITALIC(symboles) (tokens en anglais).,

Cette liste est ensuite consomm�e par un second outil appel� ITALIC(parser) qui
retourne un EXTLINK(https://en.wikipedia.org/wiki/Abstract_syntax_tree,arbre de
syntaxe) abstraite (AST en anglais) o� les noeuds de cet arbre sont les
op�rateurs et les feuilles les op�randes et que l'on visite avec un parcours
EXTLINK(https://fr.wikipedia.org/wiki/Parcours_d%27arbre,main-gauche). Le terme
ITALIC(abstrait) vient du fait qu'un
EXTLINK(https://en.wikipedia.org/wiki/Parse_tree,Parse tree) est une
repr�sentation concr�te et compl�te du texte alors que l'AST ne garde que
certains de ces �l�ments.)

<p>Une fois l'AST construit, cette structure est plus simple pour le
compilateur de la travailler. Un compilateur C aurait analyser un certain
nombre fois une analyse de l'AST pour cr�er des AST interm�diaires contenant des
pseudo-instructions de plus en plus proche des instructions assembleur de la
machine cible. Il aurait �galement g�n�r� un graphe colori� afin de
conna�tre le nombre minimal de registres n�cessaires pour stocker les
variables locales (par exemple dans notre cas, un registre pour
stocker le r�sultat 14), etc.</p>

<p>Donnons un exemple de code en langage C:</p>

CODE[]display(2 + 3 * 4);
END_CODE

<p>Un compilateur C, lors d'une premi�re passe d'interpr�tation,
aurait d�tect� la priorit� de la multiplication sur l'addition via une
grammaire non-ambigue et aurait ajout� implicitement les parenth�ses
suivantes:</p>

CODE[]display(2 + (3 * 4));
END_CODE

<p>puis aurait g�n�r� un ParsTree similaire �:</p>

CODE[]              expr
               |
       ------------------
       |       |        |
    display  factor    term
               |        |
          -----------   ;
           |   |    |
           (  expr  )
               |
        ---------------
         |     |     |
        term   +   factor
         |           |
         2      ------------
                 |   |    |
                 (  expr  )
                     |
                -------------
                 |    |    |
                term  *   term
                 |         |
                 3         4
END_CODE

<p>Puis un AST:</p>
CODE[]     display
       /
      +
     / \
    *   2
   / \
  3    4
END_CODE

<p>Puis des AST avec des instructions de plus en plus proches du
langage machine et obtenir du code similaire � �a. Ici on ne montre
pas le graphe color� pour allouer le moins de registres possibles:</p>

CODE[]
push %eax       ; save value of e1 on the stack
pop %ecx        ; pop e1 from the stack into ecx
addl %ecx, %eax ; add e1 to e2, save results in eax
...
END_CODE

<p>En langage LISP, gr�ce � sa syntaxe repr�sentant des arbres, on
aurait implicitement l'AST car on aurait �crit quelque chose
d'approchant � :</p>

CODE[](display (+ (* 3 4) 2))
END_CODE

<p>En Forth, qui est un langage utilisant la notation polonaise invers�e,
on aurait �crit :</p>
CODE[]3 4 * 2 + display
END_CODE

<p>L'interpr�teur Forth se contente simplement d'extraire les mots
s�par�s par des espaces.</p>

SUBSECTION(ICON_EYES,Forth un langage sans syntaxe,sansyn)

<p>Forth est � la fois un interpr�teur et un compilateur. Forth ne
compile pas le code en langage machine (comme pour le langage C) mais
du byte-code dans une machine virtuelle (comme pour Java).</p>

<p>Forth, contrairement aux langages tels que le C ou
Python, n'a pas de grammaire ambigu�, ne n�cessite pas de r�tro-action
lexicale, etc. Un script Forth est une simple suite de
ITALIC(symboles) s�par�s par des espaces. Il n'y a donc aucune
syntaxe. Par cons�quent un compilateur Forth est un simple lexer sans
son parser. Quand Forth va lire un script, il n'a besoin que d'extraire
et de reconna�tre le symbole courant (qui doit �tre soit un symbole
qui lui est ITALIC("connu"), soit un nombre) et parfois le symbole
suivant (quand celui-ci n'est pas encore connu, comme par exemple lors
de la d�finition d'un nouveau symbole/d�finition Forth). Dans une
ILINK(dico,section) de ce document, on expliquera ce que le verbe
"conna�tre" signifie concr�tement. Nous verrons �galement que ce sont
les symboles eux m�mes qui agissent directement sur le comportement du
compilateur.</p>

<p>Dans la convention Forth, une unit� lexicale est appel� ITALIC(mot)
(word en anglais) et sa signification est proche de celle du langage
naturel humain. Egalement par convention, un mot Forth est form� de
n'importe quelle suite de caract�res ASCII (il n'y a r�ellement aucune
restriction contrairement � des langages tels que C) dont,
historiquement, la taille maximale est 32 caract�res ASCII (mais cette
limitation a disparue sur les Forth modernes tels que gForth).</p>

<p>Cette absence de syntaxe s'explique facilement: Forth utilise la
notation polonaise invers�e (Reverse Polish notation) � savoir que les
op�randes (param�tres) sont not�es avant les op�rateurs. Cette
notation �vite l'utilisation de parenth�ses palliant l'ordre de
priorit� des op�rateurs (par exemple en math�matique la priorit� de la
multiplication sur celle de l'addition) et �vitant ainsi l'utilisation
d'une grammaire complexe impliquant la cr�ation d'un AST.</p>

<p>Le code Forth suivant :</p>
CODE[]BLUE(2 3 4) GREY(+ *)
END_CODE

<p>�quivaut � l'expression arithm�tique 2 * (3 + 4) alors que le code
Forth suivant :</p>
CODE[]BLUE(2 3 4) GREY(* +)
END_CODE

<p>�quivaut � l'expression arithm�tique 2 + (3 * 4).</p>

<p>Si l'on d�sire afficher � l'�cran le r�sultat de l'op�ration on
  utilisera le mot Forth STRONG(display)</p>
CODE[]BLUE(2 3 4) GREY(* + display)
END_CODE

<p>Note: en Forth, le mot display n'existe pas, son nom exact est GREY(.) et il
affichera 14.</p>

<p>Le travail de l'interpr�teur Forth est assez trivial: il se contente
d'extraire les symboles � la vol�e (simplement de gauche � droite), il empile
les nombres qu'il rencontre et ex�cute les op�randes (les mots Forth) consommant
une certaine quantit� de donn�es dans cette pile puis, si r�sultat il y a,
empilera le r�sultat. La section suivante expliquera mieux ce processus.</p>

<p>STRONG(Mode compilation et mode interpr�tation:) Si l'on d�sire cr�er un
nouveau mot Forth, on utilisera le mot Forth RED(:) suivi du nom du nouveau mot
Forth � d�finir, puis d'une suite de mots Forths connus ou de nombres et
finalement du mot ORANGE(;) qui termine la d�finition. Les mots RED(:) et
ORANGE(;) sont des mots primitifs du langage (builtin).  Par exemple:</p>

CODE[]RED(: MON-CALCUL)    BLUE(2 3 4) GREY(* +) ORANGE(;) END_CODE

<p>est l'equivalent du code C:</p>
CODE[]int mon_calcul() { return 2 + 3 * 4; }
PUSH(mon_calcul());
END_CODE

<p>Chaque fois que l'on "donnera" STRONG(MON-CALCUL) � l'interpr�teur Forth,
celui ci calculera et retournera le nombre 14. Il est clair que RED(MON-CALCUL)
est devenu un mot Forth connu mais revenons en arri�re avec l'extrait de code
STRONG(: MON-CALCUL) car on peut se poser la question: est ce que l'interpr�teur
�chouera quand il tentera d'ex�cuter le mot STRONG(MON-CALCUL) qui lui est
inconnu ?  C'est exact mais c'est l'ex�cution du mot RED(:) qui va commuter
l'interpr�teur en mode compilation et lui indiquer que le mot suivant (� savoir
MON-CALCUL) doit �tre ajout� dans l'index de recherche des mots connus. En mode
compilation tous les mots connus sont compil�s en byte code. Un mot inconnu est
consid�r� purement et simplement comme un erreur. On pourrait croire que le mot
ORANGE(;) sera lui aussi compil� mais ce n'est pas le cas. En effet ce mot est
un mot de haut niveau qui, quand il est ex�cut�, et ce m�me quand le compilateur
est en mode compilation, fait repasser l'interpr�teur en mode
interpr�tation. Nous analyserons plus en d�tail ce fonctionnement exact dans la
section traitant des mots Forth de hauts niveaux.

Le mot RED(MON-CALCUL) a �t� compil� en byte-code et d�sormais il est maintenant
un mot connu de l'interpr�teur. Nous y reviendrons dans une section future.</p>

<p>STRONG(Gestion des commentaires:) Il existe plusieurs format de commentaires en Forth.
Le mot STRONG(\) ignore la ligne compl�te. Par exemple:</p>
CODE[]RED(: MON-CALCUL) \ Fait un calcul
   BLUE(2 3 4) GREY(* +) ORANGE(;) END_CODE

<p>ignorera STRONG(Fait un calcul). Attention STRONG(\) est un mort Forth: il
ex�cute du code: celui d'ignorer tous les caract�res jusqu'� rencontrer le
retour chariot.</p> En cons�quence, il faudra placer au moins un espace pour
que l'interpr�teur puisse le s�parer des autres tokens. Par exemple:</p>
CODE[]RED(: MON-CALCUL) \Fait un calcul
BLUE(2 3 4) GREY(* +) ORANGE(;) END_CODE
<p>Produira une erreur indiquant que le mot STRONG(\Fait) est inconnu de
l'interpr�teur. L'autre type de commentaire sont les parenth�ses. Par exemple:</p>
CODE[]RED(: MON-CALCUL) ( Fait un calcul)
   BLUE(2 3 4) GREY(* +) ORANGE(;) END_CODE

<p>Tout comme le mot STRONG(\), le mot ( est un mot Forth. il lui faut un espace pour �tre reconnu.
Ce mot ignore tous les charact�res jusqu'� rencontrer le premier caract�re ) qui lui, pour le coup,
n'est pas un mot Forth et n'a donc pas besoin d'�tre espac�.</p>

<p>Compliqu� ? Malgr� le peu de vocabulaire Forth pr�sent� jusqu'� pr�sent dans ce document.
Vous changerez d'avis quand vous constaterez la facilit� de son impl�mentation qui est la suivante :</p>
CODE[]RED(: &lpar;)   BLUE(41) WORD GREY(DROP) ORANGE(; IMMEDIATE) END_CODE

<p> Explications: 41 est le code ASCII de ) qui sera plac� sur le sommet de la pile de donn�es.
Le mot WORD le consommera et ignorera tous les caract�res du flux de caract�res jusqu'� rencontrer
le bon code ASCII. WORD retourne la position du flux, information inutile et donc �limin�e par le mot DROP.
Finalement le mot IMMEDIAT (qui sera expliqu� plus longuement dans une section suivante) rend ce mot ex�cutable
lors de la compilation d'un mot. Par exemple dans l'exemple pr�c�dant avec MON-CALCUL il aurait �t� g�nant de
compiler le commentaire en byte code.

<p>Le lecteur attentif aura remarqu� que les commentaires Forth, avec cette d�finition issue du standard, ne permet pas
de nicher des sous commentaires. Pour la d�finition du mot STRONG(\) on remplacera le code ASCII de ) par le code ASCII
du retour chariot.</p>

<p>En conclusion pour cette section, nous venons de voir comment avec un
langague sans syntaxe nous avons facilement pu impl�ment� un d�but de
syntaxe. Nous verrons plus tard que les mots de liaisons tels que le IF THEN
ELSE, boucles seront tout aussi facilement impl�ment�es.</p>

SUBSECTION(ICON_GEAR,Forth un langage � piles,pile)

<p>Le lecteur notera, dans le titre, l'utilisation du pluriel pour le
   mot pile. En informatique une
   EXTLINK(https://fr.wikipedia.org/wiki/Pile_(informatique),pile)
   (stack en anglais) est une structure pour stocker des �l�ments et
   par analogie avec la pile d'assiettes, c'est la derni�re assiette
   (derni�re donn�e) d�pos�e qu'on ira pr�lever en premier. Une pile
   est �galement nomm�e LIFO pour Last In First Out. Nous allons voir
   ici que Forth utilise deux piles: -- une pile pour les donn�es
   (nomm�e STRONG(Data Stack) ou bien STRONG(Parameter Stack) ou bien S);
   -- une pile pour l'ex�cution des mots (nomm�e STRONG(Return Stack) ou bien R).</p>

<p>Des langages, tels que le C, cachent d�lib�r�ment au d�veloppeur
   l'utilisation d'une pile de contexte pour sauvegarder des
   informations. Par exemple, lorsque une fonction appelle une autre
   fonction, le compilateur va empiler:</p>

LIST(les param�tres pass�s � la fonction[,], les variables locales de
la fonction[,], et bien d'autres information comme le code de retour de la
fonction, le pointeur d'interpr�tation ...)

<p>Ceci peut entra�ner des p�nalit�s en temps d'ex�cution du programme
(passage de trop de param�tres, passage des param�tres par copie au
lieu de leur adresse), voir des crashs par d�bordement de la pile
d'appels (stack overflow) ce qui peut arriver, par exemple, dans les
cas suivants: LIST(soit en passant par copie des donn�es trop
grosses[,],soit en utilisant la r�cursivit� sur des langages mal
adapt�s � la r�cursion terminale tels que le C ou Forth. Pour information OCaml est
un langage ma�trisant nativement la r�cursion ainsi que ColorForth.)</p>

<p>Forth utilise deux types de piles: LIST([une accessible au d�veloppeur pour
stocker les donn�es qui sont, en fait, les param�tres des mots Forth
(�quivalents des fonctions en C);],[une seconde utilis�e par l'interpr�teur pour
sauvegarder l'ordre des appels des mots. Nous verrons qu'elle est en fait
partiellement accessible au d�veloppeur.])

<p>STRONG(Pile de donn�es:) En Forth, avec la notation polonaise
invers�e, les op�randes sont directement stock�s dans une pile de
donn�es et les op�rateurs (les mot Forths) les consomment. Par
cons�quent, contrairement � des langages comme le C, la pile �vite �
Forth l'utilisation de variables temporaires nomm�es (�quivalent aux
variables locales du C). Ceci est � la fois un avantage et une
faiblesse du langage: le programmeur Forth doit organiser l'ordre des
�l�ments dans la pile avant leur consommation (avec des mots tels que
DUP, SWAP, OVER) ce qui ajoute du bruit au code source de
l'algorithme.  Certains Forth non-standards reprennent cette id�e de
variables locales nomm�es (comme le langage C): une partie de la pile
est transf�r�e vers ces variables pour une utilisation directe.</p>

<p>Supposons la pile S initialement vide puis ex�cutons le
code suivant:</p> CODE[]BLUE(2) GREY(DUP + .)  END_CODE

LIST(L'interpr�teur va placer l'op�rande 2 dans la pile (qui aura donc
son premier �l�ment).,

Le mot DUP va le consommer (d�piler) puis le dupliquer (DUPlicate en
anglais). La pile aura deux �l�ments.,

Le mot + consommera les deux �l�ments de la pile (deux d�pilements),
les additionnera et empilera le r�sultat (soit la valeur
4).,

Finalement le mot . va d�piler la valeur et affichera sa valeur �
l'�cran (�quivalent du stdout du C). La pile de donn�es se retrouve
dans son �tat d'origine (vide).)

<p>Il est de la responsabilit� du d�veloppeur de v�rifier qu'il y ait
toujours le bon nombre d'�l�ments dans la pile. Si un mot veut
consommer des �l�ments non pr�sents dans la pile, certains interpr�teurs vont
interrompre tout le programme et le signaler � l'utilisateur par un
message d'erreur de type "stack underflow", d'autres interpr�teurs ne g�reront
m�me l'erreur (pour des soucis de rapidit�).</p>

<p>STRONG(Pile de retour:) cette pile est utilis�e pour m�moriser l'ordre des
appels des mots Forth appelant d'autres mots Forth (secondary words) tels que
MON-CALCUL (pour rappel le mot DUP est une primitive du language �
savoir appelant du code machine. Cela sera plus longuement d�taill� dans une
section suivante). Pour bien comprendre la raison de son existence, rappelons
nous des algorithmes de parcours d'arbre. Sur la figure suivante, nous
souhaitons simuler un repas en parcourant les noeuds de cet arbre avec un
parcours pr�fixe main gauche
EXTLINK(https://en.wikipedia.org/wiki/Tree_traversal,main-gauche).</p>

CAPTION_PICTURE(tuto/forth/poulet-frite-arbre.png,Votre repas pour ce midi.)

<p>Avant d'expliquer l'algorithme, voyons d'abord le r�sultat attendu
d'un parcours pr�fixe: ITALIC([repas, entr�e, d�jeuner, poulet,
frites, d�sert]). Les mots ITALIC([repas, d�jeuner]) n'ont pas de
signification int�ressante, pour cela on ne gardera que les feuilles
de l'arbre (feuille est noeud ayant aucun fils), on
obtient alors: BOLD([entr�e, poulet, frites, d�sert]). Pour
obtenir ce r�sultat, on peut penser � deux algorithmes: -- l'un r�cursif, --
l'autre it�ratif.</p>

<p>Voyons d'abord la version r�cursive de l'algorithme d'un parcours
pr�fixe main gauche. Pour simplifier on supposera que l'arbre binaire (� savoir soit au max deux
sous-arbres par noeud), en effet, pour un arbre g�n�ral (comme sur la figure
pr�c�dente), on remplacera fils gauche/droit par le N-i�me fils:</p>

CODE[]explorer(arbre A):
   afficher le noeud de A;
   si A a un fils gauche alors explorer(fils gauche de A) fin si;
   si A a un fils droit alors explorer(fils droit de A) fin si;
END_CODE

<p>Cet algorithme utilise implicitement une pile pour sauvegarder les
noeuds parcourus. Le compilateur va g�rer automatiquement la pile d'appel
pour nous (Rappelez vous quand je disais que le langage C cachait au
d�veloppeur l'utilisation de cette pile). Maintenant, voyons comment est
g�r�e cette pile, en utilisant un algorithme it�ratif:</p>
CODE[]explorer(arbre A):
   cr�er une pile vide;
   empiler(A);
   tant que la pile n'est pas vide faire:
       noeud <- d�piler;
       afficher noeud;
       si noeud a un fils gauche alors empiler(son fils gauche) fin si;
       si noeud a un fils droit alors empiler(son fils droit) fin si;
   fin tant que
END_CODE

<p>Quel est le lien avec Forth ? L'interpr�teur Forth d�s qu'il lit un nouveau
symbole sur son entr�e (par exemple MON-CALCUL) va l'interpr�ter de fa�on
similaire � notre algorithme d'exploration d'arbre � la diff�rence pr�s qu'il ne
se contentera pas d'afficher le noeud mais ex�cutera les instructions machine
des mots Forth primitives (tels que DUP). La pile utilis�e dans le pseudo-code
est cette fameuse pile de retour R que l'on a introduit pr�c�demment.</p>

<p>On peut se poser une autre
question: quel est le lien entre un mot Forth est un arbre ?  Un mot
Forth connu de l'interpr�teur � implicitement une structure d'arbre.
Supposons que notre Forth connaisse les mots ENTREE, POULET, FRITES, DESERT.
Nous pouvons cr�er les mots suivants:</p>

CODE[]RED(: DEJEUNER) GREEN(POULET FRITES) ORANGE(;)
RED(: REPAS) GREEN(ENTREE DEJEUNER DESERT) ORANGE(;)
END_CODE

<p>L'arbre g�n�ral qui �tait REPAS est devenu un arbre binaire dans
Forth et les noeuds qui avaient la m�me hauteur sont maintenant li�s
entre eux.</p>

CAPTION_PICTURE(tuto/forth/poulet-frite-forth.png,Votre repas en Forth.)

<p>Attention, en interne, une structure classique d'arbre (avec noeud et deux
pointeurs) n'est pas utilis�e. Les pointeurs ne sont rien d'autre que le
byte-code (identifiant des mots compil�s). Cela sera plus clair pour le lecteur
lorsque nous aborderons le chapitre sur le dictionnaire car nous n'avons pas
encore abord� comment les mots Forth sont repr�sent�s en m�moire (section
suivante). Pour le moment le lecteur doit accepter le fait que les fils gauches
sont une adresse vers l'emplacement m�moire d'un autre mot Forth et que les fils
droits n'existent pas, ils sont implicites car les noeuds sont plac�s
cons�cutivement dans la m�moire (par exemple le byte code des mots ENTREE,
DEJEUNER et DESSERT sont cons�cutifs en m�moire dans la d�finition du mot
REPAS).</p>

<p>Maintenant, avec cet arbre binaire, si l'on ex�cute uniquement les noeuds qui
n'ont pas de fils gauche, on obtiendra le r�sultat attendu: BOLD([ENTREE,
POULET, FRITES, DESERT]). On comprendra mieux par la suite. Comment est
impl�ment� les piles ainsi que le parcours d'arbre des mots en Forth ? Deux
r�ponses possible selon selon le langage qui impl�mente l'interpr�teur
Forth:</p>

LIST( STRONG(Assembleur:) [Forth �tant un langage pour les micro-contr�leur, les
mots primitifs du langage (� savoir les mots constituants le coeur du syst�me)
ITALIC(pointent) sur du code assembleur, une des piles utilise le registre de la
pile interne aux micro-contr�leur, l'autre pile doit �tre g�r�e
explicitement. Le noeud de notre arbre est le registre PC et il faut un registre
d'interpr�tation IP qui se d�place automatiquement et ex�cute les instructions
assembleurs des mots. L'existence des fils est g�r� par le mot Forth sp�cial
RETURN qui doit �tre ITALIC(coll�) aux mots primitifs. Je conseille vivement de
lire le tutoriel de
EXTLINK(http://git.annexia.org/?p=jonesforth.git;a=blob;f=jonesforth.S;h=45e6e854a5d2a4c3f26af264dfce56379d401425;hb=HEAD,JonesForth)
pour plus de renseignements. Il est tr�s complet � ce sujet. j'ajouterai une
simple remarque: on voit que nos micro-controleurs modernes avec des
architectures RISC (ou �quivalentes) sont des monstres en comparaison � un
micro-controleur d�di� aux instructions Forth qui a besoin de 2 piles et de 2
registres.],

[Langage de haut niveau:) tel que le C, pour un soucis de portabilit� les piles
seront �mul�es par un tableau statique et les registres IP et PC seront �mul�s
par un switch case sur les primitives et une variable.])

<p>STRONG(Note:) les d�butants peuvent ignorer ce paragraphe dans un premier
temps! La pile de retour n'est pas une pile priv�e. Elle est en fait
partiellement accessible au d�veloppeur mais cela peut pr�senter un �norme
risque de crash du programme. En effet cette pile de retour peut �tre aussi
utilis�e comme pile de stockage temporaire de la pile de donn�es avec des mots
[>R] et [R>]. Cette pile est utilis� en m�me temps � la fois par l'interpr�teur
et le d�veloppeur. C'est le cas par exemple pour les mots impl�mentants les
boucless : les compteurs sont parfois d�plac�s sur cette pile. Il faudra faire
attention � laisser cette pile propre (pour cela il faut que le nombre mot [>R]
et [R>] soient balanc�s) sous peine de faire crasher l'interpr�teur en ex�cutant
une valeur de la pile de donn�es en le prenant pour un byte-code �
ex�cuter. Pour rappel, Forth a �t� con�u dans les ann�es 70 o� le moindre octet
�tait peu nombreux et couteux et donc le moindre hack pour �conomiser de la
m�moire �tait priviligi� � la s�curit�. Maintenant avec la puissance �norme des
processeurs, il est plus simple de cr�er une deuxi�me pile de donn�es.

<p>STRONG(Piles auxiliaires:) Pour �viter les crashs avec les mots [>R] et [R>]
certains Forth les ont interdit et rend priv�e l'acc�s � la pile de retour. En
contre-partie, il est propos� � l'utilisateur une seconde pile de stockage des
donn�es. De plus, les Forth initiaux ne manipulent pas de nombres floattants
nativements (la pile de donn�es stocke uniquement des entiers 16 bits). Ces pile
sont �mul�es en Forth et r�sident dans le dictionaire.</p>

<p>STRONG(Notation des piles:) Nous avons vu dans la section pr�c�dente que d�s
que le l'interpr�teur ex�cutera le mot ( il ignorera tous les mots jusqu'�
trouver le mot ). Ce type de commentaire est utilis� pour commenter les
param�tres d'entr�e et de sorties du mot et donc les piles. Il existe de
nombreux documents sur internet qui en traite. Mais dans ce document nous allons
beaucoup simplifi�. Par exemple pour le mot NIP qui supprime le deuxi�me
�lements au sommet de la pile: </p>
CODE[]: NIP ( a b -- b )   SWAP DROP ; END_CODE

<p>Le commentaire indique que ce mot consomme deux nombres dans la pile
d'entr�e: a et b (o� a est le premier �lement et b le second) et en produit un
seul (b, le second param�tre) est �quivalent au code suivant:
CODE[]int nip(int a, int b) { return b; }
PUSH(nip(POP(), POP());
END_CODE

SUBSECTION(ICON_GEAR,Dictionnaire Forth: une machine virtuelle,dico)

dnl expliquer les mots primitifs

<p>Pour r�sumer ce qu'on l'a vu, Forth est un langage extensible
(tiss�): � partir de quelques mots de base on peut cr�er un nouveau
mot plus �volu�. Par exemple, le code suivant:</p>

CODE[]RED(: SQUARE) GREY(DUP *) ORANGE(;)
END_CODE

<p>Permet de d�finir un nouveau mot Forth SQUARE via les mots : et ;
(qui jouent le r�le de d�but et de fin de d�finition). Une fois ce mot
d�fini, il sera reconnu en tant que mot Forth valide par l'interpr�teur. Dans
notre cas, quand SQUARE sera ex�cut�, il calculera la puissance deux
du nombre stock� dans la pile. Par exemple, le code suivant, consommera le nombre
5 pos� de la pile et affichera le nombre 25.</p>

CODE[]BLUE(5) GREEN(SQUARE) GREY(.)
END_CODE

<p>Nous avons �galement vu que l'ex�cution de mots Forth se rapproche d'un
parcours d'arbre. Cette section fait enfin ce lien, en expliquant comment les
mots Forth sont stock�s en m�moire et se r�f�rent entre eux.</p>

<p>Il n'y a pas une unique structure de dictionaire possible.  La norme Forth
laisse libre son impl�mentation. Pour ce document nous nous baserons sur la
structure originelle (Forth 78): les mots Forth (entr�es) et leur d�finition
sont stock�s dans une structure de donn�e appel�e par convention le
ITALIC(dictionnaire) (dictonary en anglais). Un mot Forth stock� dans ce
dictionnaire sera reconnu par l'interpr�teur et sa d�fiontion pourra �tre
ex�cut�e.</p>

<p>Le dictionnaire est un segment m�moire et peut �tre vu comme le ruban infini
d'Alan Turing. Il est divis� en cases m�moire cons�cutives et par convention on
les nomme cellule (cell en anglais). Une cellule stocke un token (byte
code). Leur taille en octets d�pend de l'architecture de la cible. Nous nous
baserons pour ce document sur une architecture 16-bits, donc un mot sera cod�
sur deux octets.  Par cons�quent la taille d'un dictionnaire est
2<sup>16</sup>-1 soit 64 Ko (ce qui est suffisant pour stocker un programme
Forth). Pour rappel Forth �tant n� dans les ann�es 70, il est tr�s adapt� aux
micro-controlleurs 8 ou 16-bits et est moins bien adapt� pour des architectures
32 ou 64-bits, � cause des alignements des adresses m�moires et du padding
implicite. Pour ne pas compl�xifier cette lecture nous ne attarderons pas au
probl�me d'alignement.</p>

<p>Voici la structure m�moire d'un mot Forth:</p>
CODE[]                  &lt;----------            Ent�te        ---------->
 - - - -----------+---------------+------+------------------------+-------+---- - - - - - - - - - - -
Fin mot pr�c�dent | BLUE([[Taille, flags]]) | RED(Nom)  | GREY(Pointeur mot pr�c�dent) | GREEN(Token) | GREEN(D�finition)       | D�but mot suivant
 - - - -----------+---------------+------+------------------------+-------+---- - - - - - - - - - - -

                  ^                      ^                        ^       ^
                  |                      |                        |       |
                 NFA                    LFA                      CFA     PFA
END_CODE

LIST(Les informations BLUE([[Taille[,] Flags]]) sont cod�es sur 1
seul octet.

LIST(BLUE(Taille:) code sur les 5 bits de poids faible[[,]] le nombre de
caract�res ASCII du nom du mot Forth;,
BLUE(Flags:) code sur les 3 bits de poids fort les informations
suivantes:

LIST(GREY(Smudge bit :) indique si le mot doit �tre ignor� lors
d'une recherche dans le dictionnaire. Ce drapeau est plac� dans deux
cas : -- soit l'utilisateur a d�cid� de supprimer le mot (avec le mot HIDE);
-- soit d'une d�finition avort�e (l'utilisateur a fait une erreur comme une
typo sur un mot de la d�finition qui n'a donc pas aboutie).;,

ORANGE(immediat bit :) si le mot doit �tre imm�diatement interpr�t� (ex�cut�)
d�s que l'interpr�teur le lit et ce m�me si l'interpr�teur est entrain de
compiler un nouveau mot. Les seuls mot Forth imm�diats que l'on conna�t � ce
niveau du document sont le mot ORANGE(&lpar;) pour les commentaires et
le mot ORANGE(;) qui termine la d�finition d'un mot et accessoirement finalise le
Smudge bit. S'il n'avait pas �t� imm�diat l'interpr�teur l'aurait ajout� dans
la d�finition du mot en cours.  Il faut pouvoir indiquer au compilateur quand
s'arr�ter.;,

et le dernier bit toujours � 1 servant de s�parateur entre les entr�es
du dictionnaire (soit valant 80 en base 16). Il permet de retrouver le
d�but de d�finition d'un mot et donc de pouvoir s�parer plus facilement
les mots entre eux.)),

RED(Nom) est le nom du mot Forth et le nombre de caract�re ASCII cons�cutifs est
variable et est donn� par l'information STRONG(Taille:). Le nombre max de caract�re
est donc 2<sup>5</sup>-1.,

GREY(Pointeur vers le mot pr�c�dent): STRONG([[[LINK]]] POINTER :) est
l'adresse de l'entr�e pr�c�dente du dictionnaire. Les mots Forth sont
stock�s dans le dictionnaire comme une liste simplement cha�n�e et dont l'interpr�teur
maintient automatiquement la t�te de la liste. L'interpr�teur peut ainsi savoir si
un mot existe. Les adresses peut �tre relatives ou absolues (la
premi�re ayant la bonne propri�t� de permettre de d�placer un bloc
m�moire du dictionnaire sans devoir changer l'ensemble des adresses). Le nombre
d'octets d'une adresse d�pend de l'architecture choisie[[,]] ici 16
bits et par cons�quent la taille d'un dictionnaire est
2<sup>16</sup>-1 soit 64 Ko.,

GREEN(Token) ou XT en abr�g� (execution token). D�pend de l'impl�mentation de
l'interpr�teur: certains Forth (comme le mien �crit en C) est un simple
identifiant.,

GREEN(D�finition :) est une suite de tokens chacun identifiant un mot d�j�
existant et compil� dans le dictionnaire[[,]] que l'on nommera par convention
Code Field Address (CFA).)

<p>Certaines adresses sont importantes en Forth et poss�dent un nom :</p>
LIST(STRONG(NFA:) Name Field Address pointe sur l'entr�e d'un
mot;,

STRONG(LFA:) Link Field Address pointe sur l'emplacement contenant l'adresse du
mot d�fini pr�c�demment. On rappelle qu'elle sert � parcourir les entr�es du
dictionnaire et savoir si un mot est connu de l'interpr�teur. Les mots qui ont
leur Smudge bit sont ignor�s mais quand m�me travers�s. Le dernier mot stock�
(et donc le premier cherch�) est r�f�renc� par le mot Forth STRONG(LATEST);,

STRONG(CFA:) Code Field Address pointe sur le d�but de la d�finition d'un
mot. Il ne faut pas le confondre avec LFA car il sert � d�placer le pointeur
d'interpr�tation de l'interpr�teur (pointeur sur le mot � interpr�t�). Il faut
le voir comme une sorte d'identifiant sur les mots sorte de bytecode d'une
machine virtuelle java;,

STRONG(PFA:) Parameter Field Address pointe sur le second
emplacement de la d�finition.)

A partir d'un PFA, gr�ce au bit toujours mis � 1, il est
possible d'atteindre le d�but de l'entr�e en d�cr�mentant la valeur de
l'adresse et en appliquant au contenu de l'adresse l'op�ration OU
bit � bit avec la valeur hexad�cimale 80. Par exemple :</p>
CODE[]
RED(: CFA) GREEN(2) GREY(-) ORANGE(;) GREY(( PFA -- CFA))
RED(: LFA) GREEN(2) GREY(-) ORANGE(;) GREY(( CFA -- LFA))
RED(: NFA) GREY(( PFA -- NFA))
    GREEN(4) GREY(-) ORANGE(;)
    BEGIN
       DUP
       80 AND 0=
    WHILE
       1 -
    REPEAT
;
END_CODE

<p>La primitive STRONG(') appel�e tick extrait du flux d'entr�e le mot suivant,
cherche sa pr�sence dans le dictionaire est place son token sur la pile de
donn�es. Le mot STRONG(EXECUTE) consomme ce token et l'ex�cute. Par exemple le code suivant:</p>
CODE[]BLUE(42) GREY(' DUP) EXECUTE . . END_CODE

<p>Place l'execution token du mot DUP sur la
pile. EXECUTE ... l'execute. L'entier 42 est dupliqu�. Il y a d�sormais deux
fois le noimbre 42 qui seroont tour � tour affich�. Dans cet exemple
particulier, on aurait simplement pu faire 42 DUP . . mais ces mots ont quand
m�me leur utilit�.</p>

<p>Il faut distinguer deux types de mots Forth:
LIST(Les mots primitifs qui sont pr�sents dans le coeur du langage et qui appellent le code
ex�cutable soit assembleur soit en C. Par exempl le mot DUP appelera l'assembleur i386
CODE[]mov (%esp)[,]%eax  // duplicate top of stack
push %eax
END_CODE,
Les mots non primitifs d�finis par les mots Forth :)</p>

<p>Le script suivant :</p>
CODE[]RED(:  SQR) GREY(DUP *) ORANGE(;)
RED(: .SQR) GREEN(SQR) GREY(.) ORANGE(;)
END_CODE

<p>va cr�er deux nouvelles entr�es dans le dictionnaire comme indiqu�
dans la figure ci-dessous :</p>
CODE[]                   +--------------------+
                   |              +---- | ------------------------------------------+-------------+
                   v              v     |                                           |             |
---------------- - - - ---------------- | ----------------------------------------- | ------------|------------
| BLUE(0x81) | GREY(DUP) |          | BLUE(0x83) | RED(SQR) |     | RED(DOCOL) | GREY(DUP) | GREY(*) | ORANGE(EXIT) | BLUE(0x84) | RED(.SQR) |    | RED(DOCOL) | GREEN(SQR) | GREEN(.) | ORANGE(EXIT)
---------------- - - - ------------------------|------|----|----|--------------------------|-------------------
         ^                                     |      |    |    |                          |
         |                     &lt;-- - - - ------+      |    |    v                          v
         +--------------------------------------------+----+
END_CODE

<p>Regardons comment l'interpr�teur ex�cute le script:</p>
CODE[]GREEN(: FOO) * * ORANGE(;)
END_CODE
<p>Il execute le mot :, active l'interpr�teur en mode compilation.
Celui-ci va stocker en fin de dictionnaire les CFA des mots.
: cr�e l'ent�te avec le mot suivant 0x83 FOO DOCOL ainsi que le pointeur du mot
pr�c�dent. L'interpr�teur lit le mot * et place son CFA en fin de dictionnaire.
Idem pour le deuci�me *. Enfin il lit le mot ; qui doit �tre imm�diatement ex�cut�,
ce mot finalise la d�finition du mot (smudge bit, met a jout LAST) puis remet
l'interpr�teur en mode execution.</p>

<p>Les fl�ches repr�sentent les adresses (LFA ou CFA) vers les mots
existants du dictionnaire. Vu que BAR a �t� ins�r� dans le
dictionnaire apr�s FOO son LFA pointe vers FOO et le dictionnaire
m�morise son LFA pour faire ses recherches sur les mots existants (la
fameuse liste chain�e).</p>

<p>Les litt�raux 0x81, 0x83 (notation base 16) sont les tailles des
mots avec le marqueur de s�paration des entr�es du dictionnaire. Les
mots Forth DOCOL et EXIT sont des mots particuliers que l'on d�crira
plus tard. HERE pointe sur l'emplacement apr�s EXIT du mot BAR.</p>

<p>Le dictionnaire poss�de deux informations suppl�mentaires qui sont
eux-m�mes des mots Forth (donc aussi stock�s dans le
dictionnaire) :</p>

LIST(le LFA du dernier mot ins�r� dans le dictionnaire. C'est le mot
Forth LAST (anciennement nomm� LATEST) qui joue ce r�le;,

le premier emplacement libre du dictionnaire pour prochain mot est
donn� par le mot Forth HERE. HERE est mis � jour automatiquement apr�s
l'insertion d'une entr�e ou d'un CFA. Il existe sur certain Forth un
mot Forth appel� DP pour Dictionary Pointer[,] faisant partie des
variables utilisateur[,] qui permet de changer l'emplacement indiqu�
par HERE (comme une t�te de lecture/�criture).)

<p>A chaque fois qu'un mot est ins�r� � la d�finition d'un mot[,] c'est
le mot HERE qui indique l'emplacement. Apr�s l'ajout du mot, HERE est
automatiquement d�plac� pour toujours pointer sur un emplacement
libre mais des mots comme ALLOC permettant de r�server de la m�moire
d�place simplement HERE.</p>

<p>Deux avantages de cette structure de donn�e sont :</p>
LIST(la non segmentation de la m�moire : d�placer un bloc d'entr�e en
m�moire est trivial (surtout si les adresses sont relatives et non
absolues; on pensera � la concat�nation de dictionnaires entre eux).;,

La recherche s'arr�tant au premier mot trouv�, on peut donc �craser une ancienne
d�finition comme il suit :)

CODE[]GREEN(: FOO) * * ORANGE(;)
GREEN(: BAR) FOO . ORANGE(;)
GREEN(: FOO) + + ORANGE(;)
GREEN(: BAR) FOO . ORANGE(;)
END_CODE

<p>Interpr�ter BAR appellera deux additions.</p>

<p>L'inconv�nient majeur de cette structure de donn�e est que la
recherche se fait avec une complexit� lin�aire que l'on note
O(n). Pour palier � ce probl�mes des mots Forth de m�me nature peuvent
�tre regroup�s en vocabulaires. Le vocabulaire est l'anc�tre des
espaces de nommage des langages modernes (comme en C++ avec par
exemple std::cout). Un vocabulaire est un mot Forth g�rant un index de
LAST mais pointant sur des mots choisis par le d�veloppeur. On a donc
une sorte d'arbre o� une recherche partirait d'un feuille (d'un
vocabulaire sp�cifi�, donc un mot �quivalent � LAST) et se terminerait
� la racine de l'arbre.</p>

<p>Moore avec son colorForth est pass� � une table de hachage et pour
sauver de la m�moire il compresse les noms des mots Forth avec un
codage de Huffman.</p>

<p>Rappelons qu'un des flags dans l'ent�te d'une entr�e indique si le
mot est valide ou non (c'est le smudge bit). S'il est mis, alors il
sera ignor� lors d'une recherche. Le mot FORGET suivit d'un mot
existant (par exemple FORGET FOO) permet de tronquer toutes les
d�finitions du dictionnaire jusqu'� ce mot. FORGET change simplement
la valeur de LATEST. On prendra garde � ne pas supprimer tout le
dictionnaire en tentant par exemple de supprimer le premier mot du
dictionnaire.</p>

<p>Forth se pr�te bien � la r�cursivit� : une r�cursivit� terminale
n'est rien d'autre qu'un saut en m�moire. Malheureusement, la syntaxe
varie fortement d'un Forth � un autre. En effet, selon le Forth
utilis�, lorsqu'une ent�te est cr��e dans le dictionnaire LATEST ne
pointe pas encore dessus, d'autre Forth, le smudge bit est mis tant
que le mot ; n'est pas ex�cut� effa�ant le bit. Le mot SMUDGE doit
�tre utilis� dans la d�finition pour commuter le flag en question.</p>

<p>Voici un exemple de r�cursivit� :</p>
CODE[]GREEN(: FACTORIELLE)
 DUP RED(1) >
  BLUE(IF)
   DUP RED(1) - FACTORIELLE *
 BLUE(THEN) ORANGE(;)
END_CODE



<p>Les premiers Forth l'impl�mentent comme une liste cha�n�e o� tous les
mots sont stock�s les uns � la suite des autres (sans trous); certains
Forth s�parent les entr�es des d�finitions (index s�par�) tout en
gardant le principe de liste cha�n�e entre les mots; d'autres
utilisent une table de hachage, etc.</p>


SUBSECTION(ICON_GEAR,Diff�rentes classes de mots,class)


  N�anmoins Forth offre la possibilit� d'utiliser des
constantes et des variables mais qui doivent �tre vues comme des noms
sur des emplacements m�moire de longue dur�e (�quivalent aux globales
du C) � savoir que leur dur�e de vie est li� � celle du programme.</p>



<p>Je d�cris rapidement les diff�rents cat�gories de mot sachant que
le lien EXTLINK(https://www.forth.com/starting-forth/,Starting Forth)
les expliquera mieux :</p>

LIST(Gestion des piles, gestion
num�rique,arithm�tique,structure de contr�le,action sur la
m�moire,gestion des entr�es-sorties,conversion,mots de haut niveau)

<p>STRONG(Commentaires :) il existe deux types de commentaires en
Forth. Le premier type est le mot Forth imm�diat ORANGE(&#40;) qui
ignore tout caract�re jusqu'au premier caract�re &#41;
rencontr�. Par cons�quent il est donc impossible d'imbriquer des
commentaires entre-eux. Et il ne faut pas oublier les espaces car
&#40; est un mot Forth comme un autre. Ce type de commentaire est
pr�f�r� pour indiquer les param�tres d'un mot Forth. Pour plus de
renseignements sur la norme de la notation des param�tres
EXTLINK(http://www.forth.org/forth_style.html,voir ce site).</p>
CODE[]: DIVISION ( n1 n2 -- n1/n2 ) / ;
END_CODE

<p>Indique que DIVISION va consommer deux nombres sign�s o� n1 est
d�pos� dans la pile avant n2 (dans l'ordre de gauche � droite) et
retourner le r�sultat dans la pile. Pour preuve RED(1 0) DIVISION doit
retourner une exception tentative de division par z�ro.</p>

<p>Le deuxi�me type de commentaire (ajout� tardivement) est le mot
ORANGE(&#92;) qui ignore la ligne enti�re. Il est utilis� pour de
vrais commentaires autre que le renseignements de param�tres.</p>

<p>STRONG(Gestion de la pile :) permet de commuter l'ordre des donn�es
dans la pile. Par exemple DUP duplique le sommet, DROP le supprime,
SWAP permute le sommet de la pile avec l'avant dernier, le mot
. consomme et affiche le sommet de la pile, etc.</p>

<p>STRONG(M�moire :) Le mot @ permet d'acc�der au contenu d'une
adresse. Le mot ! permet de stocker une valeur dans une adresse. Une
  variable en Forth est une m�moire nomm�e. Exemple :</p>
CODE[]15 VARIABLE TOTO
TOTO @ .
14 TOTO !
: ? @ . ;
TOTO ?
END_CODE
<p>La premi�re ligne cr�� une variable nomm�e TOTO avec la valeur
15. La deuxi�me ligne permet d'acc�der au contenu de la variable puis
l'affiche. La troisi�me ligne change la valeur de TOTO avec la valeur
14. La quatri�me ligne cr�e un mot couramment utilis�. La derni�re
affichera la valeur 14.</p>

<p>STRONG(Base :) Forth permet d'afficher les nombres dans la base
d�sir�e. Exemple amusant :</p>
CODE[]: HEX 16 BASE ! ;
a .
HEX
BASE ?
a .
10 BASE !
BASE
a .
END_CODE

<p>La premi�re ligne red�finit un mot courant du Forth permettant de
passer en base 16 (hexad�cimal). Par d�faut Forth est en base 10
(d�cimale) donc la deuxi�me ligne doit g�n�r�e une erreur
(l'utilisateur voulait empiler le nombre a en base 16 (valant 10 en
base 10) mais comme nous sommes en base 10 Forth d�tecte que ce mot
lui est inconnu. Les lignes 3 � 5 permet de v�rifier que nous sommes
en base 16, la ligne 5 ne doit plus g�n�rer d'erreur. Ligne 7 � 9,
l'utilisateur tente na�vement de repasser en base d�cimale mais cela
�choue car le nombre 10 est interpr�te en base hexad�cimale valant 16
en base d�cimale. Donc il n'y a pas eu de changement de base</p>

<p>STRONG(Mots de structure :) les classiques structures de contr�le
connues des autres langages (comme le C) sont : le test conditionnel
if-then-else, la boucle do-loop, la boiucle for, etc. Comme Forth
utilise le syst�me polonais invers� m�me le if-then-else du C devient
IF ELSE THEN. Cela peut perturber le d�butant mais on peut renommer
THEN par FI ou ENDIF ce qui aidera les d�butants.</p>
CODE[]GREEN(: ENDIF) ORANGE(&#91;COMPILE&#93; THEN ; IMMEDIATE)
END_CODE

<p>De plus IF ELSE THEN doivent obligatoirement �tre utilis�s dans une
d�finition sinon le compilateur �chouera. En mode interpr�tation if
faudra utiliser les mots [IF] [ELSE] [THEN] qui �quivaut au #if #else
#endif du langage C. Le lien
EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,suivant)
explique en quoi Moore a encore r�duit le nombre de mots de
structure. Par exemple le ELSE n'existe plus. Avant :</p>
CODE[]GREEN(: MOT) TEST BLUE(IF) ACTION1 BLUE(ELSE) ACTION2 BLUE(THEN) ACTION3 ;
END_CODE

<p>Devient :</p>
CODE[]GREEN(: SOUS-MOT) TEST BLUE(IF) ACTION1 EXIT BLUE(THEN) ACTION2 ;
GREEN(: MOT) SOUS-MOT ACTION3 ;
END_CODE

<p>STRONG(Arithm�tique :) addition, conversion entier sign� et non
sign�, op�ration bool�enne. Point important : contrairement � des
langage tel que C o� le faux vaut 0 et le vrai vaut toutes valeurs
diff�rentes de 0 (mais o� 1 est en g�n�ral retourn�), en forth le faux
vaut -1. Le EXTLINK(http://wiki.c2.com/?BooleanRepresentation,lien) en
parle plus longuement. Sinon, voici un exemple :</p> CODE[]RED(1 0) &#60;&#62; . END_CODE

<p>La pile de donn�es des Forth permet uniquement de manipuler des
entiers (sign�s et non sign�s) ou des adresses de la machine virtuelle
(qui sont finalement vues comme un entier), les valeurs en floatants
(float et double du langage C) ne sont pas g�r�es nativement, une
biblioth�que devant alors �tre charg�e pour les g�rer.</p>

<p>En fait, par d�faut, Forth n'utilise pas une seule pile mais deux
piles. La deuxi�me, appel�e pile de retour, sert � l'interpr�teur
Forth pour m�moriser l'ordre d'ex�cution des mots appelant d'autres
mots. Cette pile est automatiquement manipul�e par lui mais laisse,
quand m�me, � l'utilisateur la possibilit� de d�placer et stocker
temporairement des �l�ments de la pile de donn�es (ce qui n'est pas
toujours sans risque). Nous y reviendrons plus tard.</p>

<p>Des Forth modernes peuvent ajouter nativement des piles de donn�es
suppl�mentaires comme une pile d'entiers (appel�s pile alternative)
et/ou une pile des floatants. En g�n�ral, la pile de donn�e
suppl�mentaire permet d'�viter l'utilisation de la pile de retour
comme stockage temporaire et rendant l'interpr�teur Forth plus fiable
aux erreurs de programmation.</p>

<p>Un syst�me de s�curit� permet de v�rifier que les piles ne
d�bordent pas (par le haut ou par le bas) et pr�vient l'utilisateur en
arr�tant l'ex�cution du mot en cours. Charles H. Moore quand � lui
pr�f�re utiliser un tampon circulaire par rapport � une pile. Il n'y a
plus de risque possible de d�bordement de m�moire mais il n'a pas
ajout� de syst�me pour pr�venir l'utilisateur car selon lui le
d�veloppeur doit ma�triser le nombre d'op�randes qu'il manipule. De
plus, ce syst�me permet de d�cider � tout instant la pile comme �tant
vide.</p>

<p>On constatera apr�s l'ex�cution du dernier exemple, que la
profondeur de pile des donn�e n'a pas �t� chang�e. Ceci n'est pas une
contrainte mais le standard Forth impose de laisser intact la
profondeur des piles pour au moins deux cas :</p> LIST(lors des
d�finitions d'un nouveau mot Forth, et la fin d'un fichier quand il
est inclus par un autre fichier.)




SUBSECTION(ICON_GEAR,Fonctionnement de interpr�teur externe,interpret)

<p>Un interpr�teur Forth fonctionne tr�s simplement : tant que le flux
d'entr�e n'est pas fini, les mots sont lus les uns apr�s les
autres. L'interpr�teur poss�de deux modes : soit il est mode
ex�cution, soit il est en mode compilation.</p>

<p>En mode EXECUTION :</p> LIST(Si le mot lu est connu du
dictionnaire alors il est alors ex�cut�;, sinon l'analyseur (parser)
v�rifie que le mot lu n'est pas un nombre (dans la base actuelle) : si
c'est le cas alors un nombre est alors d�pos� dans la pile de
donn�es;, sinon le mot n'est pas connu et n'est pas un nombre : une
erreur pr�vient l'utilisateur et arr�te le processus.)

<p>En mode COMPILATION les mots non-imm�diats qui sont lus, s'ils sont
connus du dictionnaire, leurs CFA sont ajout�s les uns � la suite des
autres au dans la d�finition courante du dictionnaire. Si un mot n'est
pas connu une erreur pr�vient l'utilisateur et arr�te le
processus.</p>

<p>Du peu de mots Forth que l'on a vus, c'est le mot : qui force le
mode COMPILATION de l'interpr�teur alors que le mot ; le fait passer
en mode EXECUTION. On peut d�j� se poser la question comment l'inter
peut passer en mode ex�cution avec le mot ; s'il ne fait que compiler
tous les mots qu'il voit; logiquement, il ne devrait jamais s'arr�ter
de compiler. La r�ponse vient du champ STRONG(FLAGS) o� l'un des bits
permet de rendre un mot Forth imm�diat. Par imm�diat on sous-entend
que le mot sera imm�diatement ex�cut� m�me si l'interpr�teur est en
mode compilation. Attention: un mot imm�diat ne commute pas le mode de
l'interpr�teur : il est simplement interpr�t� !</p>

<p>On raffine donc le d�finition et l'on profite pour ajouter un cas
particulier :</p>
<p>En mode COMPILATION :</p> LIST(les mots non imm�diats lus[,] s'ils
sont connus du dictionnaire[,] sont ajout�s les uns � la suite des
autres au dictionnaire dans la d�finition courante;, Si le mot est
imm�diat et connu du dictionnaire il est alors interpr�t�;, si le mot
n'est pas connu il est test� pour savoir si c'est un nombre : si oui,
il est ajout� � la d�finition mais on intercalera avant le mot
LITERAL pour ne pas l'interpr�ter comme un mot Forth; sinon le mot
n'est pas connu une erreur pr�vient l'utilisateur et arr�te le
processus.)

<p>Si l'inter lit tous les mots les uns apr�s les autres, avec le code</p>
CODE[]GREEN(: FOO) * * ORANGE(;)
END_CODE
<p>FOO n'�tant pas d�fini, l'interpr�teur devrait d�clencher une
erreur. En fait non, car comme on l'a dit l'interpr�teur sait lire le
mot suivant et le mot : quand il est ex�cut� va lire le mot suivant, �
savoir FOO afin de cr�er une nouvelle entr�e dans le dictionnaire. Par
cons�quent le mot suivant que l'interpr�teur va lire sera *.</p>

<p>L'interpr�teur Forth � deux modes (�tats) soit il est en mode
interpr�tation soit en mode compilation. Des mots comme : et ;
permettent respectivement de passer en mode compilation puis
interpr�tation.</p>

LIST(En mode interpr�tation[,] la d�finition des mots lus sont
recherch�s dans le dictionnaire puis ex�cut�s., En mode compilation[,]
une ent�te dans le dictionnaire est cr��e afin de permettre de
retrouver le nouveau mot[,] puis chaque mot lus[,] s'ils ne sont pas
consid�r�s comme imm�diats[,] sont recherch�s dans le dictionnaire et
leur r�f�rence stock�e dans la d�finition du mot en cours de
d�finition.)

<p>Le mot ORANGE(IMMEDIAT) rend imm�diat le dernier mot du
dictionnaire. Pour rappel un mot imm�diat n'est pas compilable mais
directement interpr�t� quand l'interpr�teur est en mode
compilation. Voici un exemple plus �volu� de mot imm�diat : on se
propose d'ajouter un syst�me de commentaires � Forth. Pour cela on
suppose que le mot TYPE existe d�j� (ce qui en g�n�ral le cas) ce mot
permet d'ignorer les caract�res du tampon d'entr�e jusqu'au caract�re
indiqu� comme param�re.</p> CODE[]GREEN(: &#40;) '&#41;' TYPE ORANGE(;
IMMEDIATE) END_CODE

<p>D�s que le 'analyseur ex�cutera le mot ( il ignorera tous les mots
jusqu'� trouver le mot ) et comme il est imm�diat il va fonctionner
dans une d�finition (quand l'interpr�teur sera en mode
compilation). Notons qu'il existe un autre type de commentaire Forth
le mot \ ignore enti�rement la ligne courante.</p>

<p>Si l'on d�sire rendre imm�diat un certains nombre de mots de fa�on
temporaire dans une d�finition il faut les d�limiter par les mots &#91;
et #&#93;. Ces mots modifient l'�tat de l'interpr�teur: interpr�tation
ou compilation mais ne changent pas le smudge bit des mots.</p>

<p>Si l'on d�sire compiler un mot imm�diat il faut placer avant le mot
&#91;COMPILE#&#93; (qui lui aussi est imm�diat). Le mot COMPILE joue
le m�me r�le que &#91;COMPILE#&#93; mais est non imm�diat. Il permet
de ... TODO A FINIR ... Notons que ces mots sont d�suets � cause du
risque de confusion pour les d�veloppeurs pour se souvenir de qui est
imm�diat, par cons�quent on utilisera plut�t le mot POSTPONE qui
appelle l'un ou l'autre automatiquement selon le caract�re imm�diat du
mot qui lui succ�de.</p>

<p>On se propose de cr�er deux nouveaux Forth : DO et LOOP qui
permettent de faire une boucle. On supposera l'existence d'un mot
Forth (non officiel) 0BRANCH qui fait un saut relatif � la
condition que le sommet de la pile vaut 0.</p>
CODE[]GREEN(: DO)
  COMPILE SWAP
  COMPILE &#62;R
  COMPILE &#62;R
  HERE
ORANGE(; IMMEDIATE)

GREEN(: LOOP)
  COMPILE R&#62;
  COMPILE 1+
  COMPILE R&#62;
  COMPILE 2DUP
  COMPILE &#62;R
  COMPILE &#62;R
  COMPILE &#60;
  COMPILE 0=
  COMPILE 0BRANCH
  HERE - ,
  COMPILE R&#62;
  COMPILE R&#62;
  COMPILE 2DROP
ORANGE(; IMMEDIATE)
END_CODE

<p>Voici un exemple typique de ces mots qui affiche ...</p>
CODE[]: DECADE RED(10 0) DO  RED(1) . LOOP ;
END_CODE

D�taillons le code Forth: DO: les 2 parametres : fin et d�but
d'it�ration. Sont commutes puis stock�s dans la pile de retour.

LOOP: les 2 param sont remis dans la pile de donn�es et litt�rateur
est incr�mente. Le 2DUP permet de remettre les param dans la pile de
retour et de les comparer entre eux. S'ils sont �gaux 0BRANCH laisse pas


Voici en m�moire comment est le mot
RED(10 0)
SWAP &#62;R &#62;R
RED(1) .
R&#62; 1+ R&#62; 2DUP &#62;R &#62;R &#60; 0= 0BRANCH RED(0xe8) R&#62; R&#62; 2DROP
EXIT
  Nous voyons les mots en provenance du mot DO:
  SWAP &#62;R &#62;R

  Nous voyons les mots en provenance du mot LOOP:
  R&#62; 1+ R&#62; 2DUP &#62;R &#62;R &#60; 0= 0BRANCH RED(0xe8) R&#62; R&#62; 2DROP
O� 0xe8 et la diff�rence d'adresse entre le HERE du DO et le HERE du
    LOOP permettant d'it�rer le calcul.

    et 1 . le code du calcul.



SUBSECTION(ICON_GEAR,Fonctionnement de interpr�teur interne,interpreteur)

ICON_BUILD
                                    dnl parler du code assembleur dans le Forth

                                    Expliquer le mot COMPILE

SUBSECTION(ICON_GEAR,Variables et constante,var)

dnl a placer apres le dico

ICON_BUILD

<p>Nous avons vu que Forth permet de stocker des mots Forth mais il
peut �galement servir � stocker de la m�moire. En effet on a dit dans
une section pr�c�dente que la variable DP permet de changer o� HERE
indique le premier emplacement libre. Par cons�quent on peut se
r�server des emplacements m�moires et l'id�al est de donner un nom aux
emplacemets.</p>

<p>Le mot ALLOC permet de d�placer DP du nombre d'octet voulu (un
ALLOC pour 1 cellule est le mot ,)</p>

dnl https://fr.wikiversity.org/wiki/Forth/Conserver_des_donn%C3%A9es

dnl assembleur

SUBSECTION(ICON_GEAR,Un langage evolutif,evol)

ICON_BUILD BUILD DOES, OO

LEFT_BORDER(TABLE_OF_CONTENTS)
END_BODY(dyna,Principe moindre action,maxplus,Bo�te � outils Max+)
