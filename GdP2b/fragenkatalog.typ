// David Koch - 12503857

#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot

#set text(font: "New Computer Modern")
#set text(lang: "de")
#set heading(numbering: "1.1.1")
#set enum(numbering: "a.1)")
#set page(numbering: "1 / 1")
#show math.equation.where(block: false): box
#show heading.where(level: 1): it => { pagebreak(weak: true); it }
#show heading.where(level: 2): set block(above: 3em)
#show image: img => {
  align(center, scale(50%, reflow: true)[#img])
}
#show table: t => {
  align(center, t)
}

#let title-page(title:[], subtitle:[], name:[], email:[], body) = {
  align(center + horizon)[
    #text(size: 32pt, title)\
    #v(1em)
    #text(size: 26pt, subtitle)
    #v(2em)

    #name
    #linebreak()
    #link(email)
    #v(2em)

    #line(length: 100%, stroke: (thickness: 1pt))
    
    #align(left + horizon)[
    Diese Ausarbeitung der Aufgabenbeispiele zu GdP2b dient in erster Linie der Vorbereitung auf die VO-Prüfung durch stures Auswendiglernen. *Fehler vorbehalten.*

    Verwendete Quellen / Ressourcen: 
    - Vorlesungsfolien von Prof. Pimenov
    - Demtröder
    - Persönliche Ausarbeitungen der Übungsaufgaben
    - LEIFIphysik
    - Wikipedia
    - Ausarbeitungen älterer Übungsaufgaben auf higgs.at
    - LLMs wie DeepSeek, ChatGPT, Claude
    - Physik Libre
    - Ein bisschen Fantasie
    ]
    #line(length: 100%, stroke: (thickness: 1pt))
  ]
  
  align(bottom + center)[
    Typst > LaTeX

    Version vom: #datetime.today().display()
  ]
  pagebreak()
  set page(fill: none, margin: auto)
  align(horizon, outline(indent: auto))
  pagebreak()
  body
}

#show: body => title-page(
  title: [Grundlagen der Physik 2b],
  subtitle: [Ausarbeitung Aufgabenbeispiele],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

= Wellen im Vakuum

== Induzierte Spannung einer EM-Welle

Ein Sender strahlt eine elektromagnetische Welle ab, wobei das elektrische Feld im Fernfeld durch $E(t) = (0,E_0,0) sin(omega t - k x)$ gegeben ist.
+ Berechnen Sie und zeichnen Sie die E und B Felder dieser Welle und den Poynting-Vektor in das Koordinatensystem ein.
+ Wie groß ist die in einer Leiterschleife induzierte Spannung U(t), wenn diese einen Querschnitt $A (A << lambda^2)$ hat und 
  + in der xy Ebene bzw. 
  + in der yz Ebene liegt?

#line(length: 100%)

TODO

== Transversale ebene EM-Wellen

Warum sind ebene elektromagnetische Wellen in Vakuum transversal?

#line(length: 100%)

TODO

== Harmonische EM-Wellen

Was sind ebene harmonische EM Wellen?

Ausgehend von Maxwell Gleichungen leiten sie das Verhältnis zwischen E und B für eine ebene harmonische Welle in Vakuum.

#line(length: 100%)

TODO

== IDFK

Zeigen Sie, dass für eine Ebene Welle die Flächen konstanter Phase ebenfalls Ebenen sind.

#line(length: 100%)

TODO

== Herleitung Wellengleichung aus Maxwell-Gleichungen

Ausgehend aus den Maxwell-Gleichungen leiten sie die Wellengleichung im Vakuum her. Zeigen Sie, dass im eindimensionalen Fall alle Funktionen $f(omega t - k x)$ Lösungen der Wellengleichung sind.

Zeigen Sie, dass im dreidimensionalen Fall alle Funktionen $f(arrow(k) arrow(r) - omega t)$ Lösungen der Wellengleichung sind.

#line(length: 100%)

TODO

== Herleitung elektrisches Feld einer Welle aus Maxwell-Gleichungen

Mithilfe der Maxwellschen Gleichung $k times H = -omega D$ berechnen Sie das Elektrische Feld einer Welle mit $B = (0,B,0) exp(i (k z - omega t))$. Die Welle breitet sich im isotropen Medium mit $epsilon, mu = "const"$ aus.

#line(length: 100%)

TODO

== Definition und Herleitung Wellenimpedanz

Wie ist die Wellenimpedanz (a) eines Wellenleiters und (b) des Vakuums definiert? Leiten Sie die Wellenimpedanz des Vakuums für Ebene Wellen her.

#line(length: 100%)

TODO

== Herleitung Impuls aus Energie der EM-Welle

Ausgehend von der Energie der elektromagnetischen Welle leiten Sie den
Ausdruck für den Impuls der Welle her.

#line(length: 100%)

TODO

== Zerlegung zirkular polarisierte Welle

Zeigen Sie, dass eine zirkular polarisierte Welle in zwei linear polarisierte Wellen zerlegt werden kann.

#line(length: 100%)

TODO

== Zerlegung linear polarisierte Welle

Zeigen Sie, dass eine linear polarisierte Welle in zwei zirkular polarisierte Wellen zerlegt werden kann.

#line(length: 100%)

TODO

== Zerlegung EM-Welle

Eine EM Welle im Vakuum hat das elektrische Feld in Form: $E(r,t) = E_0 vec(2, 1+i, 0) e^(i (k z - omega t))$

+ Warum ist die $z$-Komponente dieser Welle Null? (Begründung!)
+ Zerlegen Sie diese Welle in zwei Wellen mit linearer Polarisation.
+ Wie ist die zirkulare Polarisation definiert?
+ Zerlegen Sie diese Welle in zwei Wellen mit zirkularer Polarisation.

#line(length: 100%)

TODO

== Addition EM-Wellen

Zwei Wellen mit $E_1/E_0 = vec(1,i,0) e^(i (k z - omega t))$ sowie $E_2/E_0 = vec(-1,i,0) e^(i (k z - omega t))$ werden addiert.

+ Zeigen Sie, dass die $z$-Komponente beider Wellen Null sein muss.
+ Beschreiben Sie die Polarisation beider Wellen.
+ Finden Sie die Polarisation der resultierenden Welle.

#line(length: 100%)

TODO

== Addition EM-Wellen (2)

Zwei Wellen mit $E_1/E_0 = vec(1,1,0) e^(i (k z - omega t))$ sowie $E_2/E_0 = vec(i,-i,0) e^(i (k z - omega t))$ werden addiert.

+ Zeigen Sie, dass die $z$-Komponente beider Wellen Null sein muss.
+ Beschreiben Sie die Polarisation beider Wellen.
+ Finden Sie die Polarisation der resultierenden Welle.

#line(length: 100%)

TODO

== Reflexionskoeffizient Wellenleiter

Ein Wellenleiter (z.B. aus Doppeldraht) mit Wellenimpedanz Z_0 wird an einem Ende mit Widerstand $R$ abgeschlossen (siehe Bild). Berechnen Sie den Reflexionskoeffizient dieses Leiters für die von links kommende Welle $U = U_0 exp(i (k z - omega t))$

#image("assets/fragenkatalog/wellenleiter_doppeldraht.png")

#line(length: 100%)

TODO

== Gereihte Polarisatoren (Analysator)

Zwei Polarisatoren 1 und 2 werden mit unpolarisiertem Licht mit Intensität $I_0$ vom links bestrahlt und sie sind senkrecht zueinander angeordnet (kein Licht geht durch). Im nächsten Schritt wird ein Polarisator 3 platziert um einen Winkel $theta$ zu Polarisator 1 gedreht (siehe Bild). Die Welle hinter Polarisator 1 kann durch folgenden E-Vektor beschrieben werden:

$ E(r,t) = E_0 vec(1,0,0) e^(i (k z - omega t)) $

Beschreiben Sie die Welle im Angegebenen Koordinatensystem (x,y,z) (Amplitude und Polarisation)
+ direkt hinter Polarisator 3
+ direkt hinter Polarisator 2

#image("assets/fragenkatalog/analysator.png")

#line(length: 100%)

TODO

== Poynting-Vektor EM-Welle

Eine elektromagnetische Welle im Vakuum hat das elektrische Feld in Form: $E(r,t) = E_0 vec(1,1,0) cos(k z - omega t)$.

+ Warum ist die $z$-Komponente dieser Welle Null? (nur Begründung, keine Rechnung)
+ Welche Polarisation hat diese Welle?
+ Geben Sie das magnetische Feld dieser Welle (Nur Antwort, keine Rechnung)
+ Geben Sie die physikalische Bedeutung des Poynting-Vektors.
+ Berechnen Sie den Poynting-Vektor dieser Welle.

#line(length: 100%)

TODO

== Definition Poynting-Vektor

+ Wie ist der Poynting Vektor definiert?
+ Durch einen langen Leiter mit Widerstand $R$ (Länge $L$, Durchmesser $D$) fließt ein konstanter Strom $I$. Berechnen Sie den Poynting Vektor im gesamten Raum außerhalb des Leiters.
+ Vergleichen Sie die durch den Poynting Vektor transportierte Energie mit Wärmeverlusten in diesem Leiter.

#line(length: 100%)

TODO

== IDFK

Zeigen Sie durch Umwandlung der EInheiten, dass der Ausdruck $B^2/mu_0$ der Energie pro Volumeneinheit entspricht. ($B=["T"]$, $mu_0 = ["H"/"m"]$)

#line(length: 100%)

TODO


= Wellen in Materie

== Herleitung Brechungsgesetz aus Fermat'schem Prinzip

Berechnen Sie aus Fermat'schem Prinzip das Brechungsgesetz.

#line(length: 100%)

TODO

== Herleitung Reflexionsgesetz aus Fermat'schem Prinzip

Berechnen Sie aus Fermat'schem Prinzip das Reflexionsgesetz.

#line(length: 100%)

TODO

== Grenzbedingungen Felder einfallende EM-Welle

Eine elektromagnetische Welle mit E-Feld parallel (oder senkrecht) zu der Einfallebene fällt auf eine Grenze Luft/Materie unter schrägem Winkel. Schreiben Sie die vier Grenzbedingungen für die Felder der transmittierten und reflektierenden Welle als Funktion des Einfallswinkels.

#line(length: 100%)

TODO

== Bewegungsgleichung geladenes Teilchen

+ Stellen Sie die Bewegungsgleichung eines geladenen Teilchens mit Masse $m$ und Ladung $e$ im elektrischen Feld $E_x (t) = E_0 exp(-i omega t)$ auf.
+ Berechnen Sie daraus die frequenzabhängige Polarisation $P = n e x$ ($n$ - Ladungsdichte) und dielektrische Permittivität $epsilon(omega)$.

#line(length: 100%)

TODO

== Grenzbedingungen Felder einfallende EM-Welle (2)

Beschreiben Sie die Vektoren der $E$ und $H$-Felder beim Einfall einer ebenen Welle auf eine Grenze zwischen zwei Materialien ($s$-Polarisation, $p$-Polarisation). Schreiben Sie die 4 Grenzbedingungen in diesem Fall. (die Richtungen der $k$-Vektoren können als bekannt angenommen werden).

#line(length: 100%)

TODO

== Fresnel Gleichungen

Eine elektromagnetische Welle mit $E$-Feld senkrecht zu der Einfallsebene $x y$ (Bezeichnung: $dot.big$ - $E$ aus der Ebene; $times.o$ - $E$ in die Ebene) fällt aus der Luft auf die Grenze eines Materials mit $mu=1$ und $epsilon>1$. Der Einfallswinkel $alpha$, sowie Brechungswinkel $beta$ dürfen als bekannt angenommen werden (nach Snelliusschem Gesetz).

+ Zeichnen Sie elektrische und magnetische Felder sowie die k-Vektoren für alle drei Wellen.
+ Schreiben Sie komponentenweise die 4 Grenzbedingungen für diesen Fall.
+ Formen Sie die Gleichungen so um, dass sie nur die elektrischen Felder und die Winkel enthalten.
+ Wie viele Gleichungen aus 4 sind voneinander unabhängig und warum?

* INSERT BILD HERE *

#line(length: 100%)

TODO

== Grenzbedingungen und Reflexionskoeffizient perfektes Metall

Eine ebene elektromagnetische Welle fällt auf eine ebene Metalloberfläche unter Winkel $alpha$ und mit $E$-Feld in der Einfallsebene. Schreiben Sie die Grenzbedingungen im Falle eines perfekten Metalls. Berechnen Sie daraus den Reflexionskoeffizient.

#line(length: 100%)

TODO

== Wellengleichung EM-Welle in Plasma

Leiten Sie - ausgehend von den Maxwellgleichungen $arrow(k) times arrow(E) = omega arrow(B)$ und $arrow(k) times arrow(H) = J$ die Wellengleichung für elektromagnetische Wellen in Plasma. Dieses Medium ist charakterisiert durch $mu$=1, und $sigma$=const (reeller Wert). Bestimmen Sie daraus auch den Brechungsindex $n$ als Funktion der Frequenz.

#line(length: 100%)

TODO

== Gruppengeschwindigkeit in dispergierenden Medien

Ein Medium besitzt eine lineare Dispersionsrelation $n = n_0 + alpha omega$, mit konstanten $n_0$, $alpha$ und mit $alpha omega << n_0$. Berechnen Sie den ersten Korrekturterm zu der Gruppengeschwindigkeit im Vergleich zu den Fall $alpha = 0$.

#line(length: 100%)

TODO

== Dispersion transparente Kristalle

Warum haben transparente Kristalle im optischen Bereich eine positive Dispersion, $(partial n)/(partial omega) > 0$?

Zeigen Sie, dass diese Dispersion als $n = n_0 + A omega^2$ dargestellt werden kann.

#line(length: 100%)

TODO

== Reflexion Metall bei senkrechtem Einfall

Bestimmen Sie die Reflexion eines guten Metalls beim senkrechten Einfall bei niedrigen Frequenzen. Annahmen (Hagen-Rubens Limit): $sigma^* = sigma_1 + i sigma_2 approx sigma_0$ ($sigma_0$ - statische Leitfähigkeit), $epsilon_1 << sigma_0/(epsilon_0 omega)$ (d.h. dielektrischer Beitrag kann vernachlässigt werden).

#line(length: 100%)

TODO

== Reflexion Metall bei senkrechtem Einfall (2)

Bestimmen Sie die Reflexion (ersten von Null abweichenden Term in "1-R") eines guten Metalls beim senkrechten Einfall bei niedrigen Frequenzen. Annahmen (Hagen-Rubens Limit): $sigma^* = sigma_1 + i sigma_2 approx sigma_0$ ($sigma_0$ - statische Leitfähigkeit), $epsilon_1 << sigma_0/(epsilon_0 omega)$ (d.h. dielektrischer Beitrag kann vernachlässigt werden).

#line(length: 100%)

TODO

== Polarisierungs-Plättchen

Was versteht man unter einem $lambda/4$ bzw. $lambda/2$ Plättchen und welche Wirkung haben sie für einfallendendes linear polarisiertes Licht?

#line(length: 100%)

TODO

== Polarisierungs-Plättchen (2)

Ein linear polarisierter Strahl fällt auf ein $lambda/4$ Plättchen. Der Winkel zwischen die Polarisation und der optischen Achse des Plättchens ist $alpha$.
+ Berechnen Sie die Polarisation beim Austritt als Funktion von $alpha$.
+ Besprechen Sie zusätzlich 4 Spezialfälle: $alpha = 0°, 90°, +45°, -45°$.

#line(length: 100%)

TODO

== Berechnung Brechungsindizes und Polarisationen

Berechnen Sie die beiden Brechungsindizes ($n = (k c)/omega$) sowie beide Polarisationen ($E_x/E_y$) für elektromagnetische Welle entlang $z$-Richtung (d.h. $k=(0,0,k)$) im Material mit folgendem dielektrischen Tensor:
$ hat(epsilon) = mat(1.5, 0.5, 0; 0.5, 1.5, 0; 0, 0, 1) $

Die $z$-Komponente des $E$-Vektors darf als $0$ angenommen werden (warum?). Die Wellengleichung in diesem Fall lautet: $k^2 arrow(E) = omega^2/c^2 hat(epsilon) arrow(E)$.

#line(length: 100%)

TODO

== Schätzung Fensterglas

Ein modernes Fensterglas besteht aus 3 Glasscheiben mit Brechungsindex $n approx 1.52$. Schätzen Sie mit Genauigkeit von $5°$ bei welchem Einfall die Intensität des unpolarisierten Sonnenlichts in Transmission um $50%$ geschwächt wird.

#line(length: 100%)

TODO

== Brechungsindex im optischen Bereich

Zeigen Sie, dass für den Brechungsindex im optischen Bereich $(dif n)/(dif lambda) < 0$ gilt und dass die Absorption vernachlässigt werden kann.

(Annahme: $n$ wird durch einen Lorentz Oszillator beschrieben mit $omega < omega_0$)

#line(length: 100%)

TODO

== Brechungsindex und Absorption transparenter Kristall

Unter der Annahme, dass die optischen Eigenschaften eines transparenten Kristalls durch mehrere Lorentz-Oszillatoren im UV Bereich bestimmt sind, finden Sie:
+ Brechungsindex $Re(n^*)$ bei Frequenz $omega$, sowie die erste frequenzabhängige Korrektur dazu (= Dispersion)
+ Ersten frequenzabhängigen Term der Absorption $Im(n^*)$
Hinweise: $omega << omega_(0,i)$; $Delta epsilon_i << 1$; Parameter der Oszillatoren: $omega_(0,i)$; $Delta epsilon_i$; $g << omega_(0,i)$.

#line(length: 100%)

TODO

== Optisch aktive Substanz

Eine optisch aktive Substanz wird mit linear polarisiertem Licht bestrahlt. Am Lichtausgang ist der Phasenunterschied zwischen zwei zirkular polarisierten Wellen gleich $phi$ (Brechungsindizes sind nicht gleich). Zeigen Sie, dass die einfallende linear polarisierte Welle am Ausgang um einen Winkel $phi/2$ gedreht ist.

Anm.: Zwei Lösungen der Wellengleichung in einem optisch aktiven Material besteht aus links-, bzw. rechtdrehenden zirkularen Polarisation. $E_1 = (1,i,0)$, $E_2 = (1,-i,0)$, $k$-Vektor ist entlang der $Z$-Achse.

#line(length: 100%)

TODO


= Geometrische Optik

== Abbildungsgleichung sphärischer Spiegel

Leiten Sie die Abbildungsgleichung eines sphärischen Spiegels ab und konstruieren Sie das Bild eines Gegenstandes in verschiedenen Lagen zum Brennpunkt.

#line(length: 100%)

TODO

== Vergrößerungsfaktor Linse

Berechnen Sie den Vergrößerungsfaktor einer Linse für ein Objekt:
+ Senkrecht zu optischer Achse (lateral)
+ Parallel zu optischer Achse (axial)

#line(length: 100%)

TODO

== Verschiebung gebrochener Strahl durch Glasplatte

Zeigen Sie, dass nach Durchgang einer planparallelen Glasplatte (Dicke $d$, Brechungsindex $n$, Einfallswinkel $alpha$) der gebrochene Strahl bleibt parallel zu dem einfallenden Strahl, und nur seitlich verschoben ist. Berechnen Sie diese Verschiebung ($p$).

#image("assets/fragenkatalog/verschiebung_glasplatte.png")

#line(length: 100%)

TODO

== Ablenkwinkel Prisma

Bestimmen Sie den Ablenkwinkel eines Prismas mit Prismenwinkel $gamma$ und Brechungsindex $n$:
+ im symmetrischen Fall (Antrittswinkel gleich Austrittswinkel)
+ beim senkrechten Einfall
+ Bestimmen Sie die Näherung beider Formeln für $gamma << 1$.

#line(length: 100%)

TODO

== Tiefe eines Fisches unter Wasser

Ein Fisch unter Wasser (Brechungsindex $n$) und in der Tiefe $H_0$ wird von einem Beobachter in der niedrigeren Tiefe $H_1$ und unter einem Winkel $alpha$ (zum Lot) gesehen. Bestimmen Sie das Verhältnis $H_T/H_0$:
+ im Allgemeinfall (nicht so einfach wegen Astigmatismus)
+ für $alpha approx 0$ (senkrechter Sicht, Bestimmung durch geometrische Konstruktion)

#line(length: 100%)

TODO

== Wellenfront plankonvexe Linse

Eine flache Wellenfront fällt auf eine dünne plankonvexe Linse mit Oberflächen-Radius $R$, Durchmesser $D$, und Brechungsindex $n$. Berechnen sie die Krümmung der Wellenfront direkt nach der Linse. Welcher Brennweite entspricht diese Krümmung?

#line(length: 100%)

TODO

== Sphärische Aberration eines sphärischen Spiegels

Berechnen Sie die typische Sphärische Aberration eines sphärischen Spiegels mit Krümmungsradius $R$ und Durchmesser $D$.

#line(length: 100%)

TODO

== Brennweite plankonvexe Linse

Berechnen Sie in paraxialer Näherung die Brennweite einer dünnen plankonvexen Linse (eine Seite flach) mit Krümmungsradius $R$ und Brechungsindex $n$:
+ Über das Snelliussche Gesetz.
+ Über die Bedingung, dass alle Strahlen den gleichen Weg haben müssen. (= Satz der geometrischen Optik).

#line(length: 100%)

TODO

== Fokussierte gekuppte paralelle Strahlenbündel

Zeigen Sie, dass auch gekuppte parallele Strahlenbündel auf die Fokalebene fokussiert werden.

#line(length: 100%)

TODO

== Unabhängigkeit des Schnelliuschen Gesetzes

In einer ausgedehnten Grenzschicht zwischen zwei flachen Medien mit Brechungsindex $n_1=1$ und $n_2=n$ verläuft der Brechungsindex kontinuierlich zwischen $1$ und $n$. Zeigen Sie, dass in diesem Fall trotzdem das Schnelliusche Gesetz $sin(alpha_2)/sin(alpha_1) = n$ gilt, unabhängig von der Dicke der Schicht und vom exakten Verlauf der Brechung an der Grenze.

#line(length: 100%)

TODO

== Konvexspiegel + Parabel

+ Berechnen Sie in paraxialer Näherung die Brennweite eines Konvexspiegels mit Krümmungsradius $R$. (Bild)
+ Zeigen Sie, dass ein Parabolspiegel keine Sphärische Aberration hat (d.h. alle Strahlen parallel zur optischen Achse auf einen Punkt fokussiert). (Formel einer Parabel z.B. $y = x^2/(2a)$)
+ Berechnen Sie in paraxialer Näherung die Brennweite sowie die sphärische Aberration eines Konvexspiegels mit Krümmungsradius $R$. (Bild)

#image("assets/fragenkatalog/konvexspiegel_parabel.png")

#line(length: 100%)

TODO

== Matrixmethode geometrische Optik

Matrixmethode der geometrischen Optik:
+ Herleitung von Translationsmatrix
+ Herleitung von Brechungsmatrix

#line(length: 100%)

TODO


= Interferenz und Beugung

== Bedingung räumliche Kohärenzlänge

Leiten Sie die Bedingung für die räumliche Kohärenzlänge einer Quelle mit endlicher Ausdehnung her: \
(räumliche) Kohärenzlänge $d = 2 lambda L/x$, \
wobei: L-Abstand Quelle-Beobachtungspunkt; $x$-Ausdehnung der Quelle; $lambda$-Wellenlänge.

#line(length: 100%)

TODO

== Interferenz planparallele Platte

Interferenz an einer planparallelen Platte unter beliebigen Winkel.

#line(length: 100%)

TODO

== Antireflexschicht

Berechnung einer Antireflexschicht beim normalen Einfall.

#line(length: 100%)

TODO

== Newtonsche Ringe

Newtonsche Ringe. Beginnen diese mit hellem oder dunklem Fleck in der Mitte?

#line(length: 100%)

TODO

== Michelson Interferometer

Ein Michelson Interferometer wird gleichzeitig mit zwei Wellen gleicher Amplitude und verschiedener Frequenzen $omega_1$ und $omega_2$ beleuchtet.
+ Berechnen Sie die Intensität am Detektor als Funktion der Wegdifferenz
+ Berechnen Sie die Fourier-transformierte dieser Intensität und diskutieren Sie das Ergebnis

#line(length: 100%)

TODO

== Beugung

Beugung an
+ einem Spalt,
+ einem (dünnen) Doppelspalt,
+ einem (dünnen) unendlichem Gitter.

#line(length: 100%)

TODO

== Zwei Spalten dicht beieinander

An einem Schirm befinden sich zwei Spalten der Breite $a$ dicht beieinander und symmetrisch um Koordinatenursprung (Bild). Berechnen Sie in Fraunhofer Näherung das Beugungsbild von Spalt 1 sowie Spalt 2. Zeigen Sie, dass die Summe von beiden Feldern eine Beugungsbild von einem Spalt der Breite $2a$ entspricht.

* BILD NOT HERE?! *

#line(length: 100%)

TODO

== Fabry-Pérot Interferometer

Zwei Spiegel eines Fabry-Pérot Interferometers mit Abstand $d$ haben (Intensitäten-)Transmission $T$ und Reflexion $R$. Berechnen Sie die Transmission (Reflexion) dieses Geräts für die Wellenlänge $lambda$ beim normalen Einfall.

* BILD SELBER MACHEN *

#line(length: 100%)

TODO

== Fraunhofer Beugung

Vier gleiche dünne Schlitze werden mit monochromatischem Licht beleuchtet und sind symmetrisch angeordnet (siehe Bild)
+ Berechnen Sie, und
+ zeichnen Sie das Beugungsbild dieses Systems in Fraunhofer Näherung. Diskutieren Sie das Ergebnis.
+ Bestimmen Sie wann das Beugungsbild lediglich ein zentrales Maximum hat.

#image("assets/fragenkatalog/fraunhofer_beugung_1.png")

#line(length: 100%)

TODO

== Fraunhofer Beugung (2)

Drei dünne Schlitze werden mit monochromatischem Licht beleuchtet und sind symmetrisch angeordnet.
+ Berechnen Sie das Beugungsbild dieses Systems in Fraunhofer Näherung
+ Bestimmen Sie wann das Beugungsbild lediglich ein zentrales Maximum hat.

#image("assets/fragenkatalog/fraunhofer_beugung_2.png")

#line(length: 100%)

TODO

== Fresnel Beugung

+ Berechnen Sie den Radius von Fresnelsche Zonen (Beleuchtung mit planparallelen Licht, Bild)
+ Zeigen Sie, dass die Flächen von Fresnelschen Zonen für kleine Beugungswinkel fast gleich sind.

#image("assets/fragenkatalog/fresnel_beugung.png")

#line(length: 100%)

TODO

== Fresnelsche Zonen kreisförmige Scheibe

Eine kreisförmige Scheibe mir Radius $R$ wird senkrecht mit monochromatischem Licht der Wellenlänge $lambda$ beleuchtet. Es wird die Intensität im Punkt $P$ im Abstand $L$ hinter der Scheibe untersucht. Berechnen Sie die Radien $r_n$ der Fresnelschen Zonen in dieser Geometrie.

#line(length: 100%)

TODO

== Fresnel Beugung (2)

Eine runde Öffnung wird mit monochromatischem Licht der Wellenlänge 𝝀 beleuchtet
durch
+ eine Punktquelle im Abstand $2 F$
+ einen planparallelen Strahl

Es wird die Intensität hinter der Öffnung im Punkt $P$ im Abstand $2 F$ gemessen: \
Berechnen Sie den Radius $r_n$ der $n$-ten Fresnelschen Zone im Fall a) und b) unter der Annahme, dass $r_n << F$.

c) für die erste Fresnelsche Zone Öffnung ($n = 1$) im Fall b) schätzen Sie den Radius $d$ des hellen Spots um $P$ ab.

#line(length: 100%)

TODO

== Fresnel Beugung (3)

Eine Runde Scheibe mit Radius $R$ wird mit planparallelen Licht der Wellenlänge $lambda$ beleuchtet. Es wird die Amplitude des elektrischen Feldes im Punkt $P$ im Abstand $F$ hinter der Scheibe analysiert. (Bild)
+ Berechnen Sie die Breite des ersten Ringes, aus welchem alle sekundären Strahlen (nach Huygensschen Prinzip) sich im $P$ verstärken. (= erste Fresnelsche Zone)
+ Berechnen Sie die Näherung der Antwort in (a) für $lambda << R,F$ (ersten nicht-verschwindenden Term).
+ Durch die Dominanz der ersten Fresnelschen Zone entsteht im optischen Schatten der Scheibe im Punkt $P$ ein heller Fleck (Poisson-Fleck). Schätzen Sie den Radius dieses hellen Bereiches (nur die erste Zone berücksichtigen).

#image("assets/fragenkatalog/fresnel_beugung_3.png")

#line(length: 100%)

TODO

== Gitter mit unendlich vielen dünnen Schlitzen

+ Berechnen Sie das Fraunhofersche Beugungsbild eines Gitters mit unendlich vielen dünnen Schlitzen mit Periode $d$, beleuchtet mit monochromatischem Licht der Wellenlänge $lambda$.
+ Bestimmen Sie die Bedingung, wann das Beugungsbild lediglich das zentrale Maximum besitzt.

#line(length: 100%)

TODO

== Phasenantenne

Ein eindimensionaler Bildschirm liegt in der $x$-Achse und hat eine Öffnung bei $abs(x) < a$. In dieser Öffnung befindet sich eine transparente Phasenplatte mit einer Phasenkorrektur von $exp(i * (2*pi)/lambda * a * x), a << 1$.
+ Berechnen Sie das Beugungsbild in Fraunhofer-Näherung und für kleine Winkel ($sin(phi) tilde.equiv phi$).
+ Interpretieren Sie das Ergebnis physikalisch.

#line(length: 100%)

TODO

== Beugungsbild

Eine unendliche eindimensionale Fotoplatte wird mit monochromatischem Licht so beleuchtet, dass knapp dahinter (also im Nahfeld) eine Amplitudenverteilung $E(x) ~ 1 + cos((2 * pi)/lambda * a * x), a << 1$ entsteht. Hinter der Platte befindet sich außerdem eine Linse mit der Brennweite $F$. Berechnen Sie das Bild im Fokus dieser Linse.

#line(length: 100%)

TODO


= Optische Geräte

== Funktionsweise Fernrohr

Funktionsweise eines Fernrohres. Herleitung der Formeln für die Vergrößerung und Lichtstärke.

#line(length: 100%)

TODO

== Lupe

Eine Lupe mit der Brennweite $f < s$ befindet sich im Abstand $s = 25 "cm"$ vom Auge. Im Abstand $a$ hinter der Lupe befindet sich ein Objekt der Größe $h$.
+ Berechnen Sie die (Winkel-)Vergrößerung des Objektes als Funktion von $a$ ($0 < a < f$).
+ Besprechen Sie die Grenzfälle $a approx 0$ und $a approx f$. \
Annahme: Das Auge kann Objekte zwischen $s$ und $infinity$ scharf sehen.

#line(length: 100%)

TODO

== Vergrößerung durch Linse

+ Ein Gegenstand befindet sich im Abstand $s_0 = 25 "cm"$ vom Auge. Dazwischen wird eine Linse mit Brennweite $f < s_0$ im Abstand $b$ vom Gegenstand platziert. Finden Sie die Vergrößerung durch die Linse in folgenden Grenzfällen:
  1) $b approx 0$
  2) $b approx f$
+ Bei welchen Abständen $0 < b < s_0$ ist die Platzierung der Linse sinnvoll und warum?
Annahme: Das Auge kann Objekte zwischen $s_0$ und $infinity$ scharf sehen.

#line(length: 100%)

TODO
