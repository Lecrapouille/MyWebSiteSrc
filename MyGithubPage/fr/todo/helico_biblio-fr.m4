HELICO_HTML_BEGIN

SECTION(Bibliographie et liens,biblio)

<p>STRONG(Chapitrage :)</p>
<ul>
  <li>LINK(#xufo,Les projets existants)</li>
  <li>LINK(#logo,Logiciels utilis&eacute;s)</li>
  <li>LINK(#doclog,Documentation des logiciels)</li>
  <li>LINK(#auto,Automatique)</li>
  <li>LINK(#elec,Microcontr&ocirc;leur et &eacute;lectronique)</li>
</ul>

SUBSECTION(Les projets existants,xufo)
BOX
<ul>
  <li>EXTLINK(http://forum.xbird.org/)<br /> REMARQUE L'indispensable
    forum fran&ccedil;ais o&ugrave; tous les passion&eacute;s de
    plateforme volante viennent pour partager leur connaissance.</li>
  <li>EXTLINK(http://perso.wanadoo.fr/grzflyer/)<br /> REMARQUE Un
    excellent projet fran&ccedil;ais de construction de plateforme
    volante de grande taille. Avantages : les caract&eacute;ristiques
    de l'&eacute;lectronique et de la m&eacute;canique sont
    donn&eacute;es. Inconv&eacute;nients : le sch&eacute;ma
    &eacute;lectronique et la dynamique de l'h&eacute;licopt&egrave;re
    ne sont pas expliqu&eacute;s.
  </li>
  <li>EXTLINK(http://perso.orange.fr/pjdag/nico/index.html)<br />
    REMARQUE Un autre projet fran&ccedil;ais de plateforme volante
    (non fini). Des explications tr&egrave;s claires y sont
    donn&eacute;es (&eacute;lectronique, dsPIC,
    m&eacute;canique).</li>
  <li>EXTLINK(http://www.rcgroups.com/forums/showthread.php?s=05bcbf26fe1c60ab6f128e5e38fc88c5&t=297067&pp=15,Le
  MicroHeli) version 4 de JoseJ sur le forum rcgroups<br /> REMARQUE
  Contrairement aux projets de l'EPFL (ci apr&egrave;s), JoseJ utilise
  quatre moteurs tournant dans le m&ecirc;me sens au lieu de deux dans le
  sens direct et deux dans les sens indirect. Il stabilise
  l'h&eacute;licopt&egrave;re (force de torsion) avec un
  aileron. Citation : ITALIQUE(I had constructed other multirotor
  helis (bigger) but they have the disadvantage that I need to make CW
  and CCW propellers to correct and control the torque effect. This
  micro heli use standard and cheap motors and props (no CW and CCW
  props) and I correct the torque effect with a twist in the two
  ailerons motors, so I have yaw control).</li>
  <li>
    EXTLINK(http://asl.epfl.ch/research/projects/VtolIndoorFlying/indoorFlying.php)
    et<br />EXTLINK(http://asl.epfl.ch/member.php?SCIPER=149618)<br />

    REMARQUE des &eacute;l&egrave;ves et des professeurs de l'Ecole
    Polytechnique F&eacute;d&eacute;rale de Lausanne (EPFL) ont aussi
    &eacute;tudi&eacute; et r&eacute;alis&eacute; des plateformes volantes.
  </li>
  <li>
    Samir Bouabdallah, Pierpaolo Murrieri, Roland Siegwart,
    ITALIQUE(Design and Control of an Indoor Micro Quadrotor),<br />

    Samir Bouabdallah, ITALIQUE(PID vs. LQ Control Techniques Applied to an
    Indoor Micro Quadrator)<br />


    REMARQUE Ce sont les documents les plus importants (&agrave; notre
    avis) pour la mod&eacute;lisation physique et la stabilisation
    d'un h&eacute;licopt&egrave;re. On peut les
    t&eacute;l&eacute;charger respectivement sur :<br />
    EXTLINK(http://asl.epfl.ch/aslInternalWeb/ASL/publications/uploadedFiles/325.pdf)
    et <br />
    EXTLINK(http://asl.epfl.ch/aslInternalWeb/ASL/publications/uploadedFiles/330.pdf)
  </li>
<li>
    Pierre-Olivier Latour, ITALIQUE(Computer based control system for
    a model helicopter), 2002.<br />
    Andr&eacute; Noth, ITALIQUE(Synth&egrave;se et
    impl&eacute;mentation d'un contr&ocirc;leur pour Micro
    H&eacute;licopt&egrave;re &agrave; 4 rotors), F&eacute;vrier 2004,<br />
    Marc Kunze, ITALIQUE(H&eacute;licopt&egrave;re indoor),
    F&eacute;vrier 2003.<br />

    REMARQUE Documents r&eacute;aliser par des &eacute;l&egrave;ves de
    l'APFL (le meilleur est le premier de la liste). On peut les
    t&eacute;l&eacute;charger respectivement sur :<br />

    EXTLINK(http://asl.epfl.ch/research/projects/VtolIndoorFlying/rapports/rapportLatour.pdf)

    et<br />
    EXTLINK(http://asl.epfl.ch/research/projects/VtolIndoorFlying/rapports/rapportNoth.pdf)
    et<br />
    EXTLINK(http://asl.epfl.ch/research/projects/VtolIndoorFlying/rapports/rapportKunze.pdf)
</li>
  <li>EXTLINK(http://www.rctoys.com/draganflyer5.php) et LINK(TODO X-UFO
    TODO XXXX) <br />
    REMARQUE Deux sites commerciaux o&ugrave; l'ont peut
    acheter son propre draganflyer radio-command&eacute;.
  </li>
  <li>EXTLINK(http://www.microdrones.com/)<br /> REMARQUE S&ucirc;rement les plus belles
    plateforme volantes ... et les plus ch&egrave;res </li>
  <li>EXTLINK(http://ovirc.free.fr/Tribelle.php)<br /> REMARQUE Il est
    possible d'enlever un moteur au quadrirotor on obtient une
    tribelle.</li>
  <li>EXTLINK(http://www.rcgroups.com/forums/showthread.php?t=394375,rcgroups)<br
  /> REMARQUE Les
  soucoupes volantes exhistent et pour preuve ...</li>

</ul>
ENDBOX

SUBSECTION(Logiciels utilis&eacute;s,logo)
BOX
<ul>
  <li>La page principale de Scilab :
  EXTLINK(http://www-rocq.inria.fr/syndex/)<br />

      REMARQUE Scilab est un logiciel libre pour le calcul scientifique, c'est
      un interpr&eacute;teur de langage manipulant des objets
      math&eacute;matiques typ&eacute;s dynamiquement. Il inclut de
      nombreuses fonctions sp&eacute;cialis&eacute;es pour le calcul
      num&eacute;rique organis&eacute;es sous forme de librairies ou
      de boites &agrave; outils qui couvrent des domaines tels que la
      simulation, l'optimisation, et le traitement du signal et du
      contr&ocirc;le.

  </li>
  <li>La page principale de Scicos : EXTLINK(http://www.scicos.org/)<br />

      REMARQUE Une des boites &agrave; outils les plus importantes de Scilab
      est Scicos. C'est un &eacute;diteur graphique de bloc diagrammes
      permettant de mod&eacute;liser et de simuler des syst&egrave;mes
      dynamiques. Il est particuli&egrave;rement utilis&eacute; pour
      mod&eacute;liser des syst&egrave;mes o&ugrave; des composants

  </li>
  <li>La page principale de SynDEx :
  EXTLINK(http://www-rocq.inria.fr/syndex/)<br />

      REMARQUE SynDEx est un logiciel de CAO mettant en oeuvre la
      m&eacute;thodologie Ad&eacute;quation Algorithme Architecture
      (AAA) pour le prototypage rapide et l'optimisation de la mise en
      oeuvre d'applications distribu&eacute;es temps r&eacute;el
      embarqu&eacute;es. A partir d'un algorithme et d'une
      architecture donn&eacute;s sous forme de graphe SynDEx
      g&eacute;n&egrave;re une impl&eacute;mentation distribu&eacute;e
      de l'algorithme en macro-code m4.

  </li>
  <li>La page principale de KTechlab : EXTLINK(http://ktechlab.org/)</li>
  <li>La page principale de Qucs :
    EXTLINK(http://qucs.sourceforge.net/screenshots.html)<br />

      REMARQUE KTechlab et Qucs sont des simulateurs de circuits
      int&eacute;gr&eacute;s.

  </li>
</ul>
ENDBOX

SUBSECTION(Documentation des logiciels,doclog)
BOX
<ul>
  <li>Stephen L. Campbell, Jean-Philippe Chancelier and Ramine
  Nikoukhah, ITALIQUE(Modeling and Simulation in Scilab/Scicos),
  Springer, 2005.<br />

    REMARQUE Ce livre (en Anglais) est un tutoriel sur l'utilisation
    de Scilab et de Scicos et s'attarde sur ses outils de simulation
    et de mod&eacute;lisation.

  </li>
  <li>
    \bibitem{scibook}XXX TODO<br />

    REMARQUE Ce livre (en Fran&ccedil;ais) pourvoie un autre tutoriel
    sur l'utilisation de Scilab et de Scicos en plus simple mais il
    date un peu.
  </li>

  <li>Thierry Grandpierre, Christophe Lavarenne, Yves Sorel,
  ITALIQUE(Mod&egrave;le d'ex&eacute;cutif distribu&eacute; temps
  r&eacute;el SynDEx), INRIA, 1998.<br />

    REMARQUE Ce document s'adresse aux concepteurs d'applications
    distribu&eacute;es temps r&eacute;el embarqu&eacute;es, qui
    d&eacute;sirent optimiser l'implantation de leurs algorithmes de
    commande et de traitement du signal et des images sur des
    architectures multiprocesseurs. Il s'adresse ensuite plus
    particuli&egrave;rement aux utilisateurs du logiciel SynDEx qui
    supporte la m&eacute;thodologie AAA.
  </li>

  <li>Yves Sorel, ITALIQUE(G&eacute;n&eacute;ration automatique
  d'ex&eacute;cutifs distribu&eacute;s temps r&eacute;el
  embarqu&eacute;s optimis&eacute;s pour SoC)<br />

    REMARQUE G&eacute;n&eacute;ration automatique d'ex&eacute;cutifs
    avec le logiciel SynDEx.
  </li>
</ul>
ENDBOX

SUBSECTION(Automatique,auto)
BOX
<ul>
  <li>Pierre Faure et Michel Depeyrot, ITALIQUE(El&eacute;ments
  d'automatique), Dunod, 1974.<br />

    REMARQUE Livre sur l'automatique, complet mais assez dur pour
    d&eacute;buter.
  </li>
  <li>Karl Johan &Aring;str&ouml;m  ITALIQUE(Control System Design)
  ME155A.<br />

    REMARQUE Karl Johan est un personnage important dans l'univers de
    l'automatique. Ses cours sont t&eacute;l&eacute;chargeables sur
    son site EXTLINK(http://www.control.lth.se/~kja/) Ils sont complets et
    tr&egrave;s biens pour d&eacute;buter dans l'automatique.
  </li>
</ul>
ENDBOX

SUBSECTION(Microcontr&ocirc;leur et &eacute;lectronique,elec)
BOX
<ul>
  <li>EXTLINK(http://www.abcelectronique.com/bigonoff/) Le site de
    Bigonoff contenant tous les cours INDISPENSABLES pour
    ma&icirc;triser la programmation assembleur des PIC de Microchip
    (16F84, 16F876, 16F877, 16F87x(A), 18Fxx8). Merci Bigonoff !
  </li>
  <li>EXTLINK(http://thomas.cremel.free.fr/wiki/wikiread.php?LaFaq)<br />
    REMARQUE FAQ cornant les probl&egrave;mes les plus
    fr&eacute;quemment rencontres en robotique/&eacute;lectronique.
  </li>
  <li>
    TODO Le montage electronique pour le port serie,
    le programmeur JDM, le schema prog Microchip, et le trus
    supelect, JPP
  </li>
</ul>
FINALBOX(helico_photos,)
END_BODY


HTML_FOOTER
