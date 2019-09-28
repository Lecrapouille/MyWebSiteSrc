TITLE(Jeu 3D)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(3D shoot game, Delphi, OpenGL, EPITA)
DESCRIPTION(A simple 3D shoot game made in legacy OpenGL and Delphi for Windows)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

LEFT_HEADINGS(HEADING_3D_GAME)

BEGIN_BODY
FORKME(speedway)
SECTION(Le projet SpeedWay)
SUBSECTION(ICON_READ,Présentation,intro)

<p>Speedway est un doom-like 3D où des voitures, divisées en deux
   camps, se combattent jusqu'à ce que l'un des deux camps ait réduit
   le nombre de ses adversaires à zéro ! On peut jouer sur une demi
   douzaine d'univers et de voitures différentes.</p>

<p>Speedway est un projet d'étudiants fait à l'école EPITA en
   2001-2002. Il fut, pour l'ensemble de ses développeurs, notre
   premier projet en équipe et nos premiers pas dans le monde de la
   programmation. Il a été développé en Opengl, Borland Delphi 5 et
   DirectSound et fonctionne uniquement pour Windows 95/98/2000/XP.
   Il devrait fonctionner et compiler pour sur les versions plus
   récentes de Windows et de Delphi.</p>

<p>Le scénario est très simple : éliminer toutes les voitures ennemies
   en leur tirant dessus et en convertissant les morts. La conversion
   se fait en se rapprochant de la voiture détruite et cette dernière
   ressuscite instantanément et devient un allié. Goûter alors aux
   plaisirs de la nécromancie mécanique ^^.</p>

<p>Pour jouer, vous devez connaître les touches suivantes :</p>
LIST(STRONG(HAUT/BAS/DROIT/GAUCHE) : avance/recule/droite/gauche.,
    STRONG(1 à 6) : change d'armes.,
    STRONG(ESPACE) : tirer.,
    STRONG(HOME) : arme suivante.,
    STRONG(A) : change de vue (3 différentes).,
    STRONG(TABULATION) : change de voitures.)

SUBSECTION(ICON_EYES,Aperçus du jeu,view)

TABLE(3,PICTURE(speedway/blackmesa.jpg),
PICTURE(speedway/carte.jpg),
PICTURE(speedway/ville.jpg),
PICTURE(speedway/hell.jpg),
PICTURE(speedway/foret.jpg),
PICTURE(speedway/tank.jpg))
CENTER(Cliquer sur les images pour les agrandir.)

SUBSECTION(ICON_DOWNLOAD,Téléchargement,download)

<p>Ce projet n'est plus développé mais ses sources sont disponibles
   sur MYGITHUB(Speedway). Ce programme est disponible en open
   source. Il vous faudra un Delphi Borland pour compiler les sources
   (au moins la version 5). STRONG(Attention:) pour des soucis de
   poids, certaines ressources graphiques et sonores n'ont pas forcément
   été toutes stockées sur le repo git. Vous pouvez les télécharger
   ci-dessous.</p>

TABLE(3,
LINK(speedway/speedway.pdf,Le rapport),
LINK(speedway/speedway.rar,SpeedWay version 0.1),
LINK(speedway/speedway_sources.rar, Les Sources Delphi),
ICON_PDF,ICON_TGZ,ICON_TGZ, 100 Ko --- format PDF, 10 Mo --- format
RAR, 750 Ko --- format RAR)

SUBSECTION(ICON_GEAR,Au coeur de SpeedWay,heart)

<p>Etant des programmeurs novices à l'époque, le jeu est très lent
    même avec un PC actuel. Cela est du aux nombreux tests de
    collisions (véhicules contre véhicules et véhicules contre les
    murs) non optimisés car lancés sur tous les triangles de la
    scène. Un arbre BSP ou un Quad-Tree aurait aidé le jeu à réduire
    le nombre de calculs, mais nous n'avions pas eu le temps de le
    faire à l'époque. Autre problème: les voitures peuvent démarrer
    le jeu dans le décor.</p>

<p>Ce que le code contient :</p>
LIST(Dessins (voitures et cartes) dessinés grâce au logiciel 3D Studio
     Max et conversion des fichiers ASE de 3D Studio Max en une liste
     de triangles directement utilisables pour OpenGL.,

    Détection de collision sur les triangles de la carte
    (avec la caméra et les voitures).,

    Champs de force entre voitures et sur les murs (attractifs et
    répulsifs) des voitures contrôlées par l'ordinateur pour simuler
    une IA de pelotons et d'ennemis.,

    Quelques effets avec OpenGl comme des explosions (avec des
    particules ou uniquement avec des textures)[,] des arcs
    électriques[,] des effets d'éblouissements.,

    Tirs des voitures[,] bonus sur le sol à récupérer[,] sons[,] etc...)

SUBSECTION(ICON_GEAR,Liens utiles pour la programmation OpenGL,links)

<p>Voici quelques sites qui, à l'époque, ont retenu mon attention
   concernant OpenGL et Delphi. Malheureusement la plupart de ces
   liens sont morts, mais je les laisse au cas ou.</p>

LIST(OpenGl et Delphi :
      LIST(ICON_EN Le site de Jan Horn : excellent site sur OpenGl en Delphi :
           EXTLINK(http://www.sulaco.co.za/).,

           ICON_EN Glscene : un composant OpenGl pour Delphi (freeware)
           EXTLINK(http://glscene.sourceforge.net/index.php).,

           ICON_FR Le site de Martin Beaudet : utile pour apprendre à créer
           sa première fenêtre et ses primitives en OpenGl-Delphi :
           EXTLINK(http://iquebec.ifrance.com/eraquila/) Lien mort.,

           ICON_FR Le site Delphi3D : Programmes intéressants et leurs codes à
           télécharger. EXTLINK(http://delphi3d.free.fr/).,

           ICON_EN MnOgl : un autre composant OpenGl pour delphi[[,]] mais moins
           évolué que Glscene EXTLINK(http://www.delphi32.com/vcl/4731/).),

      OpenGl et C (et autres langages) :
      LIST(ICON_EN Le site The OpenGL Challenge :
            EXTLINK(http://videogamer.dhs.org/).;,

            ICON_EN Le site de NeHe avec de nombreux tutoriels :
            EXTLINK(http://nehe.gamedev.net/).,

            ICON_EN Le site de GameTutorials : EXTLINK(https://github.com/gametutorials/tutorials).)
)

END_BODY(,,ecstasy,Le projet Ecstasy)
