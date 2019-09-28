TITLE(Elimination des parties cach�es)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Les arbres de partitionnement binaire de l'espace)
DESCRIPTION()
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_TUTO)

LEFT_HEADINGS(HEADING(TRANS_SAME_PROJ,Ecstasy,ecstasy-LANG.html))

BEGIN_BODY
FORKME(MySlides)
SECTION(Les arbres de partitionnement binaire de l'espace)
SUBSECTION(ICON_EYES,Pr�sentation,intro)

<p>L'un des probl�mes importants lors d'une projection d'une sc�ne graphique,
   qu'elle soit en 2D ou en 3D, est d'�liminer les parties cach�es de la
   sc�ne. Cet expos� va pr�senter un algorithme pour r�soudre ce probl�me :
   l'algorithme de partitionnement binaire de l'espace (Binary Space Partition
   en Anglais ou BSP), qui permet d'afficher les objets les plus �loign�s avant
   d'afficher les plus proche. Ce proc�d� est utilis� par des jeux tels que
   Half-Life ou Doom.</p>

<p>Ce rapport est un document d'�tudiant r�alis� comme devoir pour le cours de
micro informatique EPITA (2001-2002).</p>

SUBSECTION(ICON_READ,Sommaire du rapport,som)

<ul>
  <li>Sc�ne 3D</li>
  <li>Rappel de g�om�trie et de calcul matriciel</li>
  <ul>
    <li>Calcul matriciel</li>
    <li>G�om�trie 2D</li>
    <li>G�om�trie projective 2D</li>
    <li>G�om�trie projective 3D</li>
  </ul>
  <li>Algorithme de partitionnement binaire de l'espace (BSP)</li>
  <ul>
    <li>Partitionnement binaire d'un ensemble</li>
    <li>Repr�sentation d'une sc�ne 2D par un BSP</li>
    <li>Algorithme du peintre
  </ul>
  <li>Annexes</li>
  <ul>
    <li>D�termination de l'appartenance d'un point &agrave; un
    demi-espace</li>
    <li>Partition d'une sc�ne 2D en deux sc�nes par une
    coupure</li>
    <li>R�f�rences</li>
  </ul>
</ul>

SUBSECTION(ICON_DOWNLOAD,Voir le rapport,rap)

TABLE(1,LINK(bsp/bsp.pdf,Le rapport),ICON_PDF,format PDF -- 70 Ko)

SUBSECTION(ICON_GEAR,Liens concernant les arbres BSP,links)

<p>Voici quelques sites qui ont retenu mon attention concernant OpenGL :</p>
<ul>
  <li>La FAQ sur les arbres BSP : EXTLINK(http://www.faqs.org/faqs/graphics/bsptree-faq/)</li>
<li>Un livre de M. Abrash en fran�ais : ITALIQUE(Le zen de la programmation graphique) Edt. International Thomson Publishing, France 1997.</li>
  <li>Beaucoup d'autres sites web parlent et inmpl�mente des arbres BSP dans leur jeu (EXTLINK(http://www.gametutorials.com/,gametutorials), EXTLINK(http://www.gamedev.net/,GameDev). Google est votre ami !</li>
</ul>

END_BODY(simtadyn,Le projet SimTaDyn,,)
