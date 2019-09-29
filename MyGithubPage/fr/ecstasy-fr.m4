TITLE(Jeu 3D Off Road)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(3D shoot game, Delphi, OpenGL, EPITA)
DESCRIPTION(A simple 3D car driving in a city with its traffic jam
made in legacy OpenGL and Delphi for Windows)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

BEGIN_BODY
FORKME(Ecstasy)
SECTION(Le projet Ecstasy)
SUBSECTION(ICON_READ,Pr�sentation,intro)

<p>Ecstasy est un jeu ayant pour but de piloter une voiture dans une
   ville de type am�ricaine � travers son trafic routier. La dynamique
   voiture du joueur est mod�lis�e. Ecstasy est un projet d'�tudiant
   fait � l'�cole EPITA en 2002-2003. Il a �t� r�alis� en OpenGL et
   Borland Delphi 5 et DirectSound et fonctionne uniquement pour
   Windows 95/98/2000/XP.  En 2017, j'ai apport� quelques
   modifications pour le rendre un peu plus beau et jouable mais je
   n'ai pas le temps de totalement le finir. N�anmoins, il semble
   fonctionner et compiler sur des versions plus r�centes de Windows
   et de Delphi (que je ne poss�de pas, d�sol�).</p>

<p>Le sc�nario est tr�s simple : vous conduisez une voiture dans une
   ville. Ce jeu n'a �videmment pas la pr�tention d'�tre aussi
   amusant qu'un jeu commercial comme Midtown Madness ou GTA. Pour
   jouer, vous devez conna�tre les touches suivantes :</p>

LIST(STRONG(HAUT/BAS) : acc�l�re ou freine la voiture.,
     STRONG(GAUCHE/DROITE/souris) : tourne le volant.,
     STRONG([[4, 6, 2, 8]]) : change la position ou l'angle de la cam�ra.,
     STRONG(F1) : change de mode de cam�ra (vue int�rieure[,]ext�rieure).,
     STRONG(TABULATION) : change le levier de vitesse: conduite ou recule.)</p>

SUBSECTION(ICON_EYES,Aper�us du jeu,view)

TABLE(3,PICTURE(ecstasy/saut.jpg),
PICTURE(ecstasy/pont.jpg),
PICTURE(ecstasy/menu.jpg))
CENTER(Cliquer sur les images pour les agrandir.)


SUBSECTION(ICON_DOWNLOAD,T�l�chargement,download)

<p>Ce projet n'est plus d�velopp� (sauf une fois en 2017) mais le code
source est disponible sur MYGITHUB(Ecstasy) en open source. Il vous
faudra un Delphi Borland (de pr�f�rence version 5) pour compiler les
sources. Ce projet n'a pas �t� con�u pour fonctionner pour Linux, Mac
OS X car Window XP 32-bits �tait impos� par nos
professeurs.</p>

TABLE(3,LINK(ecstasy/ecstasy1_setup.rar,Setup Ecstasy version 2002 Windows XP),
Version l�g�re version 2002,
LINK(ecstasy/ecstasy1_sources.tar.bz2,Les sources version 2002),
ICON_TGZ,ICON_TGZ,ICON_TGZ,
9 Mo --- format RAR,
3.4 Mo --- format RAR,
1.0 Mo --- format TBZ2,
Binaire Ecstasy Windows XP 32-bits version 2017,
LINK(ecstasy/ecstasy2_sources.tar.bz2,Les sources version 2019),
LINK(ecstasy/ecstasy.pdf,Le rapport),
ICON_TGZ,ICON_TGZ,ICON_PDF,
6 Mo --- format RAR,
1.0 Mo --- format TBZ2,
500 Ko --- format PDF)

<p>Remarques:</p>
LIST(
[Programmeurs novices � l'�poque, nous n'avons omis de mettre un
  cadenceur pour la boucle d'it�ration du jeu (en g�n�ral 30 ou 60
  FPS, � savoir images par secondes). Donc, selon la puissance de
  votre PC, le jeu peut �tre extr�mement rapide, le rendant
  injouable.],

[Dans la version de 2017, les immeubles ainsi que le terrain suivent
  mieux l'altitude de la route, les trottoirs ont �t� ajout�s (la
  voiture du joueur ne passe plus � travers). Le roulis a �t� rajout� �
  la voiture du joueur ainsi que des correctifs de programmation dans
  la dynamique.],

[La version de 2002 contient un setup qui permet d'installer et de
  supprimer correctement le jeu pour Windows XP (il y aura aucun
  risque de plantage pour votre Windows car l'installation consiste
  simplement � copier l'ex�cutable � l'endroit d�sir� par
  l'utilisateur et rien de plus). Dans la version de 2017, il n'y aura
  pas de setup (vu que j'ai perdu cet outil).])

SUBSECTION(ICON_GEAR,Au coeur d'Ecstasy,heart)

<p>Les mod�les 3D des voitures sont l'oeuvre de fans du jeu
  EXTLINK(https://fr.wikipedia.org/wiki/Midtown_Madness_2,Midtown
  Madness II). Elles proviennent de nombreux sites web consacr�s et
  �taient t�l�chargeables gratuitement. J'ai depuis perdu la liste des
  sites ainsi que le nom des auteurs (pour cela si un auteur reconnait
  son oeuvre et ne souhaite pas la voir dans ce jeu, qu'il me fasse
  signe et je les retirerai aussit�t du programme). Les voitures ont
  �t� converties au format 3D Studio Max, simplifi�es et enfin
  export�es au format ASE.</p>

<p>Le paragraphe suivant n'est pas �crit dans le README de mon repo
  GitHub.</p>

<p>Si un joueur veut d�finir lui-m�me sa propre voiture dans 3D
  Studio Max. Il peut facilement l'importer dans Ecstasy de la fa�on
  suivante :</p>
LIST(
[Cr�er un nouveau dossier avec le nom de la voiture dans le dossier
 STRONG(data\Voitures).],

[Dessiner une carcasse de voiture avec 3D Studio Max et l'exporter au
  format ASE (ascii) dans le nouveau dossier sous le nom de
  STRONG(carcasse.ase). La voiture doit avoir une longueur de 12
  unit�s et 5 unit�s de largeur et doit avoir sa t�te orient�e vers la
  droite dans la fen�tre STRONG(Top) (LINK(ecstasy/export0.jpg,voir
  l'image)). Attention toutes les meshes doivent avoir leur texture :
  si un seul triangle ne poss�de pas sa texture Ecstasy ne d�marre
  pas. Pensez � centrer la voiture sur l'origine !],

[Pour l'exporter en ASE cochez les options comme dans l'image suivante
  (LINK(ecstasy/export1.jpg,voir l'image)).],

[Dessiner �galement la roue gauche centr�e sur
  l'origine et l'exporter sous STRONG(roue.ase).],

[Prendre une photo de la voiture et la nommer
    STRONG(photo.jpg).],

[Mettre les textures (au format bmp, tga ou jpeg) dans le dossier
    STRONG(data\Textures).],

[Cr�er un fichier STRONG(info.txt) et mettre les
    param�tres de la voiture (poids de la roue, de la carcasse,
    raideur des ressort, position des roues, etc).],

[Lancer le programme, s�lectionner la nouvelle voiture et
jouer.])

TABLE(2,PICTURE(ecstasy/export0.jpg),PICTURE(ecstasy/export1.jpg))
CENTER(Cliquer sur les images pour les agrandir.)

<p>Trois remarques :</p>
LIST(

[Si la voiture ne pla�t pas au joueur, alors celui-ci peut la
  supprimer directement du dossier. Ecstasy doit avoir au moins une
  voiture pour pouvoir s'ex�cuter.],

[Si un ou plusieurs des fichiers suivants (carcasse.ase, roue.ase,
  photo.jpg ou info.txt) n'existe pas (ou porte un autre nom) un
  message d'erreur appara�t et la voiture ne sera pas prise en compte
  dans le jeu.],

[Modifier les param�tres de la voiture, sans comprendre ce que l'on
  fait, peut conduire � des probl�mes num�riques; par exemple, si la
  r�action du sol est trop forte ou le pas en temps est trop grand des
  instabilit�s num�riques peuvent appara�tre et entra�ner l'arr�t du
  programme.])

SUBSECTION(ICON_GEAR,Pour les d�veloppeurs,devel)

<p>Tout est expliqu� en anglais dans le fichier README
  MYGITHUB(Ecstasy). Le code source est en fran�ais. La dynamique de
  la voiture du joueur est expliqu�e sur une autre
  MYLINK(tuto_dyna,page) de mon site.</p>

SUBSECTION(ICON_GEAR,Liens utiles pour la programmation OpenGL,links)


<p>Voici quelques sites qui, � l'�poque, ont retenu mon attention
   concernant OpenGL et Delphi. Malheureusement la plupart de ces
   liens sont morts, mais je les laisse au cas ou.</p>

LIST(OpenGl et Delphi :
      LIST(ICON_EN Le site de Jan Horn : excellent site sur OpenGl en Delphi :
           EXTLINK(http://www.sulaco.co.za/).,

           ICON_EN Glscene : un composant OpenGl pour Delphi (freeware)
           EXTLINK(http://glscene.sourceforge.net/index.php).,

           ICON_FR Le site de Martin Beaudet : utile pour apprendre � cr�er
           sa premi�re fen�tre et ses primitives en OpenGl-Delphi :
           EXTLINK(http://iquebec.ifrance.com/eraquila/) Lien mort.,

           ICON_FR Le site Delphi3D : Programmes int�ressants et leurs codes �
           t�l�charger. EXTLINK(http://delphi3d.free.fr/).,

           ICON_EN MnOgl : un autre composant OpenGl pour delphi[[,]] mais moins
           �volu� que Glscene EXTLINK(http://www.delphi32.com/vcl/4731/).),

      OpenGl et C (et autres langages) :
      LIST(ICON_EN Le site The OpenGL Challenge :
            EXTLINK(http://videogamer.dhs.org/).;,

            ICON_EN Le site de NeHe avec de nombreux tutoriels :
            EXTLINK(http://nehe.gamedev.net/).,

            ICON_EN Le site de GameTutorials : EXTLINK(https://github.com/gametutorials/tutorials).)
)

LEFT_BORDER(TABLE_OF_CONTENTS HEADING(TRANS_SAME_PROJ,Speedway,speedway-LANG.html,Prince de moindre action,dyna-LANG.html))
END_BODY(speedway,Le projet SpeedWay,chessneuneu,Le projet ChessNeuNeu)
