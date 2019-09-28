TITLE(Construction d'un h�licopt�re � quatre rotors)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(quadrotor)
DESCRIPTION(H�licopt�re � quatre rotors)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_EMBARQUE)

BEGIN_BODY
SECTION(Pr�sentation du projet,intro)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#intro,Pr�sentation du projet)</li>
  <li>LINK(#apercu,Aper�u g�n�ral d'un
h�licopt�re � quatre h�lices)</li>
  <li>LINK(#contraintes,Contraintes du projet)</li>
</ul>

SUBSECTION(Objectif)

<p>Ce document, dans le cadre de l'ann�e de sp�cialisation en temps r�el de
   l'EPITA, pr�sente un projet mettant en oeuvre l'�tude et la r�alisation d'un
   mod�le r�duit d'h�licopt�re � quatre h�lices (que l'on abr�gera, par la
   suite, par le mot h�licopt�re) et de son banc d'essai �lectrom�canique et
   logiciel.</p>

<p>La stabilisation est calcul�e par un ordinateur non embarqu� avec des
   logiciels de hauts niveaux. Les microcontr�leurs de l'h�licopt�re et
   l'ordinateur communiquent entre eux. Les donn�es �mises des diff�rents
   capteurs de l'h�licopt�re sont re�ues par l'ordinateur. Celui-ci effectue les
   calculs num�riques (loi de commandes, consignes) puis renvoie les valeurs au
   microcontr�leur qui r�alise les commandes de stabilisation. Les moyens de
   calcul embarqu�s permettront dans une deuxi�me phase de rendre autonome
   l'h�licopt�re en lui permettant de calculer lui m�me les lois de
   commande.</p>

<!-- <p>La stabilisation de l'h�licopt�re est calcul�e -->
<!--   par un ordinateur non embarqu� avec des outils de hauts -->
<!--   niveaux.  La communication entre des microcontr�leurs et -->
<!--   l'ordinateur permet � ce dernier de recevoir les -->
<!--   donn�es �mises des diff�rents capteurs de -->
<!--   l'h�licopt�re et d'effectuer les calculs -->
<!--   num�riques (loi de commandes, consignes) puis de renvoyer les -->
<!--   valeurs au microcontr�leur qui r�alise les commandes de -->
<!--   stabilisation. Les moyens de calcul embarqu�s permettront -->
<!--   dans une deuxi�me phase de rendre autonome -->
<!--   l'h�licopt�re en lui permettant de calculer lui -->
<!--   m�me les lois de commande.</p> -->

<p>Des projets similaires existent d�j� (cf. figures ci-dessous) sous la forme
   commerciale connus sous les noms de Draganflyer, X-UFO. Il existe �galement
   des projets r�alis�s par des �tudiants ou par des passionn�s (voir la
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
Le EXTLINK(http://perso.wanadoo.fr/grzflyer/,Gorrazopt�re),
Le
EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,MicroHeli4)
de JoseJ)-->
ENDBOX

SUBSECTION(Aper�u g�n�ral d'un h�licopt�re � quatre h�lices,apercu)

<p>Un h�licopt�re � quatre h�lices est une plate-forme volante comprenant une
   LINK(helico_mecanique-LANG.html, partie m�canique) et une
   LINK(helico_electronique-LANG.html,partie �lectronique).</p>

CENTER(CAPTION(helico/schemas/h4h.jpg))

<p>La partie m�canique a la forme d'une croix (donc deux axes) sur laquelle est
   attach�e quatre moteurs.  En g�n�ral, afin de r�duire au maximum le lacet de
   l'appareil, deux moteurs tournent dans un sens et les deux autres dans le
   sens oppos�. On devra donc utiliser deux types d'h�lices. Voir
   LINK(helico/leshelices.pdf,ici).  Parfois, sur des mod�les de petites
   tailles, pour �viter l'inversion du sens de rotation des moteurs, on incline
   les moteurs (voir
   EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,le
   MicroHeli4 de JoseJ sur Rcgroups)).</p>

<p>La partie �lectronique assure la stabilit� de la
  plateforme en contr�lant la vitesse des moteurs en fonction
  des donn�es d'une centrale inertielle et des consignes
  envoy�es par l'utilisateur (g�n�ralement par
  radio-commande). Elle peut �ventuellement communiquer avec un
  ordinateur non embarqu� au moyen d'un port s�rie
  � des fins de d�bogage, de chargement des programmes
  des &micro;C. Voir la section
  LINK(helico_asservissement-LANG.html,Asservissement).</p>  ENDBOX

SUBSECTION(Contraintes du projet,contraintes)
BOX
<p>STRONG(Robustesse � son environnement.) L'appareil est
    pr�vu pour fonctionner en int�rieur, avec un minimum
    de perturbation atmosph�rique.</p>

 <p>STRONG(Contraintes de dimension et de poids de
   l'h�licopt�re.)  La plate-forme se veut �tre de
   dimension et de poids le plus r�duit possible (envergure
   inf�rieur a 20 cm, poids en dessous des 200 g). On a choisi de ne
   pas utiliser de cartes d'acquisitions � cause de leur poids et de
   leur prix. L'acquisition des donn�es sera realis�e par un
   microcontr�leur PIC.</p>

<!-- (type mini cartes m�res -->
<!--    embarqu�es) est prohib�e car elles sont trop -->
<!--    excessives (poids, volume, puissance de calculs) pour ce projet. La -->
<!--    partie �lectronique doit donc �tre fabriqu�e et -->
<!--    adapt�e � l'h�licopt�re. Elle doit -->
<!--    galement avoir une interface de communication avec l'ordinateur -->
<!--    (pour le d�bugage, chargement de programmes).</p> -->

<p> STRONG(Communication avec un ordinateur non
  embarqu�). L'h�licopt�re communique avec un
  ordinateur non embarqu� au moyen d'un port s�rie.  Le
  microcontr�leur envoie les donn�es de la centrale
  inertielle � l'ordinateur.  Ce dernier fait les calculs
  flottants de stabilisation et les communique au
  microcontr�leur embarqu�.</p>

<p>STRONG(Source d'�nergie). L'h�licopt�re ne
  dispose pas de batterie, il est aliment� une source
  d'�nergie au sol au moyen de fils �lectriques. Ce qui
  permet une �conomie de poids importante et une autonomie
  beaucoup plus grande.</p>

<!--  <p>STRONG(Contrainte de l'ordinateur et de l'IHM.) L'interface homme -->
<!--    machine permet de simuler la plate-forme, puis de la -->
<!--    contr�ler r�ellement tout en visualisant ses -->
<!--    �tats. L'ordinateur sera un mod�le standard (PC, -->
<!--    Macintosh), avec �ventuellement un OS temps r�el dur -->
<!--    ou mou mais il devra �tre suffisamment r�actif pour -->
<!--    assurer son r�le de gestion de la stabilit�.</p> -->
FINALBOX(,helico_etapes)
END_BODY
HTML_FOOTER
