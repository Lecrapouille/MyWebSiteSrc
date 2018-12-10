DEF_TITLE(Aide &agrave; l'&eacute;criture de noyaux d'ex&eacute;cutif
pour le logiciel SynDEx)
 HTML_HEADER()

HEADER_TITLE
HEADER_MENU(CV,cv,Stage,X,ASE,ase,BSP,bsp,Dynamique,dyna,SpeedWay,speedway,Ecstasy,ecstasy,SimTaDyn,simtadyn,Forth,myforth,Helico,helico_intro,Home,index)

LEFT_MENU(
XHTML_VALIDATOR<br />
PRINT_MAJ)

BEGIN_BODY
SECTION(Summary of my activities)
SUBSECTION(Accomplished work,trav)

<p>After this work, in SynDEx, it is possible to associate to each
operators, used in the model, a code editor in order to help the
algorithm design. These small text editors are available in windows
with specialized buttons.  The text given by the user is automatically
formatted in the m4 language. The port names are managed by the
editor.  The obscure syntax of m4 is completly avoided by the user. He
only had to write his code in his preferred language (typically C
language).</p>

<p>This tool allows to associate a code with each of the different
phases (initialization phase, loop phase and termination phase) of the
specification of an operator.  The code of each phases can be written
in different language according to the type of the processor on which
it will be executed.</p>


SUBSECTION(Timeline of the internship,time) <p>The first three months of
the work has been organized according to the following plan:</p>

<ul><li>A period of two weeks to understand the AAA methodology (read
documents), to manipulate the SynDEx software using the existing
tutorials.</li> <li>Two periods of two weeks was used to design the
Code Editor with a graphical user interface (GUI). All the desired
functionalities have been achieved.</li> <li>A week was needed to
debug some features in the SynDEx code, make a Mac OSX portage and
implement other functionalities in the GUI.</li> <li>Two weeks to
write a tutorial to help the editor users.</li> <li>During the three
months in parallel to the internship, I studied an introduction to
control design. To practice automatic control I had to learn Scilab
and Scicos softwares. This initiative was encouraged by my internship
supervisor in the aim to develop an example of automatic control to
test the complete SynDEx procedure.</li> <li>Two weeks were needed to
write a second tutorial. It concerns an SynDEx application specified
in Scicos using an automated translator from Scicos into SynDEx. The
application simulated a car following another one and trying to keep
the same distance during the acceleration and deceleration of the
first car.</li> <li>I attend three meetings with an important SynDEx
client MBDA who has already started to use the work done during this
internship.</li> </ul>

SUBSECTION(Client Appreciation,app)
<p>This work was inquired by one of the principal SynDEx client. They
are now testing these new features but they have already enjoyed the
following points: -- the operation inputs/outputs are pointed out by
their names and not by their relative positions anymore -- the GUI
editor expands the source properly, -- the code becomes readable
thanks to indentations and comments, -- as the m4 language is not well
known by developers, ambiguity errors are now avoided, -- all high
level language manipulations are now done in a unique environment.</p>

SUBSECTION(Skills acquired,exp)
<p>This internship allowed me:</p>
<ul>
<li>to discover the realtime problematic,</li>
<li>to progress in the OCaml language thanks the great knowledge of the SynDEx team, </li>
<li>to discover new languages as SynDEx, CamlTk, m4, Scilab, Scicos,</li>
<li>to be introduced to automatic control problems.</li>
</ul>

END_BODY
HTML_FOOTER