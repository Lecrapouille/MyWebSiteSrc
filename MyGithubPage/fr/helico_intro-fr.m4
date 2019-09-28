TITLE(Construction d'un hélicoptère à quatre rotors)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(quadrotor)
DESCRIPTION(Hélicoptère à quatre rotors)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_EMBARQUE)

BEGIN_BODY
SECTION(Présentation du projet,intro)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#intro,Présentation du projet)</li>
  <li>LINK(#apercu,Aperçu général d'un
hélicoptère à quatre hélices)</li>
  <li>LINK(#contraintes,Contraintes du projet)</li>
</ul>

SUBSECTION(Objectif)

<p>Ce document, dans le cadre de l'année de spécialisation en temps réel de
   l'EPITA, présente un projet mettant en oeuvre l'étude et la réalisation d'un
   modèle réduit d'hélicoptère à quatre hélices (que l'on abrégera, par la
   suite, par le mot hélicoptère) et de son banc d'essai électromécanique et
   logiciel.</p>

<p>La stabilisation est calculée par un ordinateur non embarqué avec des
   logiciels de hauts niveaux. Les microcontrôleurs de l'hélicoptère et
   l'ordinateur communiquent entre eux. Les données émises des différents
   capteurs de l'hélicoptère sont reçues par l'ordinateur. Celui-ci effectue les
   calculs numériques (loi de commandes, consignes) puis renvoie les valeurs au
   microcontrôleur qui réalise les commandes de stabilisation. Les moyens de
   calcul embarqués permettront dans une deuxième phase de rendre autonome
   l'hélicoptère en lui permettant de calculer lui même les lois de
   commande.</p>

<!-- <p>La stabilisation de l'hélicoptère est calculée -->
<!--   par un ordinateur non embarqué avec des outils de hauts -->
<!--   niveaux.  La communication entre des microcontrôleurs et -->
<!--   l'ordinateur permet à ce dernier de recevoir les -->
<!--   données émises des différents capteurs de -->
<!--   l'hélicoptère et d'effectuer les calculs -->
<!--   numériques (loi de commandes, consignes) puis de renvoyer les -->
<!--   valeurs au microcontrôleur qui réalise les commandes de -->
<!--   stabilisation. Les moyens de calcul embarqués permettront -->
<!--   dans une deuxième phase de rendre autonome -->
<!--   l'hélicoptère en lui permettant de calculer lui -->
<!--   même les lois de commande.</p> -->

<p>Des projets similaires existent déjà (cf. figures ci-dessous) sous la forme
   commerciale connus sous les noms de Draganflyer, X-UFO. Il existe également
   des projets réalisés par des étudiants ou par des passionnés (voir la
   LINK(helico_biblio-LANG.html#xufo,bibliographie)).</p> ENDBOX

BOX
TAB_DIM_3bis(CAPTION(helico/xufo.jpg),
CAPTION(helico/engager.gif),
CAPTION(helico/draganflyer.jpg),
Le site du
EXTLINK(http://www.firebox.com/?dir=firebox&action=product&pid=1024,X-UFO),
Le site du
EXTLINK(http://hobby.keyence.co.jp/english/saucer.html,Engager),
Le site du
EXTLINK(http://www.rctoys.com/draganflyer5tipro.php,Draganflyer))
<!-- CAPTION(http://perso.wanadoo.fr/grzflyer/Pages_francais/les%20photos/version_1-02a-03/1-02a-03_Statique_02.JPG),
CAPTION(http://static.rcgroups.com/forums/attachments/4/6/4/8/1/335691.attach?oJuyoTx5KmysAGNjYzcjMmfmZmH7BGR2nJ6uM7HyZxMdpTIa),
Le
EXTLINK(http://www.firebox.com/?dir=firebox&action=product&pid=1024,X-UFO),
Le EXTLINK(http://perso.wanadoo.fr/grzflyer/,Gorrazoptère),
Le
EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,MicroHeli4)
de JoseJ)-->
ENDBOX

SUBSECTION(Aperçu général d'un hélicoptère à quatre hélices,apercu)

<p>Un hélicoptère à quatre hélices est une plate-forme volante comprenant une
   LINK(helico_mecanique-LANG.html, partie mécanique) et une
   LINK(helico_electronique-LANG.html,partie électronique).</p>

CENTER(CAPTION(helico/schemas/h4h.jpg))

<p>La partie mécanique a la forme d'une croix (donc deux axes) sur laquelle est
   attachée quatre moteurs.  En général, afin de réduire au maximum le lacet de
   l'appareil, deux moteurs tournent dans un sens et les deux autres dans le
   sens opposé. On devra donc utiliser deux types d'hélices. Voir
   LINK(helico/leshelices.pdf,ici).  Parfois, sur des modèles de petites
   tailles, pour éviter l'inversion du sens de rotation des moteurs, on incline
   les moteurs (voir
   EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,le
   MicroHeli4 de JoseJ sur Rcgroups)).</p>

<p>La partie électronique assure la stabilité de la
  plateforme en contrôlant la vitesse des moteurs en fonction
  des données d'une centrale inertielle et des consignes
  envoyées par l'utilisateur (généralement par
  radio-commande). Elle peut éventuellement communiquer avec un
  ordinateur non embarqué au moyen d'un port série
  à des fins de débogage, de chargement des programmes
  des &micro;C. Voir la section
  LINK(helico_asservissement-LANG.html,Asservissement).</p>  ENDBOX

SUBSECTION(Contraintes du projet,contraintes)
BOX
<p>STRONG(Robustesse à son environnement.) L'appareil est
    prévu pour fonctionner en intérieur, avec un minimum
    de perturbation atmosphérique.</p>

 <p>STRONG(Contraintes de dimension et de poids de
   l'hélicoptère.)  La plate-forme se veut être de
   dimension et de poids le plus réduit possible (envergure
   inférieur a 20 cm, poids en dessous des 200 g). On a choisi de ne
   pas utiliser de cartes d'acquisitions à cause de leur poids et de
   leur prix. L'acquisition des données sera realisée par un
   microcontrôleur PIC.</p>

<!-- (type mini cartes mères -->
<!--    embarquées) est prohibée car elles sont trop -->
<!--    excessives (poids, volume, puissance de calculs) pour ce projet. La -->
<!--    partie électronique doit donc être fabriquée et -->
<!--    adaptée à l'hélicoptère. Elle doit -->
<!--    galement avoir une interface de communication avec l'ordinateur -->
<!--    (pour le débugage, chargement de programmes).</p> -->

<p> STRONG(Communication avec un ordinateur non
  embarqué). L'hélicoptère communique avec un
  ordinateur non embarqué au moyen d'un port série.  Le
  microcontrôleur envoie les données de la centrale
  inertielle à l'ordinateur.  Ce dernier fait les calculs
  flottants de stabilisation et les communique au
  microcontrôleur embarqué.</p>

<p>STRONG(Source d'énergie). L'hélicoptère ne
  dispose pas de batterie, il est alimenté une source
  d'énergie au sol au moyen de fils électriques. Ce qui
  permet une économie de poids importante et une autonomie
  beaucoup plus grande.</p>

<!--  <p>STRONG(Contrainte de l'ordinateur et de l'IHM.) L'interface homme -->
<!--    machine permet de simuler la plate-forme, puis de la -->
<!--    contrôler réellement tout en visualisant ses -->
<!--    états. L'ordinateur sera un modèle standard (PC, -->
<!--    Macintosh), avec éventuellement un OS temps réel dur -->
<!--    ou mou mais il devra être suffisamment réactif pour -->
<!--    assurer son rôle de gestion de la stabilité.</p> -->
FINALBOX(,helico_etapes)
END_BODY
HTML_FOOTER
