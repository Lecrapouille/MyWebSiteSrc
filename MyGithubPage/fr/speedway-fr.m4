TITLE(Jeu 3D)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(3D shoot game, Delphi, OpenGL, EPITA)
DESCRIPTION(A simple 3D shoot game made in legacy OpenGL and Delphi for Windows)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

LEFT_HEADINGS(HEADING_3D_GAME)

BEGIN_BODY
FORKME(speedway)
SECTION(Le projet SpeedWay)
SUBSECTION(ICON_READ,Pr�sentation,intro)

<p>Speedway est un doom-like 3D o� des voitures, divis�es en deux
   camps, se combattent jusqu'� ce que l'un des deux camps ait r�duit
   le nombre de ses adversaires � z�ro ! On peut jouer sur une demi
   douzaine d'univers et de voitures diff�rentes.</p>

<p>Speedway est un projet d'�tudiants fait � l'�cole EPITA en
   2001-2002. Il fut, pour l'ensemble de ses d�veloppeurs, notre
   premier projet en �quipe et nos premiers pas dans le monde de la
   programmation. Il a �t� d�velopp� en Opengl, Borland Delphi 5 et
   DirectSound et fonctionne uniquement pour Windows 95/98/2000/XP.
   Il devrait fonctionner et compiler pour sur les versions plus
   r�centes de Windows et de Delphi.</p>

<p>Le sc�nario est tr�s simple : �liminer toutes les voitures ennemies
   en leur tirant dessus et en convertissant les morts. La conversion
   se fait en se rapprochant de la voiture d�truite et cette derni�re
   ressuscite instantan�ment et devient un alli�. Go�ter alors aux
   plaisirs de la n�cromancie m�canique ^^.</p>

<p>Pour jouer, vous devez conna�tre les touches suivantes :</p>
LIST(STRONG(HAUT/BAS/DROIT/GAUCHE) : avance/recule/droite/gauche.,
    STRONG(1 � 6) : change d'armes.,
    STRONG(ESPACE) : tirer.,
    STRONG(HOME) : arme suivante.,
    STRONG(A) : change de vue (3 diff�rentes).,
    STRONG(TABULATION) : change de voitures.)

SUBSECTION(ICON_EYES,Aper�us du jeu,view)

TABLE(3,PICTURE(speedway/blackmesa.jpg),
PICTURE(speedway/carte.jpg),
PICTURE(speedway/ville.jpg),
PICTURE(speedway/hell.jpg),
PICTURE(speedway/foret.jpg),
PICTURE(speedway/tank.jpg))
CENTER(Cliquer sur les images pour les agrandir.)

SUBSECTION(ICON_DOWNLOAD,T�l�chargement,download)

<p>Ce projet n'est plus d�velopp� mais ses sources sont disponibles
   sur MYGITHUB(Speedway). Ce programme est disponible en open
   source. Il vous faudra un Delphi Borland pour compiler les sources
   (au moins la version 5). STRONG(Attention:) pour des soucis de
   poids, certaines ressources graphiques et sonores n'ont pas forc�ment
   �t� toutes stock�es sur le repo git. Vous pouvez les t�l�charger
   ci-dessous.</p>

TABLE(3,
LINK(speedway/speedway.pdf,Le rapport),
LINK(speedway/speedway.rar,SpeedWay version 0.1),
LINK(speedway/speedway_sources.rar, Les Sources Delphi),
ICON_PDF,ICON_TGZ,ICON_TGZ, 100 Ko --- format PDF, 10 Mo --- format
RAR, 750 Ko --- format RAR)

SUBSECTION(ICON_GEAR,Au coeur de SpeedWay,heart)

<p>Etant des programmeurs novices � l'�poque, le jeu est tr�s lent
    m�me avec un PC actuel. Cela est du aux nombreux tests de
    collisions (v�hicules contre v�hicules et v�hicules contre les
    murs) non optimis�s car lanc�s sur tous les triangles de la
    sc�ne. Un arbre BSP ou un Quad-Tree aurait aid� le jeu � r�duire
    le nombre de calculs, mais nous n'avions pas eu le temps de le
    faire � l'�poque. Autre probl�me: les voitures peuvent d�marrer
    le jeu dans le d�cor.</p>

<p>Ce que le code contient :</p>
LIST(Dessins (voitures et cartes) dessin�s gr�ce au logiciel 3D Studio
     Max et conversion des fichiers ASE de 3D Studio Max en une liste
     de triangles directement utilisables pour OpenGL.,

    D�tection de collision sur les triangles de la carte
    (avec la cam�ra et les voitures).,

    Champs de force entre voitures et sur les murs (attractifs et
    r�pulsifs) des voitures contr�l�es par l'ordinateur pour simuler
    une IA de pelotons et d'ennemis.,

    Quelques effets avec OpenGl comme des explosions (avec des
    particules ou uniquement avec des textures)[,] des arcs
    �lectriques[,] des effets d'�blouissements.,

    Tirs des voitures[,] bonus sur le sol � r�cup�rer[,] sons[,] etc...)

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

END_BODY(,,ecstasy,Le projet Ecstasy)
