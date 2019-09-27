HELICO_HTML_BEGIN

SECTION(Pr&eacute;sentation du projet,intro)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#intro,Pr&eacute;sentation du projet)</li>
  <li>LINK(#apercu,Aper&ccedil;u g&eacute;n&eacute;ral d'un
h&eacute;licopt&egrave;re &agrave; quatre h&eacute;lices)</li>
  <li>LINK(#contraintes,Contraintes du projet)</li>
</ul>

SUBSECTION(Objectif)
BOX
<p>Ce document, dans le cadre de l'ann&eacute;e de
  sp&eacute;cialisation en temps r&eacute;el de l'EPITA,
  pr&eacute;sente un projet mettant en oeuvre l'&eacute;tude et la
  r&eacute;alisation d'un mod&egrave;le r&eacute;duit
  d'h&eacute;licopt&egrave;re &agrave; quatre h&eacute;lices (que l'on
  abr&eacute;gera, par la suite, par le mot h&eacute;licopt&egrave;re)
  et de son banc d'essai &eacute;lectrom&eacute;canique et
  logiciel.</p>

<p>La stabilisation est calcul&eacute;e par un
  ordinateur non embarqu&eacute; avec des logiciels de hauts niveaux. Les
  microcontr&ocirc;leurs de l'h&eacute;licopt&egrave;re et l'ordinateur
  communiquent entre eux. Les donn&eacute;es &eacute;mises des diff&eacute;rents
  capteurs de l'h&eacute;licopt&egrave;re sont re&ccedil;ues par
  l'ordinateur. Celui-ci effectue les calculs num&eacute;riques (loi de
  commandes, consignes) puis renvoie les valeurs au microcontr&ocirc;leur
  qui r&eacute;alise les commandes de stabilisation. Les moyens de calcul
  embarqu&eacute;s permettront dans une deuxi&egrave;me phase de rendre
  autonome l'h&eacute;licopt&egrave;re en lui permettant de calculer lui
  m&ecirc;me les lois de commande.</p>

<!-- <p>La stabilisation de l'h&eacute;licopt&egrave;re est calcul&eacute;e -->
<!--   par un ordinateur non embarqu&eacute; avec des outils de hauts -->
<!--   niveaux.  La communication entre des microcontr&ocirc;leurs et -->
<!--   l'ordinateur permet &agrave; ce dernier de recevoir les -->
<!--   donn&eacute;es &eacute;mises des diff&eacute;rents capteurs de -->
<!--   l'h&eacute;licopt&egrave;re et d'effectuer les calculs -->
<!--   num&eacute;riques (loi de commandes, consignes) puis de renvoyer les -->
<!--   valeurs au microcontr&ocirc;leur qui r&eacute;alise les commandes de -->
<!--   stabilisation. Les moyens de calcul embarqu&eacute;s permettront -->
<!--   dans une deuxi&egrave;me phase de rendre autonome -->
<!--   l'h&eacute;licopt&egrave;re en lui permettant de calculer lui -->
<!--   m&ecirc;me les lois de commande.</p> -->

<p>
Des projets similaires existent d&eacute;j&agrave; (cf. figures
ci-dessous) sous la forme commerciale connus sous les noms de
Draganflyer, X-UFO. Il existe &eacute;galement des projets
r&eacute;alis&eacute;s par des &eacute;tudiants ou par des
passionn&eacute;s (voir la LINK(helico_biblio-LANG.html#xufo,bibliographie)).</p>
ENDBOX

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
Le EXTLINK(http://perso.wanadoo.fr/grzflyer/,Gorrazopt&egrave;re),
Le
EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,MicroHeli4)
de JoseJ)-->
ENDBOX

SUBSECTION(Aper&ccedil;u g&eacute;n&eacute;ral d'un
h&eacute;licopt&egrave;re &agrave; quatre h&eacute;lices,apercu)
BOX

<p>Un h&eacute;licopt&egrave;re
  &agrave; quatre h&eacute;lices est une plate-forme volante
  comprenant une LINK(helico_mecanique-LANG.html, partie
  m&eacute;canique) et une LINK(helico_electronique-LANG.html,partie
  &eacute;lectronique).</p>

CENTER(CAPTION(helico/schemas/h4h.jpg))

<p>La partie m&eacute;canique a la forme d'une croix (donc deux axes)
  sur laquelle est attach&eacute;e quatre moteurs.  En
  g&eacute;n&eacute;ral, afin de r&eacute;duire au maximum le lacet de
  l'appareil, deux moteurs tournent dans un sens et les deux autres
  dans le sens oppos&eacute;. On devra donc utiliser deux types
  d'h&eacute;lices. Voir LINK(helico/leshelices.pdf,ici).  Parfois,
  sur des mod&egrave;les de petites tailles, pour &eacute;viter
  l'inversion du sens de rotation des moteurs, on incline les moteurs
  (voir
  EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,le
  MicroHeli4 de JoseJ sur Rcgroups)).</p>

<p>La partie &eacute;lectronique assure la stabilit&eacute; de la
  plateforme en contr&ocirc;lant la vitesse des moteurs en fonction
  des donn&eacute;es d'une centrale inertielle et des consignes
  envoy&eacute;es par l'utilisateur (g&eacute;n&eacute;ralement par
  radio-commande). Elle peut &eacute;ventuellement communiquer avec un
  ordinateur non embarqu&eacute; au moyen d'un port s&eacute;rie
  &agrave; des fins de d&eacute;bogage, de chargement des programmes
  des &micro;C. Voir la section
  LINK(helico_asservissement-LANG.html,Asservissement).</p>  ENDBOX

SUBSECTION(Contraintes du projet,contraintes)
BOX
<p>STRONG(Robustesse &agrave; son environnement.) L'appareil est
    pr&eacute;vu pour fonctionner en int&eacute;rieur, avec un minimum
    de perturbation atmosph&eacute;rique.</p>

 <p>STRONG(Contraintes de dimension et de poids de
   l'h&eacute;licopt&egrave;re.)  La plate-forme se veut &ecirc;tre de
   dimension et de poids le plus r&eacute;duit possible (envergure
   inf&eacute;rieur a 20 cm, poids en dessous des 200 g). On a choisi de ne
   pas utiliser de cartes d'acquisitions &agrave; cause de leur poids et de
   leur prix. L'acquisition des donn&eacute;es sera realis&eacute;e par un
   microcontr&ocirc;leur PIC.</p>

<!-- (type mini cartes m&egrave;res -->
<!--    embarqu&eacute;es) est prohib&eacute;e car elles sont trop -->
<!--    excessives (poids, volume, puissance de calculs) pour ce projet. La -->
<!--    partie &eacute;lectronique doit donc &ecirc;tre fabriqu&eacute;e et -->
<!--    adapt&eacute;e &agrave; l'h&eacute;licopt&egrave;re. Elle doit -->
<!--    galement avoir une interface de communication avec l'ordinateur -->
<!--    (pour le d&eacute;bugage, chargement de programmes).</p> -->

<p> STRONG(Communication avec un ordinateur non
  embarqu&eacute;). L'h&eacute;licopt&egrave;re communique avec un
  ordinateur non embarqu&eacute; au moyen d'un port s&eacute;rie.  Le
  microcontr&ocirc;leur envoie les donn&eacute;es de la centrale
  inertielle &agrave; l'ordinateur.  Ce dernier fait les calculs
  flottants de stabilisation et les communique au
  microcontr&ocirc;leur embarqu&eacute;.</p>

<p>STRONG(Source d'&eacute;nergie). L'h&eacute;licopt&egrave;re ne
  dispose pas de batterie, il est aliment&eacute; une source
  d'&eacute;nergie au sol au moyen de fils &eacute;lectriques. Ce qui
  permet une &eacute;conomie de poids importante et une autonomie
  beaucoup plus grande.</p>

<!--  <p>STRONG(Contrainte de l'ordinateur et de l'IHM.) L'interface homme -->
<!--    machine permet de simuler la plate-forme, puis de la -->
<!--    contr&ocirc;ler r&eacute;ellement tout en visualisant ses -->
<!--    &eacute;tats. L'ordinateur sera un mod&egrave;le standard (PC, -->
<!--    Macintosh), avec &eacute;ventuellement un OS temps r&eacute;el dur -->
<!--    ou mou mais il devra &ecirc;tre suffisamment r&eacute;actif pour -->
<!--    assurer son r&ocirc;le de gestion de la stabilit&eacute;.</p> -->
FINALBOX(,helico_etapes)
END_BODY
HTML_FOOTER
