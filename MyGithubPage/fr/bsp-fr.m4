TITLE(Elimination des parties cachées)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Les arbres de partitionnement binaire de l'espace)
DESCRIPTION()
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_TUTO)

LEFT_HEADINGS(HEADING(TRANS_SAME_PROJ,Ecstasy,ecstasy-LANG.html))

BEGIN_BODY
FORKME(MySlides)
SECTION(Les arbres de partitionnement binaire de l'espace)
SUBSECTION(ICON_EYES,Présentation,intro)

<p>L'un des problèmes importants lors d'une projection d'une scène graphique,
   qu'elle soit en 2D ou en 3D, est d'éliminer les parties cachées de la
   scène. Cet exposé va présenter un algorithme pour résoudre ce problème :
   l'algorithme de partitionnement binaire de l'espace (Binary Space Partition
   en Anglais ou BSP), qui permet d'afficher les objets les plus éloignés avant
   d'afficher les plus proche. Ce procédé est utilisé par des jeux tels que
   Half-Life ou Doom.</p>

<p>Ce rapport est un document d'étudiant réalisé comme devoir pour le cours de
micro informatique EPITA (2001-2002).</p>

SUBSECTION(ICON_READ,Sommaire du rapport,som)

<ul>
  <li>Scène 3D</li>
  <li>Rappel de géométrie et de calcul matriciel</li>
  <ul>
    <li>Calcul matriciel</li>
    <li>Géométrie 2D</li>
    <li>Géométrie projective 2D</li>
    <li>Géométrie projective 3D</li>
  </ul>
  <li>Algorithme de partitionnement binaire de l'espace (BSP)</li>
  <ul>
    <li>Partitionnement binaire d'un ensemble</li>
    <li>Représentation d'une scène 2D par un BSP</li>
    <li>Algorithme du peintre
  </ul>
  <li>Annexes</li>
  <ul>
    <li>Détermination de l'appartenance d'un point &agrave; un
    demi-espace</li>
    <li>Partition d'une scène 2D en deux scènes par une
    coupure</li>
    <li>Références</li>
  </ul>
</ul>

SUBSECTION(ICON_DOWNLOAD,Voir le rapport,rap)

TABLE(1,LINK(bsp/bsp.pdf,Le rapport),ICON_PDF,format PDF -- 70 Ko)

SUBSECTION(ICON_GEAR,Liens concernant les arbres BSP,links)

<p>Voici quelques sites qui ont retenu mon attention concernant OpenGL :</p>
<ul>
  <li>La FAQ sur les arbres BSP : EXTLINK(http://www.faqs.org/faqs/graphics/bsptree-faq/)</li>
<li>Un livre de M. Abrash en français : ITALIQUE(Le zen de la programmation graphique) Edt. International Thomson Publishing, France 1997.</li>
  <li>Beaucoup d'autres sites web parlent et inmplémente des arbres BSP dans leur jeu (EXTLINK(http://www.gametutorials.com/,gametutorials), EXTLINK(http://www.gamedev.net/,GameDev). Google est votre ami !</li>
</ul>

END_BODY(simtadyn,Le projet SimTaDyn,,)
