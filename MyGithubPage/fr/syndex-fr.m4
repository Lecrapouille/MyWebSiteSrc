TITLE(Logiciel de g�n�ration de code distribu� SynDEx)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(SynDEx software)
DESCRIPTION(A introduction to SynDEX software developped by INRIA)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_TUTO)

BEGIN_BODY
SECTION(D�couverte du logiciel SynDEx)
SUBSECTION(ICON_READ,Pr�sentation,pres)

<p>Nous avons vu MYLINK(scicos,dans ce tutoriel), que le logiciel
SCILAB peut facilement int�grer des biblioth�ques �crites en
langage C pour interagir avec des syst�mes embarqu�s via des capteurs
ou des actionneurs (cam�ra, joystick, port s�rie). Nous avons
�galement vu qu'il n'est pas toujours ais� de l'ins�rer dans une
boucle d'asservissement pour contr�ler des syst�mes temps r�el (comme
pour l'h�licopt�re quatre rotors). N�anmoins, il est toujours possible
de demander � Scicos de g�n�rer automatiquement du code C � partir
d'un sch�ma block. Ce code peut �tre compil�, par exemple, pour un
Linux temps r�el (un Linux dont le noyau a �t� patch� pour utiliser le
temps r�el dur).</p>

<p>On peut vouloir �tre encore plus ambitieux et, toujours � partir du
m�me sch�ma block, vouloir g�n�rer automatiquement du code pour
n'importe quelle architecture multiprocesseur et r�partir au mieux les
op�rations d'un programme qui peuvent �tre ex�cut�es en
parall�le. Scicos ne le fait pas automatiquement mais, par contre, il
existe un logiciel nomm� SYNDEX qui permet de g�n�rer du code
distribu�.</p>

<p>Cette page fait une rapide pr�sentation du logiciel SynDEx. Ce
logiciel fut utilis�e par exemple pour un projet personnel h�licopt�re
quatre rotors comprenant deux micro-controlleurs. Un noyau d'ex�cutif
(terme SynDEx que l'on peut d�finir en premi�re approximation par
biblioth�que) �crite en C permet au logiciel SynDEx de g�n�rer du code
pour les microprocesseurs dsPIC.</p>

<p>NOTE: cette biblioth�que est en cours de d�veloppement et n'est pas
encore disponible sur ce site.</p>

SUBSECTION(ICON_READ,Qu'est ce que la m�thodologie AAA ?,AAA)

<p>Le document
ICON_PDF[]LINK(http://www.syndex.org/publications/pubs/RR98/RR98.pdf,Mod�le
d'ex�cutif distribu� temps r�el pour SynDEx) d�crit la m�thodologie
AAA que nous allons r�sumer ici.</p>

<p>La m�thodologie d'STRONG(Ad�quation Algorithme Architecture) (AAA)
est bas�e sur des mod�les de graphes pour sp�cifier d'une part
l'algorithme et d'autre part l'architecture mat�rielle. La description
de l'algorithme permet de mettre en �vidence le parall�lisme potentiel
tandis que celle de l'architecture met en �vidence le parall�lisme
disponible. Cette m�thode consiste en fait � d�crire l'implantation en
terme de transformations de graphes. En effet, le graphe mod�lisant
l'algorithme est transform� jusqu'� ce qu'il corresponde au graphe
mat�riel mod�lisant l'architecture. L'implantation de l'algorithme sur
l'architecture consiste donc � r�duire le parall�lisme potentiel au
parall�lisme disponible tout en cherchant � respecter les contraintes
temps r�el. Toutes ces transformations sont effectu�es avant
l'ex�cution en temps r�el de l'application. Elles correspondent � une
distribution et � un ordonnancement des diff�rents calculs sur les
processeurs et des communications sur les liaisons physiques
inter-processeurs. C'est � partir de ces allocations spatiales et
temporelles qu'un ex�cutif va pouvoir �tre g�n�r� et permettre
l'ex�cution de l'algorithme sur l'architecture construite avec des
processeurs. Cependant, pour que cette implantation soit vraiment
efficace, il est n�cessaire de r�aliser une ad�quation entre
l'algorithme et l'architecture. Celle-ci consiste � choisir parmi
toutes les transformations propos�es celle qui optimise les
performances temps r�el.</p>

CAPTION_PICTURE(syndex/AAA.jpg,Diagramme r�sumant la m�thodologie AAA.)

SUBSECTION(ICON_READ,Qu'est ce que SynDEx ?,what)

<p>SYNDEX est un logiciel de CAO mettant en oeuvre la m�thodologie AAA
pour le prototypage rapide et l'optimisation de la mise en oeuvre
d'applications distribu�es temps r�el embarqu�es. A partir d'un
algorithme et d'une architecture tous deux donn�s sous forme de
graphe, SynDEx g�n�re une impl�mentation distribu�e de l'algorithme en
langage LINK(https://www.gnu.org/software/m4/manual/m4.html,GNU M4)
appel� ex�cutif. On peut �gallement obtenir un graphe d'algorithme en
exportant depuis Scicos un sch�ma pour SynDEx.</p>

SECTION(Mod�les d'algorithmes et d'architectures)
SUBSECTION(ICON_READ,Algorithmes,algo)

<p>Un algorithme est mod�lis� par un graphe flot de donn�es
�ventuellement conditionn� (il s'agit d'un hypergraphe orient�), qui
se compose de sommets et d'arcs. Un sommet est une op�ration et un arc
un flot de donn�es, c'est-�-dire un transfert de donn�es entre deux
op�rations.</p>

CAPTION_PICTURE(syndex/algo.jpg,Exemple de graphe d'algorithme sous SynDEx.)

<p>Une op�ration peut-�tre soit un calcul (comme une addition), soit
une m�moire d'�tat (retard), soit un conditionnement ou encore une
entr�e-sortie. Les sommets qui ne poss�dent pas de pr�d�cesseur sont
des interfaces d'entr�e (capteurs recevant les stimuli de
l'environnement) et ceux qui ne poss�dent pas de successeur
repr�sentent des interfaces de sortie (actionneurs produisant les
actions vers l'environnement). Dans le cas d'une op�ration de calcul,
la consommation des entr�es pr�c�de la production des sorties.</p>

SUBSECTION(ICON_READ,Architecture,archi)

<p>Une architecture est mod�lis�e par un graphe dont chaque sommet
repr�sente un processeur ou un m�dia de communication, et chaque arc
repr�sente une connexion entre un processeur et un m�dia de
communications (SAM ou RAM). On ne peut connecter directement deux
processeurs ou deux m�dias. Chaque sommet est une machine s�quentielle
qui s�quence soit des op�rations de calcul pour les processeurs, soit
des op�rations de communications pour les m�dias de communications.</p>

CAPTION_PICTURE(syndex/archi.jpg,Exemple de graphe d'architecture sous SynDEx.)

<p>Un processeur et les m�dias de communication sont des repr�sentations
abstraites de ce que peut �tre un PC, un Macintosh, un processus
(Window, Unix, Mac) ou un microcontr�leur PIC, dsPIC ou bien des
m�dias de communications comme le TCP/IP, bus CAN, USB, FireWire, port
s�rie.</p>

SUBSECTION(ICON_READ,Heuristique de distribution et d'ordonnancement,heuri)

<p>Une fois les sp�cifications de l'algorithme et de l'architecture
effectu�es, il est n�cessaire de r�aliser l'ad�quation. Celle-ci est
charg�e de respecter d'une part l'ordre des �v�nements pr�cis�s lors
de la sp�cification de l'algorithme et d'autre part les contraintes
temps r�el. Pour cela, parmi toutes les transformations de graphes
possibles, est choisie celle qui optimise les performances temps r�el
de l'implantation en terme de latence. La latence ou temps de r�ponse
R est donn�e par la longueur du chemin critique du graphe logiciel,
dont les sommets sont valu�s par les dur�es d'ex�cution des op�rations
correspondantes y compris celles des communications inter-processeurs.</p>

<p>Afin de r�soudre ce probl�me d'optimisation du temps de r�ponse, une
heuristique a �t� d�velopp�e. Il s'agit d'un algorithme glouton dont
chaque �tape alloue une op�ration � un processeur, route les
�ventuelles communications inter-processeurs c'est-�-dire cr�e des
op�rations de communication et alloue chacune d'elles � une liaison
physique. L'ordonnancement des op�rations de calculs ou de
communication est directement d�duit de l'ordre dans lequel elles sont
allou�es.</p>

<p>Cette m�thode consiste donc � faire progresser le long du graphe
une coupe s�parant les op�rations d�j� plac�es sur des processeurs de
celles qui ne le sont pas encore. La progression se fait en respectant
les pr�c�dences du graphe logiciel. De toutes les op�rations �
distribuer sur la coupe et de tous les processeurs, on choisit la
paire qui optimise une fonction locale de co�t prenant en compte :</p>

<p>Les diff�rences entre dates locales d'ex�cution au plus t�t et au
plus tard (schedule flexibility) l'allongement du temps global
d'ex�cution : le temps de r�ponse (latence) le rythme d'entr�e
(cadence) la capacit� m�moire.</p>

SECTION(En r�sum�)
SUBSECTION(ICON_READ,Entr�es de SynDEx,input)

<p>Pour r�sum�, SynDEx prend en entr�e :</p>
LIST(
[Un graphe d'algorithme (obtenu, par exemple, � partir d'un sch�ma
bloc Scicos).],

[Un graphe d'architecture constitu� de processeurs (rectangles bleus
et blancs) et de m�dias de communication (ronds bleus et arcs)],

[Les dur�es des t�ches et des communications (et dans la prochaine
version leur p�riode).])

TABLE(3,
CAPTION_PICTURE(syndex/algo.jpg,Graphe d'algorithme),
CAPTION_PICTURE(syndex/archi.jpg,Draphe d'architecture),
CAPTION_PICTURE(syndex/duration.jpg,Dur�e des op�rations))

SUBSECTION(ICON_READ,Sorties de SynDEx,output)

<p>SynDEx g�n�re automatiquement :</p>
LIST(
[Un agenda des t�ches � ex�cuter dans le temps.],

[Des ex�cutifs � savoir les programmes pour chaque processeur �crit en pseudo code.])

<p>L'agenda des t�ches � ex�cuter est constitu� de colonnes
symbolisant les processeurs de l'architecture ainsi que les m�dias de
communication :</p>

LIST(
[Le contenu des colonnes sont les t�ches ou les envois/r�ceptions �
ex�cuter dans le temps (de haut en bas) pour chaque processeur ou
chaque m�dia.],

[Les �paisseurs des t�ches donnent la dur�e d'ex�cution.],

[La couleur orange est l'op�ration (ou communication) point�e par le
curseur de la souris (on ne la voit pas sur la capture d'�cran).],

[La couleur verte indique les op�rations qui sont ex�cut�es avant
l'op�ration orange et la couleur rouge indique les op�rations qui
s'ex�cutent apr�s l'op�ration orange.])

TABLE(2,
CAPTION_PICTURE(syndex/schedul.jpg,Agenda des t�ches),
CAPTION_PICTURE(syndex/executif.jpg,Ex�cutif))

<p>Un ex�cutif est la repr�sentation algorithmique de l'agenda. A
chaque colonne, un ex�cutif lui correspond. Il y a donc un ex�cutif
g�n�r� par processeur. Le pseudo code est en fait la syntaxe du
langage de macroprocessing GNU M4 ext link. Comme on peut le voir sur
l'image ci dessus, chaque ex�cutif g�n�r� contient une thread main qui
ex�cute les calculs (loi de commande, capteurs, actionneurs) et au
moins une thread de communication qui appellent les fonctions de haut
niveau envoyer et recevoir une donn�e.</p>

<p>Dans la section ici, on explique plus en d�tail le fonctionnement
de l'ex�cutif.</p>

SUBSECTION(ICON_READ,Travail de l'utilisateur,userwork)

<p>STRONG(Entr�es de SynDEx :) L'utilisateur doit dessiner dans l'IHM
les deux types de graphes et d�finir les p�riodes de chaque t�ches et
de communication. La cr�ation du graphe d'algorithme peut �tre obtenu
� partir d'un sch�ma bloc Scicos via une passerelle � installer pour
Scicos
LINK(http://www.syndex.org/scicosSyndexGateway/index.htm,S2S).</p>

<p>STRONG(Sorties de SynDEx :) Les ex�cutifs g�n�r�s ne peuvent pas
�tre exploit�s tels quels. Il faut d'abord les traduire dans un
langage adapt� (C, assembleur, ...) puis les compiler et les flasher
dans le micro contr�leur. Cette �tape n'est malheureusement pas
automatis�e dans SynDEx � cause du trop grand nombre d'architectures
disponibles sur le march� (il lui faudrait une base de donn�es des
registres disponibles pour chaque architecture). C'est le r�le du
cross-compilateur de les conna�tre. Il faut pouvoir associer � chaque
macro M4 une fonction dans le langage d�sir�. L'utilisateur doit
�crire des fichiers d'association entre macro M4 et langage
d�sir�. L'ensemble de ces fichiers est appel� ITALIC(noyau
d'ex�cutif).</p>

SECTION(Comprendre le macro code des ex�cutifs)
SUBSECTION(ICON_READ,Exemple de code g�n�r�,generated)

<p>D'apparence complexe, ce code est en fait tr�s simple � comprendre
puisque tous les ex�cutifs g�n�r�s auront tous le m�me squelette.</p>

CODE[]processor_(dsPIC30F,dsPICmaitre,H4H_syndex,SynDEx-6.8.5 (C) INRIA)

semaphores_(
  Semaphore_Thread_RxTx,
  EnvoiMot_a_dsPICmaitre_RxTx_empty,
  EnvoiMot_a_dsPICmaitre_RxTx_full,
  prep_message_out_dsPICmaitre_RxTx_empty,
  prep_message_out_dsPICmaitre_RxTx_full)

alloc_(int,EnvoiMot_a,100)
alloc_(int,prep_message_out,100)

thread_(USART,RxTx,dsPICmaitre,MacBook)
  loadDnto_(,MacBook)
  Pre0_(prep_message_out_dsPICmaitre_RxTx_empty,)
  loop_
    Suc1_(EnvoiMot_a_dsPICmaitre_RxTx_empty,)
    recv_(EnvoiMot_a,PCnonEmbarque,MacBook,dsPICmaitre)
    Pre0_(EnvoiMot_a_dsPICmaitre_RxTx_full,)
    Suc1_(prep_message_out_dsPICmaitre_RxTx_full,)
    send_(prep_message_out,dsPIC30F,dsPICmaitre,MacBook)
    Pre0_(prep_message_out_dsPICmaitre_RxTx_empty,)
  endloop_
  saveFrom_(,MacBook)
endthread_

main_
  proc_init_
  spawn_thread_(RxTx)
  MonGrosCalcul(EnvoiMot_a,prep_message_out)
  Pre1_(EnvoiMot_a_dsPICmaitre_RxTx_empty,RxTx)
  loop_
    Suc0_(EnvoiMot_a_dsPICmaitre_RxTx_full,RxTx)
    Suc0_(prep_message_out_dsPICmaitre_RxTx_empty,RxTx)
    MonGrosCalcul(EnvoiMot_a,prep_message_out)
    Pre1_(prep_message_out_dsPICmaitre_RxTx_full,RxTx)
    Pre1_(EnvoiMot_a_dsPICmaitre_RxTx_empty,RxTx)
  endloop_
  wait_endthread_(Semaphore_Thread_RxTx)
endmain_

endprocessor_
END_CODE

<p>Comme dit pr�c�demment, ce genre de pseudo
code devra �tre traduit dans un langage �volu� avant de pouvoir �tre
compil�. Ici, on utilisera comme langage cible le langage C pour plus
de facilit�. Le programme obtenu apr�s compilation pourra �tre ex�cut�
sur un OS comme Windows, Linux ou Mac ou sur un microcontr�leur comme
un (ds)PIC.</p>

SUBSECTION(ICON_READ,Analyse du code macro par macro,analyse)

<p>Voici la liste exhaustive des macros � comprendre ainsi que leur
r�le.</p>

<p>La macro STRONG(processor_) d�finit les informations du processeur
concern�. Par exemple :</p>

CODE[]processor_(dsPIC30F,dsPICmaitre,H4H_syndex,...)
END_CODE

<p>Indique que, dans le cadre de l'application SynDEx nomm�e
H4H_syndex.sdx, ce code est destin� au processeur nomm� dsPICmaitre
qui est du type dsPIC30Fxxxx.</p>

La macro semaphores_ d�finie tous les s�maphores binaires (empty ou full) n�cessaires � la bonne synchronisation des threads de calcul et de communication de notre programme. A l'initialisation du processeur ces s�maphores sont TOUTES initialis�es � 0 (empty). Pour l'instant, pas besoin d'en savoir plus sur leur r�le.


semaphores_(
  ...
  EnvoiMot_a_dsPICmaitre_RxTx_empty,
  EnvoiMot_a_dsPICmaitre_RxTx_full)

La macro alloc_ r�serve un tableau statique de N �l�ments d'un type donn�. La taille du tableau ne peut �voluer dynamiquement.


alloc_(int,EnvoiMot_o,100)

Par exemple ici on d�finit un tableau nomm� EnvoiMot_o de cent �l�ments de type entier (en g�n�ral cod� sur 32 bits pour le langage C mais tout d�pend du choix du langage cible choisi ainsi que celui de l'architecture du processeur cible). G�n�ralement dans l'IHM de SynDEx on met les identifiants _o et _i aux noms des ports pour indiquer s'ils sont en entr�es ou sorties.

La macro main_ d�signe la thread de calcul. Les macros thread_ d�signent des threads de communication. Par exemple


thread_(USART,RxTx,dsPICmaitre,MacBook)

d�signe une thread de communication qui connecte notre processeur dsPICmaitre � un autre processeur nomm� MacBook (mais dont on ne conna�t pas l'architecture) via les pins RxTx et utilise le protocole USART (ici norme RS232).

La macro spawn_thread_ d�signe une fonction cr�ant une thread de communication (spawn = g�n�rer). Par exemple


spawn_thread_(RxTx)

correspond � la fonction UNIX thread_create. Ici RxTx r�f�re au protocole USART.

La compr�hension des macros loop_ et endloop_ ne pose � priori pas de probl�me : elles d�signent la boucle du programme � ex�cuter. On peut choisir diff�rents types de boucle : finie ou infinie, et peuvent avoir diff�rents aspects syntaxiques apr�s le macroprocessing (while ou for en langage C). Tout d�pend comment l'utilisateur � d�cider de macro-processer ce pseudo code. Le code s'ex�cutant avant loop_ s'appelle la phase d'initialisation et a pour identifiant la macro INIT. Le code apr�s endloop_ est appel� phase de terminaison et a pour identifiant la macro END. Le code dans la boucle a pour identifiant la macro LOOP. Nous avons donc trois types de phases. Pour conna�tre le type phase en cours de macroprocessing, une macro a �t� d�finie et porte le nom de MGC.

Les macros du genre MonGrosCalcul sont des fonctions d�finies par l'utilisateur. Elle prennent en param�tre des tableaux allou�s par les macros alloc_, les lisent et les remplissent (ports d'entr�e, ports de sortie).


MonGrosCalcul(EnvoiMot_a,prep_message_out)

Comme nous avons trois types diff�rents de phases (INIT, LOOP, END), la macro MonGrosCalcul peut �tre pr�sente au maximum trois fois (et au minimum une fois) dans la thread de calcul (main_) : une fois par type de phase. Une option dans l'IHM de SynDEx permet de d�sactiver le dupliqu�t dans les phases INIT et END. Dans notre exemple, seule la phase d'initialisation est d�sir�e.

Les macros loadDnto_ et saveFrom_, sauf erreur de ma part, servent de bootloader au processeur. Dans mon cas, n'utilisant pas de bootloader pour mes microcontr�leurs, je n'ai pas plus approfondi l'utilit� des ces fonctions.

Les macros send_ et receive_ (ex�cut�s uniquement dans les threads de communication) servent � �changer des donn�es avec les autres processeurs. Par exemple :


send_(prep_message_out,dsPIC30F,dsPICmaitre,MacBook)

envoie le tout le contenu du tableau prep_message_out de notre
processeur dsPICmaitre (toujours du type dsPIC) � l'autre processeur
MacBook.

SUBSECTION(ICON_BUILD, TODO)

END_BODY(simtadyn,Le projet SimTaDyn,,)
