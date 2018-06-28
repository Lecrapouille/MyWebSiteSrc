TITLE(Interpréteur Forth)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Forth language)
DESCRIPTION(A introduction to Forth language)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

BEGIN_BODY
SECTION(Le langage Forth)
SUBSECTION(ICON_READ,Références à Forth,ref)

<p>Le but de ce document est de faire découvrir (ou redécouvrir) le
langage Forth, d'expliquer son fonctionnement interne et de mieux
faire comprendre certains mots dits STRONG(de hauts niveaux). Ce
document montre aussi qu'il existe, non pas un unique langage Forth
standardisé mais des Forth personnalisés et adaptés à chaque projet.
Avant de poursuivre la lecture de ce tutoriel, voici une sélection non
exaustive d'ouvrages et de liens que je recommande de lire. Je suggère
aux lecteurs qui n'ont jamais connu ce langage de s'initier avec les
deux premiers liens puis, si possible le livre de W.P. Salman,
O. Tisserand, B. Toulout qui est, selon moi, un livre de référence
expliquant complétement le fonctionnement interne du Forth.</p>

LIST( ICON_FR
EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,Un
cours) académique sur le Forth. Ce document est intéressant car il
parle de la dernière variante de Forth inventé par Moore: colorForth.,

ICON_EN EXTLINK(https://www.forth.com/starting-forth/,Starting Forth)
est le cours d'introduction pédagogique recommandé pour s'initier à ce
langage.,

ICON_EN EXTLINK(http://lars.nocrew.org/forth2012/core.html,forth2012) le
glossaire Forth ANSI 2012.,

ICON_EN ICON_FR
EXTLINK(https://www.amazon.com/FORTH-W-P-SALMAN/dp/0387912568/,Forth)
[W.P. Salman, O. Tisserand, B. Toulout. Edition Macmillan (english
version) ou Edition Eyrolles (french version) 1983. (ISBN-13:
978-0387912561, ISBN-10: 0387912568) est un excellent livre décrivant
de façon complète la théorie du fonctionnement d'un interpréteur
Forth. Avec ce livre seul, il est possible de re-créer son propre
Forth. A noter que la version française 1983 contient quelques erreurs
de typographie dans du code Forth corrigées dans la version anglaise
(et probablement la version française de 1984).],

ICON_EN
EXTLINK(http://git.annexia.org/?p=jonesforth.git;a=blob;f=jonesforth.S;h=45e6e854a5d2a4c3f26af264dfce56379d401425;hb=HEAD,JonesForth)
[Un excellent tutoriel sur l'implémentation d'un interpréteur Forth
écrit en assembleur i386. Cet document complète le livre de
W.P. Salman pour la clarté de ses explications et de son
implémentation très claire en code assembleur (il existe des versions
de ce code pour d'autre assembleur et dont un fonctionnant pour
Arduino Due, voir lien suivant). L'interpréteur n'est pas complet mais
les explications y sont plus claires.)],

ICON_EN EXTLINK(https://github.com/ekoeppen/CoreForth, CoreForth) un
  Forth pour Cortex M0 et M3. Fonctionne chez moi avec une carte
  EXTLINK(https://www.arduino.cc/en/Main/arduinoBoardDue,Arduino Due).,

ICON_FR
EXTLINK(https://www.amazon.fr/Concept-Forth-Langage-syst%C3%A8me-dexploitation/dp/2866990110,
Le Concept Forth) [de Pascal Courtois (français, ISBN-10:
2866990110, ISBN-13: 978-2866990114). Explique les mots de base[,]
comment fonctionne un interpréteur Forth mais est moins complet que le
livre Forth de W.P. Salman. On peut trouver des extraits sur Google
(avec l'aimable autorisation de son auteur). Il donne des programmes
assembleur sur des interpréteurs Forth mais ils sont difficilement
compréhensibles et pour des vieux micro et il vaudra mieux se baser le
lien précédent.],

ICON_FR EXTLINK(http://jpb.forth.free.fr/,Entrer dans le monde du
Forth) Très belle réalisation de cartes électroniques pour systèmes
Forth. Les explications sont claires mais peu nombreuses.,

ICON_EN EXTLINK(http://thinking-forth.sourceforge.net/,Thinking Forth)
Livre pour les développeurs modérés en Forth donnant des conseils sur
comment bien penser son projet en Forth. Ce livre est destiné pour les
enthousiastes non débutants.,

ICON_EN
EXTLINK(https://www.amazon.com/Object-Oriented-Forth-Dick-Pountain/dp/0125635702,Object
Oriented Forth) Livre expliquant comment faire évoluer son Forth pour
le programmer façon objet.)

<p>Voici une liste non exhaustive de Forth non payants :</p>

LIST(
ICON_EN EXTLINK(https://www.gnu.org/software/gforth/,gForth) le Forth GNU
toujours activement développé et servant de référence.,

ICON_EN EXTLINK(https://thebeez.home.xs4all.nl/4tH/4tHmanual.pdf,4th)
un Forth considéré comme ne crashant jamais.,

ICON_EN ICON_FR EXTLINK(http://christophe.lavarenne.free.fr/ff/,FreeForth) un Forth
fait par Christophe Lavarenne où le mode exécution n'existe plus et
est remplacé par la compilation d'un mot anonyme.,

ICON_EN EXTLINK(http://www.softsynth.com/pforth,pForth) un Forth connu
  à son époque et portable en C mais n'est plus développé.,

ICON_EN EXTLINK(https://github.com/seanpringle/reforth,reForth) un
  Forth écrit en C avec des modifications intéressantes vis à vis des
  Forth standards. Il n'est plus développé.,

ICON_EN ICON_FR MYLINK(simtadyn, SimForth) [mon interpréteur Forth
fait maison, portable, écrit en C++ pour les besoins de mon projet
personnel de cartes géographiques SimTaDyn. Il est inspiré de pForth
et du livre et créé contenant son mon interpréteur Forth. J'utilise le
C++ pour avoir à la fois un interpréteur Forth classique (compilable
séparément du projet principal), tout en ayant un interpréteur
spécialisé pour mes cartes géographiques.])

SUBSECTION(ICON_READ,Histoire du Forth,intro)

<p>Forth est un langage inventé par Charles H. Moore dans les années
1970 afin de palier la lourdeur des langages de l'époque incompatibles
pour des applications temps réel, Moore travaillant à l'époque à
l'Observatoire National de Radio-Astronomie des Etats-Unis. Forth a
été conçu pour être le plus simple et minimaliste possible où avec
environ 150 mots du langage, un petit système d'exploitation peut être
créé. Forth fut, par la suite, devenu un langage largement utilisé
dans ce milieu (comme par la NASA) mais aussi pour des machines
personnelles telles que le Machintosh avec le MacForth (pour ne citer
que lui). Forth a été utilisé, à ces époques, en industrie pour tester
et déboguer les registres des nouveaux chips (SoC). Actuellement, le
prix du stockage mémoire ayant fortement baissé et la puissance brute
en calcul augmentée, l'optimisation des ressources des systèmes
embarqués est devenu moins critique, ce langage est devenu beaucoup
moins à la mode là où le C demeure toujours en maître.</p>

<p>Comme nous allons le détailler tout le long de ce document, faire
son propre interpréteur Forth est très simple, chacun pouvant posséder
le sien mais pas forcément compatible avec celui d'un autre. Cela fut
un point noir de ce langage qui malgré plusieurs tentatives de
standards (78, 79, 83, 2012 ...) pour normaliser les mots les plus
courants ne furent pas forcément bénéfique au langage. Pour
information, Charles H. Moore est toujours actif. Il a quitté le
consortium, jugeant que la normalisation nuisait à l'innovation de
nouveaux Forth. Il a ainsi pu continuer à simplifier les structures
Forth comme expliqué dans
EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,le
lien suivant[,] section Structures simplifiées). Avec
EXTLINK(https://blogs.msdn.microsoft.com/ashleyf/2013/11/02/the-beautiful-simplicity-of-colorforth/,colorForth)
Moore a ajouté un rôle aux mots en leur ajoutant une couleur. Il a
également fondé GreenArrays Inc. qui produit des puces
EXTLINK(http://bitlog.it/programming-languages/getting-started-with-the-ga144-and-arrayforth/,GA144)
contenant un réseau communicant de sous-processeurs Forth dont le
EXTLINK(https://www.google.com/patents/US7752422,brevet) explique
clairement le fonctionnement (et est très lisible pour un brevet).</p>

<p>Nous allons, tout au long de ce document, revenir sur chaque
éléments de la définition, mais en quelques mots Forth peut-être
résumé à :</p>

LIST(un langage à piles;,

un langage extensible avec une syntaxe auto-évolutive (ré-entrance[,] métaprogrammtion);,

semi-compilé (embarquant son propre compilateur hybridé avec un interpréteur);,

peut être vu comme un système d'exploitation car il est à la fois un
langage[,] une machine virtuelle car Forth sait gérer sa propre
mémoire de masse et dispose d'entrées/sorties;,

il est à la fois un langage bas-niveau (manipulant de l'assembleur et
des registres hardware) et un langage haut-niveau (abstraction des
données[,] faible couplage[,] peut être orienté objet[,] etc);,

bien que la plupart des langages soient complets au sens de Turing[,]
Forth offre à l'utilisateur la possibilité d'accéder directement aux
différents éléments d'une machine de Turing (ruban infini[,] tête de
lecture/écriture[,] registre d'état[,] table d'actions.))

SUBSECTION(ICON_EYES,Coloration syntaxique,color)

<p>Pour ce document, nous allons, concernant la coloration syntaxique,
   prendre une convention qui n'est pas officielle mais inspirée de
   ColorForth, mais dans ce document la couleur est purement
   décorative, contrairement à ColorForth qui ajoute une information
   aux mots Forth pour le compilateur:</p>

TABLE(3, Couleur, Quand, But,
STRONG(En gras), ignoré, Les commentaires,
GREY(En gris), compilation/exécution, les mots manipulant les nombres dans la pile des données,
RED(En rouge), compilation, la définition d'un nouveau mot,
ORANGE(En orange), compilation, les mots immédiats,
BLUE(En bleu), exécution, les littéraux,
GREEN(En vert), exécution, saute sur la définition d'un mot non primitif)

LIST(RED(En rouge) les littéraux;,GREEN(En vert) la définition d'un
   nouveau mot;,ORANGE(les mots immédiats);,BLUE(En bleu) les mots de
   structure conditionnelle;,GREY(En gris) les commentaires.)</p>

SUBSECTION(ICON_EYES,Rapide aperçu de la théorie des langages,theo)

<p>Cette section emprunte de grossiers racourcis pour résumer la
théorie des langages. Le but document n'étant pas de l'expliquer (le
lecteur trouvera par lui même des documents complets) mais de faire
sentir au lecteur la difficulté du sujet et par contraste de montrer
la simplicité du langage Forth.</p>

<p>Pour rappel et faire très simple, en théorie des langages, un
ITALIC(compilateur) est un outil qui transforme un langage
informatique en un autre langage. Par exemple du langage C au langage
machine directement éxécutable. Pour cela, il utilise généralement
deux outils:</p>

LIST(Un ITALIC(lexer) est un outil d'analyse lexicale qui convertit un
texte (entrée) en une liste d'unité lexicale (sortie) appelée
ITALIC(symboles) (tokens en anglais).,

Cette liste est ensuite consommée par un second outil appelé
ITALIC(parser) qui retourne un
EXTLINK(https://en.wikipedia.org/wiki/Abstract_syntax_tree,arbre de
syntaxe) abstraite (AST en anglais) où les noeuds de cet arbre sont
les opérateurs et les feuilles les opérandes et que l'on visite avec
un parcour
EXTLINK(https://fr.wikipedia.org/wiki/Parcours_d%27arbre,main-gauche). Le
terme ITALIC(abstrait) vient du fait
EXTLINK(https://en.wikipedia.org/wiki/Parse_tree,Parse tree) qui
represente la répresentation concrète et complète du texte.)

<p>Une fois l'AST construit, cette structure est plus simple pour le
compilateur de la travailler. Un compilo C aurait analyser un certain
nombre fois une analyse de l'AST pour en créer des AST contenant des
pseudo-instructions de plus en plus proche de l'assembleur de la
machine cible. Il aurait également généré un graphe colorié afin de
connaître le nombre minimal de registres nécessaires pour les
variables locales (par exemple dans notre cas, un registre pour
stocker le résultat 14), etc.</p>

<p>Donnons un exemple de code en langage C:</p>

CODE[]display(2 + 3 * 4);
END_CODE

<p>Un compilateur C, lors d'une première passe d'interprétation,
aurait détecté la priorité de la multiplication sur l'addition via une
grammaire non-ambigue et aurait ajouté implicitement les parenthèses
suivantes:</p>

CODE[]display(2 + (3 * 4));
END_CODE

<p>puis aurait généré un ParsTree similaire à:</p>

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
langage machine et obtenir du code similaire à ça. Ici on ne montre
pas le graphe coloré pour allouer le moins de registres possibles:</p>

CODE[]
push %eax       ; save value of e1 on the stack
pop %ecx        ; pop e1 from the stack into ecx
addl %ecx, %eax ; add e1 to e2, save results in eax
...
END_CODE

<p>En langage LISP, grâce à sa syntaxe représentant des arbres, on
aurait implicitement l'AST car on aurait écrit quelque chose
d'approchant à :</p>

CODE[](display (+ (* 3 4) 2))
END_CODE

SUBSECTION(ICON_EYES,Forth un langage sans syntaxe,sansyn)

<p>Forth est à la fois un interpréteur et un compilateur. Forth ne
compile pas le code en langage machine (comme pour le langage C) mais
du byte-code dans une machine virtuelle (comme pour Java).</p>

<p>La grammaire de Forth, contrairement aux langages tels que le C ou
Python, n'a pas de grammaire ambiguë, ne nécessite pas de rétro-action
lexicale, etc. Un script Forth est une simple suite de
ITALIC(symboles) séparés par des espaces. Il n'y a donc aucune
syntaxe. Par conséquent un compilateur Forth est un simple lexer sans
son parser. Quand il va lire un script, il n'a besoin que d'extraire
et de reconnaitre le symbole courant (qui doit être soit un symbole
qui lui est ITALIC("connu"), soit un nombre) et parfois le symbole
suivant (quand celui-ci n'est pas encore connu, comme par exemple lors
de la définition d'un nouveau symbole/définition Forth). Dans une
ILINK(section,dico) de ce document, on expliquera ce que le verbe
connaître signifie concrêtement. Nous verrons également que ce sont
les symboles eux mêmes qui agissent directement sur le comportement du
compilateur.</p>

<p>Dans la convention Forth, une unité lexicale est appelé ITALIC(mot)
(word en anglais) et sa signification est proche de celle du langage
naturel humain. Egalement par convention, un mot Forth est formé de
n'importe quelle suite de caractères ASCII (il n'y a réellement aucune
restriction contrairement à des langages tels que C) dont,
historiquement, la taille maximale est 31 caractères ASCII (mais cette
limitation a disparue sur certains Forth tels que gForth).</p>

<p>Cette absence de syntaxe s'explique facilement: Forth utilise la
notation polonaise inversée (Reverse Polish notation) à savoir que les
opérandes (paramètres) sont notées avant les opérateurs. Cette
notation évite l'utilisation de parenthèses palliant l'ordre de
priorité des opérateurs (par exemple en mathématique la priorité de la
multiplication sur celle de l'addition) et évitant ainsi l'utilisation
d'une grammaire complexe impliquant la création d'un AST.</p>

<p>Le code Forth suivant :</p>
CODE[]BLUE(2 3 4) GREY(+ *)
END_CODE

<p>équivaut à l'expression arithmétique 2 * (3 + 4) alors que le code
Forth suivant :</p>
CODE[]BLUE(2 3 4) GREY(* +)
END_CODE

<p>équivaut à l'expression arithmétique 2 + (3 * 4).</p>

<p>Si l'on désire afficher à l'écran le résultat de l'opération on
  utilisera le mot Forth STRONG(.)</p>
CODE[]BLUE(2 3 4) GREY(* + .)
END_CODE

<p>Le travail de l'interpréteur Forth est assez trivial: il se
contente d'extraire les symboles à la volée (simplement de gauche à
droite), il empile les nombres qu'il rencontre et exécute les
opérandes (les mots Forth) consommant une certaine quantité de données
dans cette pile puis, si résultat il y a, empilera le résultat. La
section suivante expliquera mieux ce processus.</p>

<p>Si l'on désire créer un nouveau mot Forth, on utilisera le mot
Forth RED(:) suivi du nom du nouveau mot Forth puis d'une suite de
mots Forths connus ou de nombres et enfin du mot ORANGE(;) qui termine la
définition. Les mots : et ; sont des mots primitifs du langage (builtin).
L'interpréteur Forth passe alors en mode compilation. Par exemple:</p>

CODE[]RED(: MON-CALCUL) BLUE(2 3 4) GREY(* +) ORANGE(;) END_CODE

<p>Il est clair que MON-CALCUL est un mot Forth inconnu et que si
l'interpréteur tente de l'exécuter il échouera. C'est l'exécution du
mot STRONG(:) qui va lui indiquer que le mot suivant (à savoir
MON-CALCUL) ne doit pas être interprété mais doit être utilisé. Nous
reviendrons plus tard sur le fonctionnement exact avec les mots Forth
de hauts niveaux. Le mot MON-CALCUL a été compilé en byte-code et
désormais il est maintenant un mot connu. Nous y reviendrons dans une
section future.</p>

SUBSECTION(ICON_GEAR,Forth un langage à piles,pile)

<p>Le lecteur notera, dans le titre, l'utilisation du pluriel pour le
   mot pile. En informatique une
   EXTLINK(https://fr.wikipedia.org/wiki/Pile_(informatique),pile)
   (stack en anglais) est une structure pour stocker des éléments et
   par analogie avec la pile d'assiettes, c'est la dernière assiette
   (dernière donnée) déposée qu'on ira prélever en premier. Une pile
   est également nommée LIFO pour Last In First Out. Nous allons voir
   ici que Forth utilise deux piles: -- une pile pour les données
   (nommée data stack ou bien S); -- une pile pour l'exécution des
   mots (nommée return stack ou bien R).</p>

<p>Des langages, tels que le C, cachent délibérément au développeur
   l'utilisation d'une pile de contexte pour sauvegarder des
   informations. Par exemple, lorsque une fonction appelle une autre
   fonction, le compilateur va empiler:</p>

LIST(les paramètres passés à la fonction[,], les variables locales de
la fonction[,], et bien d'autres encore comme le code de retour de la
fonction.)

<p>Ceci peut entraîner des pénalités en temps d'exécution du programme
(passage de trop de paramètres, passage des paramètres par copie au
lieu de leur adresse), voir des crashs par débordement de la pile
d'appels (stack overflow) ce qui peut arriver, par exemple, dans les
cas suivants: LIST(soit en passant par copie des données trop
grosses[,],soit en utilisant la récursivité sur des langages mal
adaptés à la récursion terminale tels que le C.)</p>

<p>Forth utilise deux types de piles: LIST([une accessible au
développeur pour stocker les données qui sont, en fait, les paramètres
des mots Forth;],[une seconde utilisée par l'interpréteur pour
sauvegarder l'ordre des appels des mots. Nous verrons qu'elle est en
fait partiellement accéssible au développeur.])

<p>STRONG(Pile de données:) En Forth, avec la notation polonaise
inversée, les opérandes sont directement stockés dans une pile de
données et les opérateurs (les mot Forths) les consomment. Par
conséquent, contrairement à des langages comme le C, la pile évite à
Forth l'utilisation de variables temporaires nommées (équivalent aux
variables locales du C). Ceci est à la fois un avantage et une
faiblesse du langage: le programmeur Forth doit organiser l'ordre des
éléments dans la pile avant leur consommation (avec des mots tels que
DUP, SWAP, OVER) ce qui ajoute du bruit au code source de
l'algorithme.  Certains Forth non-standards reprennent cette idée de
variables locales nommées (comme le langage C): une partie de la pile
est transférée dans ces variables pour une utilisation directe.</p>

<p>Supposons les piles S et R initialement vides puis exécutons le
code suivant:</p> CODE[]BLUE(2) GREY(DUP + .)  END_CODE

LIST(L'interpréteur va placer l'opérande 2 dans la pile (qui aura donc
son premier élément).,

Le mot DUP va le consommer (dépiler) puis le dupliquer (DUPlicate en
anglais). La pile aura deux éléments.,

Le mot + consommera les deux éléments de la pile (deux dépilements),
les additionnera et empilera le résultat (soit la valeur
4).,

Finalement le mot . va dépiler la valeur et affichera sa valeur à
l'écran (équivalent du stdout du C). La pile de données se retrouve
dans son état d'origine (vide).)

<p>Il est de la responsabilité du développeur de vérifier qu'il y ait
toujours le bon nombre d'éléments dans la pile. Si un mot veut
consommer des éléments non présents dans la pile, l'interpréteur va
interrompre tout le programme et le signaler à l'utilisateur par un
message d'erreur.</p>

<p>STRONG(Notation des piles:) TODO
Dés que le l'analyseur exécutera le mot ( il ignorera tous les mots
jusqu'à trouver le mot ) Notons qu'il existe un autre type de commentaire Forth
le mot \ ignore entièrement la ligne courante.</p>
CODE[] RED(: [par]) 41 WORD DROP ORANGE(; immediate)
END_CODE

<p>STRONG(Pile de retour:) cette pile est utilisée pour mémoriser
l'ordre des appels des mots Forth appelant d'autres mots Forth. Pour
bien comprendre la raison de son existence, rappellons-nous des
algorithmes de parcours d'arbre. Sur la figure suivante,
nous souhaitons simuler un repas en parcourant les
noeuds de cet arbre avec un parcours préfixe main gauche
EXTLINK(https://en.wikipedia.org/wiki/Tree_traversal,main-gauche).</p>

CAPTION_PICTURE(tuto/forth/poulet-frite-arbre.png,Votre repas pour ce midi.)

<p>Avant d'expliquer l'algorithme, voyons d'abord le résultat attendu
d'un parcours préfixe: ITALIC([repas, entrée, déjeuner, poulet,
frites, désert]). Les mots ITALIC([repas, déjeuner]) n'ont pas de
signification intéressante, pour cela on ne gardera que les feuilles
de l'arbre (feuille est noeud ayant aucun fils), on
obtient alors: BOLD([entrée, poulet, frites, désert]). Pour
obtenir ce résultat, on peut penser à deux algorithmes: -- l'un récursif, --
l'autre itératif.</p>

<p>Voyons d'abord la version récursive de l'algorithme d'un parcours
préfixe main gauche. Pour simplifier on supposera que l'arbre binaire (à savoir soit au max deux
sous-arbres par noeud), en effet, pour un arbre général (comme sur la figure
précédente), on remplacera fils gauche/droit par le N-ième fils:</p>

CODE[]explorer(arbre A):
   afficher le noeud de A;
   si A a un fils gauche alors explorer(fils gauche de A) fin si;
   si A a un fils droit alors explorer(fils droit de A) fin si;
END_CODE

<p>Cet algorithme utilise implicitement une pile pour sauvegarder les
noeuds parcourus. Le compilateur va gérer automatiquement la pile d'appel
(Rappelez vous quand je disais que le langage C cachait au
développeur l'utilisation de cette pile). Maintenant, voyons comment est
gérée cette pile, en utilisant un algorithme itératif:</p>
CODE[]explorer(arbre A):
   créer une pile vide;
   empiler(A);
   tant que la pile n'est pas vide faire:
       noeud <- dépiler;
       afficher noeud;
       si noeud a un fils gauche alors empiler(son fils gauche) fin si;
       si noeud a un fils droit alors empiler(son fils droit) fin si;
   fin tant que
END_CODE

<p>Quel est le lien avec Forth ? L'interpréteur Forth dès qu'il lit un
nouveau symbole (mot) sur son entrée va l'interpréter de façon
similaire à notre algorithme d'exploration d'arbre à la différence près
qu'il ne se contentera pas d'afficher le noeud mais exécutera les
instructions assembleur du mot. La pile utilisée est la pile de retour R
que l'on a introduit précédemment.</p>

<p>On peut se poser une autre
question: quel est le lien entre un mot Forth est un arbre ?  Un mot
Forth connu de l'interpréteur à implicitement une structure d'arbre.
Supposons que notre Forth connaisse les mots ENTREE, POULET, FRITES, DESERT.
Nous pouvons créer les mots suivants:</p>

CODE[]RED(: DEJEUNER) GREEN(POULET FRITES) ORANGE(;)
RED(: REPAS) GREEN(ENTREE DEJEUNER DESERT) ORANGE(;)
END_CODE

<p>L'arbre général qui était REPAS est devenu un arbre binaire dans
Forth et les noeuds qui avaient la même hauteur sont maintenant liés
entre eux.</p>

CAPTION_PICTURE(tuto/forth/poulet-frite-forth.png,Votre repas en Forth.)

<p>Cela sera plus clair pour le lecteur lorsque nous aborderons le chapitre sur le
dictionnaire de l'interpréteur car nous n'avons pas encore abordé comment les mots Forth sont
représentés en mémoire (chapitre suivant), pour le moment le lecteur doit accepter
le fait que les fils gauches sont une addresse vers l'emplacement mémoire
d'un autre mot Forth et que les fils droits n'existent pas, ils sont
implicites car les noeuds sont placés consécutivement dans la mémoire
(par exemple ENTREE, DEJEUNER et DESSERT sont consécutifs en mémoire).</p>

<p>Maintentant, avec cet arbre binaire, si l'on éxécute uniquement les noeuds qui n'ont pas de fils gauche, on obtiendra le
résultat attendu: BOLD([ENTREE, POULET, FRITES, DESERT]). On comprendra mieux par la suite</p>

<p>Comment est implémenté les piles ainsi que le parcours d'arbres des mots
en Forth ? Deux réponses dépendants du langage qui implémente l'interpréteur Forth:</p>

LIST(STRONG(Assembleur:) [Forth étant un langage pour les
micro-contrôleur, les mots primitifs du langage (à savoir les mots
constituants le coeur du système) ITALIC(pointent) sur du code
assembleur, une des piles utilise le registre de la pile interne aux
micro-contrôleur, l'autre pile doit être gérée explicitement. noeud
est le registre PC et il faut un registre d'interprétation IP qui se
déplace automatiquement et exécute les instructions assembleurs des
mots. L'existence des fils est géré par le mot Forth spécial RETURN
qui doit être ITALIC(collé) aux mots primitifs. Je conseille le
tutoriel de
EXTLINK(http://git.annexia.org/?p=jonesforth.git;a=blob;f=jonesforth.S;h=45e6e854a5d2a4c3f26af264dfce56379d401425;hb=HEAD,JonesForth)
pour plus de renseignements.], [Dans un langage de haut niveau tel que
le C: pour un soucis de portabilité les piles seront émulées par un
tableau et les registres IP et PC seront émulés par un switch case.])

<p>STRONG(Note:) les débutants peuvent ignorer cette remarque dans
un premier temps, le pile de retourn est en fait partiellement accessible au
développeur mais cela peut présenter un risque de crash du programme. En effet
cette pile est utilisée en même temps à la fois par l'interpréteur et le
développeur. Il existe des mots Forth permettant de déplacer temporairement des
nombres de la pile de données sur la pile de retour [>R] et [R>] mais il faudra
faire attention à laisser la définition propre sous peine de faire crasher l'interpréteur (interprétation, lors
du parcours d'arbre, du nombre transféré de la pile de données à la
pile de retour). Pour cela il faut que le nombre mot [>R] et [R>] soient balancés.

<p>STRONG(Piles auxiliaires:) Pour éviter les crashs avec les mots [>R] et [R>]
certains Forth les ont interdit et rend privée l'accès à la pile de retour. En contre-partie,
il est proposé à l'utilisateur une seconde pile de stockage des données. De plus les Forth initiaux
ne manipulent pas de nombres floattants: ils sont émulés et utilisent la pile de données. C'est
pour cela que certains Forth ont une pile qui leur est spécialement dédiée. Par conséquent un Forth
non-standard peut avoir jusqu'à quatre piles.</p>

SUBSECTION(ICON_GEAR,Dictionnaire Forth: une machine virtuelle,dico)

dnl expliquer les mots primitifs

<p>Pour résumer ce qu'on l'a vu, Forth est un langage extensible
(tissé): à partir de quelques mots de base on peut créer un nouveau
mot plus évolué. Par exemple, le code suivant:</p>

CODE[]RED(: SQUARE) GREY(DUP *) ORANGE(;)
END_CODE

<p>Permet de définir un nouveau mot Forth SQUARE via les mots : et ;
(qui jouent le rôle de début et de fin de définition). Une fois ce mot
défini, il sera reconnu en tant que mot Forth valide par l'interpréteur. Dans
notre cas, quand SQUARE sera exécuté, il calculera la puissance deux
du nombre stocké dans la pile. Par exemple, le code suivant, consommera le nombre
5 posé de la pile et affichera le nombre 25.</p>

CODE[]BLUE(5) GREEN(SQUARE) GREY(.)
END_CODE

<p>Nous avons également vu que l'exécution de mots
Forth se rapproche d'un parcours d'arbre. Cette section fait enfin
ce lien, en expliquant comment les mots Forth sont stockés en mémoire
et se réfèrent entre eux.</p>

<p>Les mots Forth et leur définition sont stockés dans une structure
de donnée appelée par convention le ITALIC(dictionnaire) (dictonary en
anglais). un mot Forth stocké dans ce dictionnaire sera reconnu par l'interpréteur.
La norme Forth laisse libre son implémentation. Regardons la
structure originelle du Forth pensée par son auteur.</p>

<p>Le dictionnaire est un segment mémoire et peut être vu comme le
ruban infini d'Alan Turing. Il est divisé en cases mémoire consécutives et par
convention on les nomme cellule (cell en anglais). Leur taille en
octets dépend de l'architecture de la cible. Nous nous baserons pour
ce document sur une architecture 16-bits, donc un mot sera codé sur deux octets.
Par conséquent la taille d'un dictionnaire est 2<sup>16</sup>-1 soit 64 Ko (ce qui
est suffisant pour stocker un programme Forth). Pour rappel Forth étant né dans les
années 70, il est trés adapté pour ces tailles de mots et est
moins bien adapté pour des architectures 32 ou 64-bits, à cause des
alignements des adresses mémoires et du padding implicite.</p>

<p>Voici la structure mémoire d'un mot Forth:</p>
CODE[]                  &lt;----------            Entête        ---------->
 - - - -----------+---------------+------+------------------------+----------- - - - + - - - - - - -
Fin mot précédent | BLUE([[Taille, flags]]) | RED(Nom)  | Pointeur mot précédent | GREEN(Déf)GREY(inition)       | Début mot suivant
 - - - -----------+---------------+------+------------------------+----------- - - - + - - - - - - -

                  ^                      ^                        ^     ^
                  |                      |                        |     |
                 NFA                    LFA                      CFA   PFA
END_CODE

LIST(Les informations STRONG([[Taille, Flags]]) sont codées sur 1
seul octet.

LIST(STRONG(Taille:) code sur les 5 bits de poids faible[[,]] le nombre de
caractères ASCII du nom du mot Forth;,
STRONG(Flags:) code sur les 3 bits de poids fort les informations
suivantes:

LIST(STRONG(Smudge bit :) indique si le mot doit être ignoré lors
d'une recherche dans le dictionnaire. Ce drapeau est placé dans deux
cas : -- soit l'utilisateur a décidé de supprimer le mot (avec le mot FORGET);
-- soit d'une définition avortée (l'utilisateur a fait une erreur comme une
typo sur un mot de la définition qui n'a donc pas aboutie).;,

ORANGE(immediat bit :) si le mot doit être immédiatement interprété
(exécuté) dés que l'interpréteur le lit, et ce, même si l'intérpréteur
est entrain de compiler un nouveau mot. Le seul mot Forth immédiat que l'on
connaît à ce niveau du document est le mot ORANGE(;) qui termine la définition
d'un mot (et accéssoirement finalise le Smudge bit). S'il n'avait pas été
immédiat l'interpréteur l'aurait ajouté dans la définition du mot en cours.
Il faut pouvoir indiquer au compilateur quand s'arrêter.;,

et le dernier bit toujours à 1 servant de séparateur entre les entrées
du dictionnaire (soit valant 80 en base 16). Il permet de retrouver le
début de définition d'un mot et donc de pouvoir séparer plus facilement
les mots entre eux.)),

STRONG(Nom :) est le nom du mot Forth et le nombre de charactère ASCII consécutifs est
variable et est donné par l'information STRONG(Taille:). Le nombre max de caractère
est donc 2<sup>5</sup>-1.,

Pointeur vers le mot précédent: STRONG([[[LINK]]] POINTER :) est
l'adresse de l'entrée précédente du dictionnaire. Les mots Forth sont
stockés dans le dictionnaire comme une liste simplement chaînée et dont l'interpréteur
maintient automatiquement la tête de la liste. L'interpréteur peut ainsi savoir si
un mot existe. Les adresses peut être relatives ou absolues (la
première ayant la bonne propriété de permettre de déplacer un bloc
mémoire du dictionnaire sans devoir changer l'ensemble des adresses). Le nombre
d'octets d'une adresse dépend de l'architecture choisie[[,]]ici 16
bits et par conséquent la taille d'un dictionnaire est
2<sup>16</sup>-1 soit 64 Ko.,

STRONG(Définition :) est une suite d'adresses pointant sur les mots
déjà existants du dictionnaire[[,]] que l'on nommera par convention Code
Field Address (CFA).)

<p>Certaines adresses sont importantes en Forth et possèdent un nom :</p>
LIST(STRONG(NFA:) Name Field Address pointe sur l'entrée d'un
mot;,

STRONG(LFA:) Link Field Address pointe sur l'emplacement contenant
l'adresse du mot précédent. On rappelle qu'elle sert à parcourir les
entrées du dictionnaire et savoir si un mot est connu de
l'interpréteur. Les mots qui ont leur Smudge bit;,

STRONG(CFA:) Code Field Address pointe sur le début de la
définition d'un mot. Il ne faut pas le confondre avec LFA car il sert
à déplacer le pointeur d'interprétation de l'interpréteur (pointeur
sur le mot à interprété). Il faut le voir comme une sorte
d'identifiant sur les mots sorte de bytecode/opcode d'une machine
virtuelle java;,

STRONG(PFA:) Parameter Field Address pointe sur le second
emplacement de la définition.)

<p>A partir d'un CFA donné, grâce au bit toujours mis à 1, il est
possible d'atteindre le début de l'entrée en décrémentant la valeur de
l'adresse et en appliquant au contenu de l'adresse l'opération OU
bit à bit avec la valeur hexadécimale 80.</p>

<p>Le script suivant :</p>
CODE[]RED(: CFA) GREEN(2) GREY(-) ORANGE(;) GREY(( PFA -- CFA))
RED(: LFA) GREEN(2) GREY(-) ORANGE(;) GREY(( CFA -- LFA))
RED(: NFA) GREY(( CFA -- LFA))
FIXMEEEEEEEEEEEEE
GREEN(2) GREY(-) ORANGE(;)
END_CODE

<p>Il faut distinguer deux types de mots Forth:
LIST(Les mots primitifs qui sont présents dans le coeur du langage et qui appellent le code
exécutable soit assembleur soit en C. Par exempl le mot DUP appelera l'assembleur i386
CODE[]
mov (%esp)[,]%eax  // duplicate top of stack
push %eax
END_CODE,
Les mots non primitifs définis par les mots Forth :)</p>

<p>Le script suivant :</p>
CODE[]RED(:  SQR) GREY(DUP *) ORANGE(;)
RED(: .SQR) GREEN(SQR) GREY(.) ORANGE(;)
END_CODE

<p>va créer deux nouvelles entrées dans le dictionnaire comme indiqué
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

<p>Regardons comment l'interpréteur exécute le script:</p>
CODE[]GREEN(: FOO) * * ORANGE(;)
END_CODE
<p>Il execute le mot :, active l'interpréteur en mode compilation.
Celui-ci va stocker en fin de dictionnaire les CFA des mots.
: crée l'entête avec le mot suivant 0x83 FOO DOCOL ainsi que le pointeur du mot
précédent. L'interpréteur lit le mot * et place son CFA en fin de dictionnaire.
Idem pour le deucième *. Enfin il lit le mot ; qui doit être immédiatement exécuté,
ce mot finalise la définition du mot (smudge bit, met a jout LAST) puis remet
l'interpréteur en mode execution.</p>

<p>Les flèches représentent les adresses (LFA ou CFA) vers les mots
existants du dictionnaire. Vu que BAR a été inséré dans le
dictionnaire après FOO son LFA pointe vers FOO et le dictionnaire
mémorise son LFA pour faire ses recherches sur les mots existants (la
fameuse liste chainée).</p>

<p>Les littéraux 0x81, 0x83 (notation base 16) sont les tailles des
mots avec le marqueur de séparation des entrées du dictionnaire. Les
mots Forth DOCOL et EXIT sont des mots particuliers que l'on décrira
plus tard. HERE pointe sur l'emplacement après EXIT du mot BAR.</p>

<p>Le dictionnaire possède deux informations supplémentaires qui sont
eux-mêmes des mots Forth (donc aussi stockés dans le
dictionnaire) :</p>

LIST(le LFA du dernier mot inséré dans le dictionnaire. C'est le mot
Forth LAST (anciennement nommé LATEST) qui joue ce rôle;,

le premier emplacement libre du dictionnaire pour prochain mot est
donné par le mot Forth HERE. HERE est mis à jour automatiquement après
l'insertion d'une entrée ou d'un CFA. Il existe sur certain Forth un
mot Forth appelé DP pour Dictionary Pointer[,] faisant partie des
variables utilisateur[,] qui permet de changer l'emplacement indiqué
par HERE (comme une tête de lecture/écriture).)

<p>A chaque fois qu'un mot est inséré à la définition d'un mot[,] c'est
le mot HERE qui indique l'emplacement. Après l'ajout du mot, HERE est
automatiquement déplacé pour toujours pointer sur un emplacement
libre mais des mots comme ALLOC permettant de réserver de la mémoire
déplace simplement HERE.</p>

<p>Deux avantages de cette structure de donnée sont :</p>
LIST(la non segmentation de la mémoire : déplacer un bloc d'entrée en
mémoire est trivial (surtout si les adresses sont relatives et non
absolues; on pensera à la concaténation de dictionnaires entre eux).;,

La recherche s'arrêtant au premier mot trouvé, on peut donc écraser une ancienne
définition comme il suit :)

CODE[]GREEN(: FOO) * * ORANGE(;)
GREEN(: BAR) FOO . ORANGE(;)
GREEN(: FOO) + + ORANGE(;)
GREEN(: BAR) FOO . ORANGE(;)
END_CODE

<p>Interpréter BAR appellera deux additions.</p>

<p>L'inconvénient majeur de cette structure de donnée est que la
recherche se fait avec une complexité linéaire que l'on note
O(n). Pour palier à ce problèmes des mots Forth de même nature peuvent
être regroupés en vocabulaires. Le vocabulaire est l'ancêtre des
espaces de nommage des langages modernes (comme en C++ avec par
exemple std::cout). Un vocabulaire est un mot Forth gérant un index de
LAST mais pointant sur des mots choisis par le développeur. On a donc
une sorte d'arbre où une recherche partirait d'un feuille (d'un
vocabulaire spécifié, donc un mot équivalent à LAST) et se terminerait
à la racine de l'arbre.</p>

<p>Moore avec son colorForth est passé à une table de hachage et pour
sauver de la mémoire il compresse les noms des mots Forth avec un
codage de Huffman.</p>

<p>Rappelons qu'un des flags dans l'entête d'une entrée indique si le
mot est valide ou non (c'est le smudge bit). S'il est mis, alors il
sera ignoré lors d'une recherche. Le mot FORGET suivit d'un mot
existant (par exemple FORGET FOO) permet de tronquer toutes les
définitions du dictionnaire jusqu'à ce mot. FORGET change simplement
la valeur de LATEST. On prendra garde à ne pas supprimer tout le
dictionnaire en tentant par exemple de supprimer le premier mot du
dictionnaire.</p>

<p>Forth se prête bien à la récursivité : une récursivité terminale
n'est rien d'autre qu'un saut en mémoire. Malheureusement, la syntaxe
varie fortement d'un Forth à un autre. En effet, selon le Forth
utilisé, lorsqu'une entête est créée dans le dictionnaire LATEST ne
pointe pas encore dessus, d'autre Forth, le smudge bit est mis tant
que le mot ; n'est pas exécuté effaçant le bit. Le mot SMUDGE doit
être utilisé dans la définition pour commuter le flag en question.</p>

<p>Voici un exemple de récursivité :</p>
CODE[]GREEN(: FACTORIELLE)
 DUP RED(1) >
  BLUE(IF)
   DUP RED(1) - FACTORIELLE *
 BLUE(THEN) ORANGE(;)
END_CODE



<p>Les premiers Forth l'implémentent comme une liste chaînée où tous les
mots sont stockés les uns à la suite des autres (sans trous); certains
Forth séparent les entrées des définitions (index séparé) tout en
gardant le principe de liste chaînée entre les mots; d'autres
utilisent une table de hachage, etc.</p>


SUBSECTION(ICON_GEAR,Différentes classes de mots,class)


  Néanmoins Forth offre la possibilité d'utiliser des
constantes et des variables mais qui doivent être vues comme des noms
sur des emplacements mémoire de longue durée (équivalent aux globales
du C) à savoir que leur durée de vie est lié à celle du programme.</p>



<p>Je décris rapidement les différents catégories de mot sachant que
le lien EXTLINK(https://www.forth.com/starting-forth/,Starting Forth)
les expliquera mieux :</p>

LIST(Gestion des piles, gestion
numérique,arithmétique,structure de contrôle,action sur la
mémoire,gestion des entrées-sorties,conversion,mots de haut niveau)

<p>STRONG(Commentaires :) il existe deux types de commentaires en
Forth. Le premier type est le mot Forth immédiat ORANGE(&#40;) qui
ignore tout caractère jusqu'au premier caractère &#41;
rencontré. Par conséquent il est donc impossible d'imbriquer des
commentaires entre-eux. Et il ne faut pas oublier les espaces car
&#40; est un mot Forth comme un autre. Ce type de commentaire est
préféré pour indiquer les paramètres d'un mot Forth. Pour plus de
renseignements sur la norme de la notation des paramètres
EXTLINK(http://www.forth.org/forth_style.html,voir ce site).</p>
CODE[]: DIVISION ( n1 n2 -- n1/n2 ) / ;
END_CODE

<p>Indique que DIVISION va consommer deux nombres signés où n1 est
déposé dans la pile avant n2 (dans l'ordre de gauche à droite) et
retourner le résultat dans la pile. Pour preuve RED(1 0) DIVISION doit
retourner une exception tentative de division par zéro.</p>

<p>Le deuxième type de commentaire (ajouté tardivement) est le mot
ORANGE(&#92;) qui ignore la ligne entière. Il est utilisé pour de
vrais commentaires autre que le renseignements de paramétres.</p>

<p>STRONG(Gestion de la pile :) permet de commuter l'ordre des données
dans la pile. Par exemple DUP duplique le sommet, DROP le supprime,
SWAP permute le sommet de la pile avec l'avant dernier, le mot
. consomme et affiche le sommet de la pile, etc.</p>

<p>STRONG(Mémoire :) Le mot @ permet d'accéder au contenu d'une
adresse. Le mot ! permet de stocker une valeur dans une adresse. Une
  variable en Forth est une mémoire nommée. Exemple :</p>
CODE[]15 VARIABLE TOTO
TOTO @ .
14 TOTO !
: ? @ . ;
TOTO ?
END_CODE
<p>La première ligne créé une variable nommée TOTO avec la valeur
15. La deuxième ligne permet d'accéder au contenu de la variable puis
l'affiche. La troisième ligne change la valeur de TOTO avec la valeur
14. La quatrième ligne crée un mot couramment utilisé. La dernière
affichera la valeur 14.</p>

<p>STRONG(Base :) Forth permet d'afficher les nombres dans la base
désirée. Exemple amusant :</p>
CODE[]: HEX 16 BASE ! ;
a .
HEX
BASE ?
a .
10 BASE !
BASE
a .
END_CODE

<p>La première ligne redéfinit un mot courant du Forth permettant de
passer en base 16 (hexadécimal). Par défaut Forth est en base 10
(décimale) donc la deuxième ligne doit générée une erreur
(l'utilisateur voulait empiler le nombre a en base 16 (valant 10 en
base 10) mais comme nous sommes en base 10 Forth détecte que ce mot
lui est inconnu. Les lignes 3 à 5 permet de vérifier que nous sommes
en base 16, la ligne 5 ne doit plus générer d'erreur. Ligne 7 à 9,
l'utilisateur tente naïvement de repasser en base décimale mais cela
échoue car le nombre 10 est interprète en base hexadécimale valant 16
en base décimale. Donc il n'y a pas eu de changement de base</p>

<p>STRONG(Mots de structure :) les classiques structures de contrôle
connues des autres langages (comme le C) sont : le test conditionnel
if-then-else, la boucle do-loop, la boiucle for, etc. Comme Forth
utilise le système polonais inversé même le if-then-else du C devient
IF ELSE THEN. Cela peut perturber le débutant mais on peut renommer
THEN par FI ou ENDIF ce qui aidera les débutants.</p>
CODE[]GREEN(: ENDIF) ORANGE(&#91;COMPILE&#93; THEN ; IMMEDIATE)
END_CODE

<p>De plus IF ELSE THEN doivent obligatoirement être utilisés dans une
définition sinon le compilateur échouera. En mode interprétation if
faudra utiliser les mots [IF] [ELSE] [THEN] qui équivaut au #if #else
#endif du langage C. Le lien
EXTLINK(https://www.rfc1149.net/download/documents/ifi/forth.pdf,suivant)
explique en quoi Moore a encore réduit le nombre de mots de
structure. Par exemple le ELSE n'existe plus. Avant :</p>
CODE[]GREEN(: MOT) TEST BLUE(IF) ACTION1 BLUE(ELSE) ACTION2 BLUE(THEN) ACTION3 ;
END_CODE

<p>Devient :</p>
CODE[]GREEN(: SOUS-MOT) TEST BLUE(IF) ACTION1 EXIT BLUE(THEN) ACTION2 ;
GREEN(: MOT) SOUS-MOT ACTION3 ;
END_CODE

<p>STRONG(Arithmétique :) addition, conversion entier signé et non
signé, opération booléenne. Point important : contrairement à des
langage tel que C où le faux vaut 0 et le vrai vaut toutes valeurs
différentes de 0 (mais où 1 est en général retourné), en forth le faux
vaut -1. Le EXTLINK(http://wiki.c2.com/?BooleanRepresentation,lien) en
parle plus longuement. Sinon, voici un exemple :</p> CODE[]RED(1 0) &#60;&#62; . END_CODE

<p>La pile de données des Forth permet uniquement de manipuler des
entiers (signés et non signés) ou des adresses de la machine virtuelle
(qui sont finalement vues comme un entier), les valeurs en floatants
(float et double du langage C) ne sont pas gérées nativement, une
bibliothèque devant alors être chargée pour les gérer.</p>

<p>En fait, par défaut, Forth n'utilise pas une seule pile mais deux
piles. La deuxième, appelée pile de retour, sert à l'interpréteur
Forth pour mémoriser l'ordre d'exécution des mots appelant d'autres
mots. Cette pile est automatiquement manipulée par lui mais laisse,
quand même, à l'utilisateur la possibilité de déplacer et stocker
temporairement des éléments de la pile de données (ce qui n'est pas
toujours sans risque). Nous y reviendrons plus tard.</p>

<p>Des Forth modernes peuvent ajouter nativement des piles de données
supplémentaires comme une pile d'entiers (appelés pile alternative)
et/ou une pile des floatants. En général, la pile de donnée
supplémentaire permet d'éviter l'utilisation de la pile de retour
comme stockage temporaire et rendant l'interpréteur Forth plus fiable
aux erreurs de programmation.</p>

<p>Un système de sécurité permet de vérifier que les piles ne
débordent pas (par le haut ou par le bas) et prévient l'utilisateur en
arrêtant l'exécution du mot en cours. Charles H. Moore quand à lui
préfère utiliser un tampon circulaire par rapport à une pile. Il n'y a
plus de risque possible de débordement de mémoire mais il n'a pas
ajouté de système pour prévenir l'utilisateur car selon lui le
développeur doit maîtriser le nombre d'opérandes qu'il manipule. De
plus, ce système permet de décider à tout instant la pile comme étant
vide.</p>

<p>On constatera après l'exécution du dernier exemple, que la
profondeur de pile des donnée n'a pas été changée. Ceci n'est pas une
contrainte mais le standard Forth impose de laisser intact la
profondeur des piles pour au moins deux cas :</p> LIST(lors des
définitions d'un nouveau mot Forth, et la fin d'un fichier quand il
est inclus par un autre fichier.)




SUBSECTION(ICON_GEAR,Fonctionnement de interpréteur externe,interpret)

<p>Un interpréteur Forth fonctionne très simplement : tant que le flux
d'entrée n'est pas fini, les mots sont lus les uns après les
autres. L'interpréteur possède deux modes : soit il est mode
exécution, soit il est en mode compilation.</p>

<p>En mode EXECUTION :</p> LIST(Si le mot lu est connu du
dictionnaire alors il est alors exécuté;, sinon l'analyseur (parser)
vérifie que le mot lu n'est pas un nombre (dans la base actuelle) : si
c'est le cas alors un nombre est alors déposé dans la pile de
données;, sinon le mot n'est pas connu et n'est pas un nombre : une
erreur prévient l'utilisateur et arrête le processus.)

<p>En mode COMPILATION les mots non-immédiats qui sont lus, s'ils sont
connus du dictionnaire, leurs CFA sont ajoutés les uns à la suite des
autres au dans la définition courante du dictionnaire. Si un mot n'est
pas connu une erreur prévient l'utilisateur et arrête le
processus.</p>

<p>Du peu de mots Forth que l'on a vus, c'est le mot : qui force le
mode COMPILATION de l'interpréteur alors que le mot ; le fait passer
en mode EXECUTION. On peut déjà se poser la question comment l'inter
peut passer en mode exécution avec le mot ; s'il ne fait que compiler
tous les mots qu'il voit; logiquement, il ne devrait jamais s'arrêter
de compiler. La réponse vient du champ STRONG(FLAGS) où l'un des bits
permet de rendre un mot Forth immédiat. Par immédiat on sous-entend
que le mot sera immédiatement exécuté même si l'interpréteur est en
mode compilation. Attention: un mot immédiat ne commute pas le mode de
l'interpréteur : il est simplement interprété !</p>

<p>On raffine donc le définition et l'on profite pour ajouter un cas
particulier :</p>
<p>En mode COMPILATION :</p> LIST(les mots non immédiats lus[,] s'ils
sont connus du dictionnaire[,] sont ajoutés les uns à la suite des
autres au dictionnaire dans la définition courante;, Si le mot est
immédiat et connu du dictionnaire il est alors interprété;, si le mot
n'est pas connu il est testé pour savoir si c'est un nombre : si oui,
il est ajouté à la définition mais on intercalera avant le mot
LITERAL pour ne pas l'interpréter comme un mot Forth; sinon le mot
n'est pas connu une erreur prévient l'utilisateur et arrête le
processus.)

<p>Si l'inter lit tous les mots les uns après les autres, avec le code</p>
CODE[]GREEN(: FOO) * * ORANGE(;)
END_CODE
<p>FOO n'étant pas défini, l'interpréteur devrait déclencher une
erreur. En fait non, car comme on l'a dit l'interpréteur sait lire le
mot suivant et le mot : quand il est exécuté va lire le mot suivant, à
savoir FOO afin de créer une nouvelle entrée dans le dictionnaire. Par
conséquent le mot suivant que l'interpréteur va lire sera *.</p>

<p>L'interpréteur Forth à deux modes (états) soit il est en mode
interprétation soit en mode compilation. Des mots comme : et ;
permettent respectivement de passer en mode compilation puis
interprétation.</p>

LIST(En mode interprétation[,] la définition des mots lus sont
recherchés dans le dictionnaire puis exécutés., En mode compilation[,]
une entête dans le dictionnaire est créée afin de permettre de
retrouver le nouveau mot[,] puis chaque mot lus[,] s'ils ne sont pas
considérés comme immédiats[,] sont recherchés dans le dictionnaire et
leur référence stockée dans la définition du mot en cours de
définition.)

<p>Le mot ORANGE(IMMEDIAT) rend immédiat le dernier mot du
dictionnaire. Pour rappel un mot immédiat n'est pas compilable mais
directement interprété quand l'interpréteur est en mode
compilation. Voici un exemple plus évolué de mot immédiat : on se
propose d'ajouter un système de commentaires à Forth. Pour cela on
suppose que le mot TYPE existe déjà (ce qui en général le cas) ce mot
permet d'ignorer les caractères du tampon d'entrée jusqu'au caractère
indiqué comme paramère.</p> CODE[]GREEN(: &#40;) '&#41;' TYPE ORANGE(;
IMMEDIATE) END_CODE

<p>Dés que le 'analyseur exécutera le mot ( il ignorera tous les mots
jusqu'à trouver le mot ) et comme il est immédiat il va fonctionner
dans une définition (quand l'interpréteur sera en mode
compilation). Notons qu'il existe un autre type de commentaire Forth
le mot \ ignore entièrement la ligne courante.</p>

<p>Si l'on désire rendre immédiat un certains nombre de mots de façon
temporaire dans une définition il faut les délimiter par les mots &#91;
et #&#93;. Ces mots modifient l'état de l'interpréteur: interprétation
ou compilation mais ne changent pas le smudge bit des mots.</p>

<p>Si l'on désire compiler un mot immédiat il faut placer avant le mot
&#91;COMPILE#&#93; (qui lui aussi est immédiat). Le mot COMPILE joue
le même rôle que &#91;COMPILE#&#93; mais est non immédiat. Il permet
de ... TODO A FINIR ... Notons que ces mots sont désuets à cause du
risque de confusion pour les développeurs pour se souvenir de qui est
immédiat, par conséquent on utilisera plutôt le mot POSTPONE qui
appelle l'un ou l'autre automatiquement selon le caractère immédiat du
mot qui lui succéde.</p>

<p>On se propose de créer deux nouveaux Forth : DO et LOOP qui
permettent de faire une boucle. On supposera l'existence d'un mot
Forth (non officiel) 0BRANCH qui fait un saut relatif à la
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

Détaillons le code Forth: DO: les 2 parametres : fin et début
d'itération. Sont commutes puis stockés dans la pile de retour.

LOOP: les 2 param sont remis dans la pile de données et littérateur
est incrémente. Le 2DUP permet de remettre les param dans la pile de
retour et de les comparer entre eux. S'ils sont égaux 0BRANCH laisse pas


Voici en mémoire comment est le mot
RED(10 0)
SWAP &#62;R &#62;R
RED(1) .
R&#62; 1+ R&#62; 2DUP &#62;R &#62;R &#60; 0= 0BRANCH RED(0xe8) R&#62; R&#62; 2DROP
EXIT
  Nous voyons les mots en provenance du mot DO:
  SWAP &#62;R &#62;R

  Nous voyons les mots en provenance du mot LOOP:
  R&#62; 1+ R&#62; 2DUP &#62;R &#62;R &#60; 0= 0BRANCH RED(0xe8) R&#62; R&#62; 2DROP
Où 0xe8 et la différence d'adresse entre le HERE du DO et le HERE du
    LOOP permettant d'itérer le calcul.

    et 1 . le code du calcul.



SUBSECTION(ICON_GEAR,Fonctionnement de interpréteur interne,interpreteur)

                                    dnl parler du code assembleur dans le Forth

                                    Expliquer le mot COMPILE

SUBSECTION(ICON_GEAR,Variables et constante,var)

dnl a placer apres le dico

<p>Nous avons vu que Forth permet de stocker des mots Forth mais il
peut également servir à stocker de la mémoire. En effet on a dit dans
une section précédente que la variable DP permet de changer où HERE
indique le premier emplacement libre. Par conséquent on peut se
réserver des emplacements mémoires et l'idéal est de donner un nom aux
emplacemets.</p>

<p>Le mot ALLOC permet de déplacer DP du nombre d'octet voulu (un
ALLOC pour 1 cellule est le mot ,)</p>

dnl https://fr.wikiversity.org/wiki/Forth/Conserver_des_donn%C3%A9es

dnl assembleur

SUBSECTION(ICON_GEAR,Un langage evolutif,evol)

BUILD DOES, OO

END_BODY(simtadyn,Le projet SimTaDyn,,)
