HELICO_HTML_BEGIN

SECTION(Presentation of the project,intro)

SUBSECTION(Objectives)
<p>This document, made during the EPITA's year in real time
  specialization, introduces a project to study and realize a
  reduced four-rotor heads helicopter model (that we recall it by
  helicopter) and his software and electromechanical test bed.</p>

<p> The stabilization of the helicopter is made by an external
  computer with high level tools. The communication between the
  electronic card and the computer allows this last to receive data
  send by the sensors of the helicopter, to perform the numericals
  calculus (consign, command law) and then to re-send the values to the
  microcontrolers which realizes the stabilization.
  In a second phase, the helicopter will be autonomous thanks his
  embedded calculs ways which will calculated themselves the command
  law.</p>

<p>Similars projects already exist (see figures below) in a commercial way
under the name of Draganflyer or X-UFO. Some projects made by student or passionate people
exists too. The link LINK(helico_biblio-LANG.html#xufo,page biblio)
will give you more informations.</p>


TAB_DIM_3bis(CAPTION(helico/xufo.jpg),
CAPTION(helico/engager.gif),
CAPTION(helico/draganflyer.jpg),
The
EXTLINK(http://www.firebox.com/?dir=firebox&action=product&pid=1024,X-UFO),
The
EXTLINK(http://hobby.keyence.co.jp/english/saucer.html,Engager),
The
EXTLINK(http://www.rctoys.com/draganflyer5tipro.php,Draganflyer))
<!-- CAPTION(http://perso.wanadoo.fr/grzflyer/Pages_francais/les%20photos/version_1-02a-03/1-02a-03_Statique_02.JPG),
CAPTION(http://static.rcgroups.com/forums/attachments/4/6/4/8/1/335691.attach?oJuyoTx5KmysAGNjYzcjMmfmZmH7BGR2nJ6uM7HyZxMdpTIa),
Le
EXTLINK(http://www.firebox.com/?dir=firebox&action=product&pid=1024,X-UFO),
Le EXTLINK(http://perso.wanadoo.fr/grzflyer/,Gorrazopt&egrave;re),
Le
EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,MicroHeli4)
de JoseJ)-->

<!-- TAB_DIM_3bis(CAPTION(helico/xufo.jpg),
CAPTION(http://perso.wanadoo.fr/grzflyer/Pages_francais/les%20photos/version_1-02a-03/1-02a-03_Statique_02.JPG),
CAPTION(http://static.rcgroups.com/forums/attachments/4/6/4/8/1/335691.attach?oJuyoTx5KmysAGNjYzcjMmfmZmH7BGR2nJ6uM7HyZxMdpTIa),
The
EXTLINK(http://www.firebox.com/?dir=firebox&action=product&pid=1024,X-UFO),
The EXTLINK(http://perso.wanadoo.fr/grzflyer/,Gorrazopt&egrave;re),
The JoseJ's
EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,
MicroHeli4))-->

SUBSECTION(What is a four-rotor heads helicopter ?)

<p>A four-rotor heads modelhelicopter is flying platform containing a
LINK(helico_matos-LANG.html, material part) and an
LINK(helico_electro-LANG.html, electronical part) (see the below figure).</p>

TAB_DIM_1(CAPTION(helico/h4h.jpg),A helicopter see above)

<p>
The material part has a X form where is attached to each extremity a
pair motor-propeller. The propellers are fixed (in the aim fixed on
the rotor head, contrary to the standard helicopter). In the aim to
reduce at the minimun the helicopter induce moment, the
propellers (taken by pair) have two differents forms : clockwise (CW) and
counter clockwise (CCW).  It is interessing to notice that small helicopter
may have all propellers turning on the same way (like EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,JoseJ'sMicroHeli4)).</p>

<p>The electronical part is located on the cross center. It controls
  the motor speeds in finction of the consigns send by the user. It
  can have a communication port with the computer to debug or load
  programs.</p>

SUBSECTION(Project's contraints)

<p>STRONG(Environnemental strength.) The helicopter is designed to
  fly in indoor with optimal meteorological conditions (so without
  constraints and disruptions).</p>

<p>STRONG(Contraintes de dimension et de poids
  l'h&eacute;licopt&egrave;re.)  L'engin se veut &ecirc;tre de
  dimension et de poids le plus r&eacute;duit possible (ordre
  d'id&eacute;e : envergure en dessous des 30 cm, poids en dessous
  des 200 g). L'utilisation de cartes commerciales d'acquisitions
  (type mini cartes m&egrave;res embarqu&eacute;es) est
  prohib&eacute;e car elles sont trop excessives (poids, volume,
  puissance de calculs) pour ce projet. La partie &eacute;lectronique
  doit donc tre fabriqu&eacute;e et adapt&eacute;e &agrave;
  l'h&eacute;licopt&egrave;re. Elle doit galement avoir une interface
  de communication avec l'ordinateur (pour le d&eacute;bugage,
  chargement de programmes).</p>

 <p>STRONG(Contrainte de l'ordinateur et de l'IHM.) L'interface homme
   machine permet de simuler la plate-forme, puis de la
   contr&ocirc;ler r&eacute;ellement tout en visualisant ses
   &eacute;tats. L'ordinateur sera un mod&egrave;le standard (PC,
   Macintosh), avec &eacute;ventuellement un OS temps r&eacute;el dur
   ou mou mais il devra &ecirc;tre suffisamment r&eacute;actif pour
   assurer son r&ocirc;le de gestion de la stabilit&eacute;.</p>

END_BODY

HEADER_MENU(>>,helico_etapes,Home,index,<<,X)
HTML_FOOTER
