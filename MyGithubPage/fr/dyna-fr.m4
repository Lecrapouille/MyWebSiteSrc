TITLE(Tutoriel: Dynamique)
AUTHOR(Quentin Quadrat,Creative Common BY-NC-SA)
KEYWORDS(Dynamique principe de la moindre action)
DESCRIPTION(Dynamique d'une voiture et principe de la moindre action)
SECONDARY_HEAD_MENU(SECONDARY_HEAD_MENU_3D)

LEFT_HEADINGS(HEADING(TRANS_SAME_PROJ,Ecstasy,ecstasy-LANG.html))

BEGIN_BODY
FORKME(MySlides)
SECTION(ICON_READ,Principe de la moindre action,contexte)

<p>Comment simuler simplement la dynamique d'une voiture (pour l'implémenter
   dans un jeu par exemple) ? Je tiens à remercier mon pêre pour me
   l'avoir expliquer. Attention : ceci n'est pas un cours, mais juste une aide :
   une vraie voiture ne fonctionne pas de cette fa&ccedil;on. Pour voir un effet
   de cette dynamique vous pouvez télécharger mon jeu :
   LINK(ecstasy-LANG.html,Ecstasy). Vous trouverez sur cette page :</p>

TABLE(3,PICTURE(tuto/dyna/monocycle.png),
PICTURE(tuto/dyna/moto.png),
PICTURE(tuto/dyna/voiture.png))
CENTER(Cliquer sur les images pour les agrandir.)

LIST(Une brêve introduction au
  LINK(tuto/dyna/dyna_action.pdf,principe de la moindre action)[,] plus un
    petit exemple.,
  LINK(tuto/dyna/dyna_monocycle.pdf,L'étude d'un monocycle)[ : le
    véhicule est modélisé en 2D, par une carcasse
    de masse ponctuelle accrochée à une roue par un
    ressort.],
  LINK(tuto/dyna/dyna_moto.pdf,L'étude d'une moto)[ : le
    véhicule est modélisé en 2D, par une carcasse
    représentée par une barre de masse ponctuelle
    à laquelle sont accrochées deux roues par des
    ressorts. La carcasse n'a pas d'inertie et seul le tangage est
    modélisé.],
  LINK(tuto/dyna/dyna_voit.pdf,L'étuded'une voiture)[ :
    le véhicule est modélisé en 3D,
    par une carcasse représentée par une plaque de masse
    ponctuelle à laquelle sont accrochées quatre roues par
    des ressorts. Par rapport au sujet précédent, on
    étudie en plus le roulis et la carcasse a une inertie.],
  LINK(tuto/dyna/dyna_mvt_horizon.pdf,Le mouvement horizontal de la
    voiture)[ : comment le véhicule tourne lorsqu'on tourne le
    volant.])
END_BODY(simtadyn,Le projet SimTaDyn,,)
