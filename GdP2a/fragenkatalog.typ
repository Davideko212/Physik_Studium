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
    Diese Ausarbeitung der Aufgabenbeispiele zu GdP2a dient in erster Linie der Vorbereitung auf die VO-Prüfung durch stures Auswendiglernen. *Fehler vorbehalten.*

    Verwendete Quellen / Ressourcen: 
    - Vorlesungsfolien von Prof. Eisenmenger
    - Demtröder
    - Persönliche Ausarbeitungen der Übungsaufgaben
    - LEIFIphysik
    - Wikipedia
    - Ausarbeitungen älterer Übungsaufgaben auf higgs.at
    - LLMs wie DeepSeek, ChatGPT 
    - Physik Libre
    - Hegewald & Peschke: Mess- und Prüftechnik
    - TU München (Vorlesungsbetrieb Experimentalphysik)
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
  title: [Grundlagen der Physik 2a],
  subtitle: [Ausarbeitung Aufgabenbeispiele],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

= Elektrostatik

== Coulomb Gesetz; Elektrisches Feld; Elektrisches Potential

=== Herleitung Coulombgesetz aus Gauß'schem Gesetz

Zeigen Sie, dass das Coulombgesetz aus dem Gauß'schem Gesetz hergeleitet werden kann.
+ Beschreiben Sie kurz die Aussagen des Gaußschen Gesetzes der Elektrostatik.
+ Ausgehend vom Coulomb Gesetz zeigen Sie, dass das Gaußsche Gesetz nicht *nur* für eine Kugeloberfläche, sondern auch für jede beliebige geschlossene Oberfläche gilt.

#line(length: 100%)

TODO

=== Elektrisches Feld eines unendlichen, homogenen Stabes

Berechnen Sie das elektrische Feld und das Potential eines unendlich langen, homogen geladenen Stabes mit Radius $R$ und Ladungsdichte $rho$ (Volumendichte):
+ im Innenraum
+ im Außenraum
+ Skizzieren Sie das Feld und das Potential (kurze Begründung)
+ Diskutieren Sie die Symmetriebedingungen für die Feldkonfiguration

#line(length: 100%)

TODO

=== Elektrisches Feld eines Stabes entlang Symmetrieachse

Ein dünner geladener Stab (Linienladungsdichte $lambda$ [$C/m$]) der Länge $2a$ befindet sich symmetrisch zum Koordinatenursprung parallel zu $y$-Achse (Bild). Bestimmen Sie das elektrische Feld entlang der $x$-Achse (Symmetrieachse).

#image("assets/fragenkatalog/elek_feld_stab.svg")

#line(length: 100%)

TODO

=== Thomsonsches Atommodell

Eine negative Ladung $-q$ ist homogen über das Volumen einer Kugel mit Radius $R$ verteilt. In der Mitte der Kugel befindet sich außerdem eine positive punktförmige Ladung $+q$.
+ Berechnen Sie das elektrische Feld und das Potenzial des Systems im gesamten Raum.
+ Berechnen Sie die (Bindungs-)Energie dieses Atoms.

#line(length: 100%)

TODO

=== Kräfteüberlagerung Ladungen

Berechnen Sie die potentielle Energie von drei Ladungen $Q_1$, $Q_2$ und $Q_3$, die sich im Abstand $r_12$, $r_13$, bzw. $r_23$ befinden. Geben sie die Gesamtkraft auf die Ladung $Q_3$ an und zeichnen sie schematisch die Überlagerung der Kräfte zur Gesamtkraft auf die Ladung $Q_3$.

#line(length: 100%)

TODO

=== Ladungsanordnung Kreis

Geben sie das Potential und das elektrische Feld im Mittelpunkt eines
Kreises mit Radius $r$ an, wenn die Ladungen $Q$, $-2Q$, $2Q$ und $Q$ bei den
Koordinaten $vec(r,0)$, $vec(0,r)$, $vec(-r,0)$ und $vec(0,-r)$ angeordnet sind.

TODO: maybe bild einfügen?

#line(length: 100%)

TODO

=== Ladungsanordnung Quadrat

In drei Ecken (A,B,C) eine Quadrats ABCD mit der Seitenlänge $a$ befinden sich drei gleiche Ladungen $+Q$. Finden Sie das elektrische Feld und das Potential im Punkt D sowie in der Mitte des Quadrats.

#line(length: 100%)

TODO

=== Elektrisches Feld eines Rings

Ein Ring aus dünnem Draht mit Radius $R$ ist homogen geladen mit Linienladung $lambda$.
+ Berechnen Sie das elektrische Feld entlang der Symmetrieachse ($z$-Achse).
+ Besprechen Sie explizit die Symmetriebedingungen für das Feld.
+ Berechnen Sie zwei ersten Terme der Taylorreihe in $1/z$ in der Entwicklung $E(1/z)$ für $z>>R$.

#line(length: 100%)

TODO

=== Zwei Ladungen als Dipol

Zwei Ladungen befinden sich auf der ($x,y$) Ebene: Erste Ladung $Q$, Koordinaten $vec(0, a)$; Zweite Ladung $-Q$, Koordinaten $vec(0, -a)$.
+ Berechnen Sie das elektrische Feld entlang der x-Achse:
  + Graphisch (Amplitude und Richtung) 
  + Koordinatenweise
b) Berechnen Sie das Potential dieses Dipols entlang der $y$-Achse in der Näherung $|y|>> a$. (Ersten von Null abweichenden Term in der Reihenentwicklung in $1/y$).

#line(length: 100%)

TODO

=== Zwei Ladungen als Dipol (2)

+ Geben Sie das das elektrische Feld im Koordinatenursprung $vec(0,0)$ für ein System aus zwei Ladungen an: 1. Ladung $2Q$, Koordinaten $vec(R, 2R)$; 2. Ladung $Q$, Koordinaten $vec(-2R, R)$.
+ Berechnen Sie das elektrische Potential entlang der $x$-Achse: $vec(x,0)$.

#line(length: 100%)

TODO

=== Ladungen eines Kondensatorenschaltkreises

Drei Kondensatoren sind angeordnet wie in der Abbildung. Das System ist an einer Batterie der Spannung $U$ angeschlossen. Berechnen Sie die Ladungen an allen Kondensatoren ($q_1$, $q_2$, $q_3$).

#image("assets/fragenkatalog/kondensatorschaltkreis.png")

#line(length: 100%)

TODO

=== Elektrostatisches Feld eines geladenen Rings

Elektrostatisches Feld eines geladenen Rings (Flächenladungsdichte $sigma$; alternativ: Raumladungsdichte $rho$; Linienladungsdichte $lambda$) mit Innenradius $R_1$ und Außenradius $R_2$ in der $x,y$-Ebene konzentrisch um den Ursprung. (genauso Scheibe/Platte/Hohl-/Vollkugel/Stab/Hohl-/Vollzylinder, etc.)

+ Skizzieren Sie die Anordnung.
+ Wie groß ist das elektrische Feld im Ursprung?
+ Berechnen Sie das elektrische Feld in einem Abstand h entlang der $z$-Achse.

#line(length: 100%)

TODO

=== Zylinderkondensator

Gegeben sind zwei koaxiale, unendlich lange, dünnwandige und geladene Metallzylinder der Radien $R_1$ (Ladungsdichte $-3 lambda$ [$C/m$]) und $R_2 > R_1$ (Ladungsdichte $+ lambda$ [$C/m$]). Berechnen Sie und zeichnen Sie das elektrische Feld und Potential dieser Ladungsverteilung im gesamten Raum
+ Innenbereich
+ Zwischenbereich
+ Außenbereich

#image("assets/fragenkatalog/zylinderkondensator.png")

#line(length: 100%)

TODO

=== Kugelkondensator

Gegeben sind zwei konzentrische, dünnwandige und geladene Metallkugeln der Radien $R_1$ (Ladung $-2Q$) und $R_2 > R_1$ (positive Ladung $+Q$).
+ Berechnen Sie und zeichnen Sie das elektrische Feld dieser Ladungsverteilung im gesamten Raum (Innenbereich, Außenbereich, Zwischenbereich).
+ Berechnen Sie und zeichnen Sie das elektrische Potential im gesamten Raum.
+ Berechnen Sie die Kapazität eines solchen Kugelkondensators.

#image("assets/fragenkatalog/kugelkondensator.png")

#line(length: 100%)

TODO

=== Elektrisches Feld einer unendlichen, homogenen Platte

Berechnen Sie (im Innenraum und im Außenraum)

+ das elektrische Feld
+ den Potentialverlauf

  einer unendlich breiten, homogen geladenen Platte mit Dicke $d$ und Ladungsdichte $rho$ (Volumendichte):

+ Skizzieren Sie das Feld und das Potential
+ Diskutieren Sie die Symmetriebedingungen für die Feldkonfiguration

TODO: bild & bessere formatierung

#line(length: 100%)

TODO

=== Elektrisches Feld dreier paralleler Platten

Drei zueinander parallele große dünne Ebenen tragen die Oberflächenladungen wie abgebildet. Berechnen Sie und zeichnen Sie das elektrische Feld und das Potential (Potential nur zeichnen) im gesamten Raum. (zur Herleitung nur Coulomb + Gauss Gesetze erlaubt)

#image("assets/fragenkatalog/drei_platten.png")

#line(length: 100%)

TODO

=== Trivia zu elektrostatischen Feldern

+ Welche Eigenschaften treffen auf elektrostatische Felder zu: konservativ quellenfrei, wirbelfrei? Wann können elektrische Felder ohne Ladungen existieren?
+ Skizzieren Sie elektrischen Feldlinien und Äquipotenziallinien eines Plattenkondensators/elektrischen Dipols/Punktladung/geladenen Stabs, etc.

#line(length: 100%)

TODO

=== Isoliert hängende Metallkugeln

Eine isoliert aufgehängte Metallkugel ($r_1 = R$) wird in Luft solange aufgeladen, bis die Potentialdifferenz zur Umgebung $U_0$ beträgt.

a) Welche Ladung ist dazu notwendig?

Anschließend wird diese Kugel mit einer zweiten ebenfalls isoliert aufgehängten Metallkugel ($r_2 = R/2$) durch einen feinen Draht kurzzeitig verbunden, sodass sich die Ladung auf beide Körper
aufteilen kann.

b) Wie groß sind nun die einzelnen Ladungen und die jeweiligen Potentiale?

#line(length: 100%)

TODO

=== IDFK

Warum ist ein statisches elektrisches Feld nicht in der Lage, ein geladenes Teilchen in einem stabilen
Gleichgewicht zu halten?

#line(length: 100%)

TODO

== Poisson Gleichung; Multipole; Leiter im elektrischen Feld; Energie des elektrischen Feldes

=== Elektrisches Feld und Potential eines Metalls

Beschreiben Sie das elektrische Feld und Potential im Inneren sowie an der Oberfläche eines Metalls.

#line(length: 100%)

TODO

=== Elektrostatisches Potential und Energie eines Kondensators

Beschreiben Sie, wie die Änderung von Ladung/Spannung/Abstand/Dielektrikum den Kondensator und dessen elektrostatisches Potential beeinflusst.

#line(length: 100%)

TODO

=== Hohle Kugel mit Ladung im Mittelpunkt

In den Hohlraum einer leitenden Kugel mit der Ladung $Q$ wird in den Mittelpunkt eine Ladung $-q$ eingebracht. Wie groß ist dann die Ladung an der Oberfläche der äußeren Kugel?

#line(length: 100%)

TODO

=== Faradaykäfig

Zeigen Sie, dass im Hohlraum umgeben von einem Metall (keine Kugel!) das elektrische Feld verschwindet.

#line(length: 100%)

TODO

=== Spitzeneffekt

Zeigen Sie, dass an der Spitze eines geladenen Metallgegenstandes das elektrische Feld sehr groß sein kann.

#line(length: 100%)

TODO

=== Minimierung/Maximierung der pot. Energie zweier Dipole

Ein elektrischer Dipol mit $p_1||z$-Achse befindet sich im Koordinatenursprung. Ausgehend vom Coulomb Gesetz berechnen Sie die potentielle Energie eines zweiten Dipols $p_2$ an, der sich im (großen) Abstand auf der $x$-Achse befindet und beliebig ausgerichtet ist. Bei welcher Ausrichtung der Dipole zueinander ist die potentielle Energie minimal bzw. maximal?

#line(length: 100%)

TODO

=== Elektrisches Potential eines Dipols entlang den Achsen

Ein elektrischer Dipol mit $p||z$-Achse befindet sich im Koordinatenursprung. Ausgehend vom Coulomb Gesetz leiten Sie das elektrische Potenzial dieses Dipols entlang der:
+ $X$-Achse
+ $Y$-Achse
+ $Z$-Achse

#line(length: 100%)

TODO

== Dielektrika; Atomare Grundlagen; Elektrostatik in der Natur und Technik

=== Rest-Widerstand eines Dielektrikums

Ein realer Plattenkondensator (dielektrische Konstante des Dielektrikums $epsilon$) wird bis zu einer Spannung $U$ geladen und von der Batterie getrennt. Nach einer Zeit $tau$ wird am Kondensator nur die Hälfte der Spannung gemessen. Berechnen Sie den spezifischen Rest-Widerstand des Dielektrikums. Mit kurzer Herleitung, Ladungsverluste über die Kontakte vernachlässigen.

#line(length: 100%)

TODO

=== Herleitung Formel Parallel- und Serien-Schaltung von Kondensatoren

Leiten Sie explizit die Formel für die Parallel- und Serien-Schaltung von Kondensatoren her.

#line(length: 100%)

TODO

=== Parallel geschaltete Kondensatoren, einer mit Dielektrikum

Die parallel geschalteten Kondensatoren werden von der Batterie getrennt und in einen Kondensator wird ein Dielektrikum mit $epsilon = 3$ eingebracht (ohne Luftspalt).
+ Bestimmen sie 
  + die Spannung an den beiden Kondensatoren,
  + die Ladung auf jedem Kondensator und 
  + die gespeicherte Gesamtenergie nachdem das Dielektrikum vollständig eingebracht worden ist.
+ Einbringen des Dielektrikums ($epsilon = 3$) in einen der beiden parallel geschalteten Kondensatoren bei angeschlossener Batterie ($10"V"$). Bestimmen sie 
  + die Ladung auf jedem Kondensator, 
  + die Gesamtenergie.
Diskutieren sie die unterschiedlichen Energien von a) und b).

#line(length: 100%)

TODO

=== Beziehungen dielektrische Verschiebungsdichte und elektrisches Feld

+ Aus welchen Beziehungen ergibt sich die Stetigkeit der Tangential- bzw. der Normalkomponenten von $arrow(D)$ und $arrow(E)$? (Schematische Zeichnung)
+ welche Komponenten sind stetig?
+ Leiten sie die Brechung von $arrow(D)$ und $arrow(E)$ an einer Grenzfläche von zwei Materialien mit $epsilon_1 > epsilon_2$ her.

#line(length: 100%)

TODO

=== Zylinderkondensator mit Dielektrikum

+ Berechnen Sie die Kapazität eines Zylinderkondensators mit dem Innenradius $R_1$ und Außenradius $R_2$. Der Kondensator ist vollständig mit einem Dielektrikum ausgefüllt (dielektrische Konstante $epsilon$).
+ Leiten Sie die Formel für die Energie dieses Kondensators als Funktion von $Q$ (Ladung) und $U$ (Spannung)
+ Wie hoch ist der Wert der dielektrischen Konstante eines Metalls aus Sicht der Elektrostatik (Begründung!)?

#line(length: 100%)

TODO

=== Elektrisches Feld eines unendlichen, dielektrischen Stabes

Ein unendlich langer dielektrischer Stab (Dielektrizitätskonstante $epsilon$) mit Radius $R$ trägt eine Oberflächenladung $sigma$ [$"C"/"m"^2$]. Berechnen Sie das elektrische Feld und das Potential:
+ im Innenraum
+ im Außenraum
+ Skizzieren Sie das Feld und das Potential
+ Diskutieren Sie die Symmetriebedingungen für die Feldkonfiguration

#line(length: 100%)

TODO

=== Dielektrische Kugel mit eingebrachter Ladung

In der Mitte einer dielektrischen Kugel (Radius $R_0$, diel. Konstante $epsilon$) befindet sich eine "externe" Ladung $Q$. (d.h. vor dem Einbringen der Ladung war die Kugel ungeladen). Finden Sie und zeichnen Sie das elektrische Feld und das Potential im gesamten Raum.

#line(length: 100%)

TODO


= Strom

== Strom als Ladungstransport; Ohmsches Gesetz; Stromleistung; Kirchhoffsche Regeln; Messverfahren für Ströme

=== Fundamentale Beziehungen der Kirchhoffschen Regeln

Aus welchen fundamentalen Beziehungen ergeben sich die Kirchhoffschen Regeln und wie lauten
diese?

#line(length: 100%)

TODO

=== Kontinuitätsgleichung für die Ladung

Wie lautet die Kontinuitätsgleichung für die Ladung in integraler Form? Leiten Sie daraus die Gleichung in differenzieller Form her.

#line(length: 100%)

TODO

=== Herleitung des Ohm'schen Gesetzes

Berechnen Sie die Leitfähigkeit eines Metalls mit mittlerer freier Weglänge $tau$, Ladungsdichte $n$, und Elektronenmasse $m$.

#line(length: 100%)

TODO

=== Gesamtwiderstand von geometrischen Widerstandsnetzwerken

Bestimmen Sie den Gesamtwiderstand $R$ zwischen A und C (A und B) des Netzwerks aus
Einzelwiderständen $R_0$. (Genauso für Induktivitäten $L_0$ / Kapazitäten $C_0$ oder andere Anordnungen: Isokaeder, Würfel, etc.)

TODO: bilder?

#line(length: 100%)

TODO

=== Kirchhoffsche Regeln

Gegeben ist folgende Widerstandskonfiguration. Erstellen Sie zunächst ein allgemeines Gleichungssystem, das zur Berechnung des effektiven Gesamtwiderstands notwendig ist. Lösen Sie das System unter den Annahmen $I_1 = I_4$ und $I_2 = I_3$. Begründen Sie diese Annahmen.

#image("assets/fragenkatalog/widerstandskonfiguration.png")

#line(length: 100%)

TODO

=== Strommessgerät als Voltmeter

Zeigen Sie, wie man ein Strommessgerät als Voltmeter verwenden kann.

#line(length: 100%)

TODO

=== Spannungsmessgerät als Amperemeter

Zeigen Sie, wie man ein Spannungsmessgerät als Amperemeter verwenden kann.

#line(length: 100%)

TODO

=== Kreuzförmige Widerstandskonfiguration

Gegeben ist eine Kreuzförmige Widerstands- und Spannungskonfiguration wie abgebildet. Berechnen Sie die Spannung in der Mitte des Kreuzes, $U_X$.

#image("assets/fragenkatalog/kreuz_widerstandskonfiguration.png")

#line(length: 100%)

TODO

=== Volt- und Amperemeter in einem Schaltkreis

Das Voltmeter im angegebenen Schaltkreis zeigt den Wert $U = 6"V"$. Welcher Strom wird vom Amperemeter angezeigt? Wiederstände sind in Ohm angegeben. Die Messgeräte können als ideal angenommen werden.

#image("assets/fragenkatalog/voltmeter_amperemeter_schaltkreis.png")

#line(length: 100%)

TODO

=== Offenes Koaxialkabel

Ein offenes Koaxialkabel mit Durchmessern $R_1$/$R_2$ und Länge $L$ wird an die konstante Spannung $U$ angeschlossen. Berechnen Sie:
+ die Menge der statischen Ladung, die sich im Kabel befindet (Dielektrizitätskonstante des Dielektrikum $epsilon$, Formeln aus Formelsammlung sind nicht erlaubt)

  In diesem Experiment wird gleichzeitig ein (extrem geringer) Strom I gemessen. Berechnen Sie:

+ Spezifischen Widerstand des Dielektrikums.

#image("assets/fragenkatalog/koaxialkabel.png")

#line(length: 100%)

TODO


= Statische Magnetfelder

== Magnetfeld, Fluss; Magnetfeld stationäre Ströme

=== ???

Geben Sie die Definition des Vektorpotentials. Wie kann man das Vektorpotential aus gegebenen
Verteilung der Stromdichte berechnen? (Herleitung der Integralgleichung)

#line(length: 100%)

TODO

=== Trivia zu magnetischen Feldern

+ Welche Eigenschaften treffen auf statische Magnetfelder zu: konservativ, quellenfrei, wirbelfrei? Gibt es Monopole?
+ Skizzieren Sie die Magnetfeldlinien einer Spule, eines geraden stromdurchflossenen Leiters, einer Kompassnadel, eines Dipols, einer Stromschleife, etc.

#line(length: 100%)

TODO

=== Magnetfeld im Mittelpunkt einer Spule

Berechnen sie das Feld einer langen Spule mit N gleichmäßig aufgewickelten Windungen im Mittelpunkt der Spule.

#line(length: 100%)

TODO

=== Magnetfeld im Mittelpunkt einer quadratischen Stromschleife

Ausgehend vom Biot-Savartschen Gesetz finden Sie das magnetische Feld in der Mitte einer quadratischen (alternativ: dreieckigen) Stromschleife mit Strom $I$ und Kantenlänge $a$

#image("assets/fragenkatalog/magnetfeld_quad_stromschleife.png")

#line(length: 100%)

TODO

=== Magnetfeld im Mittelpunkt einer quadratischen Stromschleife (2)

Ausgehend vom Biot-Savartschen Gesetz finden Sie das magnetische Feld einer quadratischen Stromschleife mit Strom $I$ und Kantenlänge $a$ entlang der $z$-Achse (Symmetrieachse) für $z >> a$. Nennen Sie 2 physikalische Merkmale dieser Formel.

#line(length: 100%)

TODO

=== Magnetfeld rotierender Koaxialzylinder

Zwei lange koaxiale Aluminiumzylinder sind mit Potentialdifferenz $U$ aufgeladen. Der äußere Zylinder ruht, der innere rotiert um seine Achse konstant mit der Winkelgeschwindigkeit $omega$. Beschreiben Sie das dabei entstehende Magnetfeld und bestimmen Sie seine Größe.

#line(length: 100%)

TODO

=== Induzierte Spannung rotierender Stab im Magnetfeld

Ein Stab der Länge $L$ rotiert mit der Winkelgeschwindigkeit $omega$ um eines seiner Enden in einer Ebene senkrecht zum Magnetfeld $B$. Welche Spannung wird zwischen den Stabenden induziert?

#line(length: 100%)

TODO

=== Magnetfeld einer kreisförmigen Leiterschleife

Berechnen sie das Magnetfeld einer kreisförmigen Leiterschleife mit dem Biot-Savartschen Gesetz im Mittelpunkt der Leiterschleife und entlang einer Symmetrieachse ($z$-Achse); zeichnen sie schematisch den Feldverlauf.

#line(length: 100%)

TODO

=== Magnetfeld zweier zueinander parallelen Stromleitungen

Zwei zueinander parallele unendlich lange Stromleitungen tragen gleichen Strom $I$ (siehe Abb.).
+ Berechnen Sie das magnetische Feld entlang der $x$-Achse $(x,0,0)$ und der $y$-Achse $(0,y,0)$
+ Berechnen Sie den ersten nicht-verschwindenden Term der Taylor-Entwicklung beider Formeln für $1/x,1/y << 1/d$

#line(length: 100%)

TODO

=== Kraft zwischen zwei zueinander parallelen Stromleitungen

Zwei zueinander parallele unendlich lange Stromleitungen tragen gleichen Strom $I$ und befinden sich im Abstand $d$ voneinander. Berechnen Sie explizit die die Kraft zwischen beiden Leitungen.

#line(length: 100%)

TODO

=== Magnetfeld eines langen Zylinders

Ein langer magnetischer Zylinder (Symmetrieachse $z$, Permeabilität $mu$) trägt im Volumen einen Kreisstrom mit der variablen Stromdichte $j(r) = alpha * r$ [$"A"/"m"^2$], siehe Bild. Hier ist $r$ der Abstand von der $z$-Achse. Berechnen Sie das Magnetfeld im gesamten Raum.

#image("assets/fragenkatalog/magnetischer_zylinder.png")

#line(length: 100%)

TODO

=== Magnetfeld einer langen Spule

Eine lange Spule ist homogen zwischen Innenradius $R_i$ und Außenradius $R_a$ mit Draht gewickelt und wird mit konstantem Strom $I$ betrieben. Die Drahtdichte ist $sigma$ [Drähte/m²]. Das Innere des Zylinders ($r < R_i$) ist außerdem mit Material mit magnetischer Permeabilität $mu$ gefüllt. Berechnen Sie das magnetische Feld im gesamten Raum (innen-, zwischen-, außen-).

#image("assets/fragenkatalog/magnetfeld_lange_spule.png")

#line(length: 100%)

TODO

=== Magnetfeld antiparalleler Ströme in Zylinderschalen

Eine idealisierte Induktivität bestehe aus zwei sehr langen, dünnen konzentrischen Zylinderschalen mit den Radien $r_1$ und $r_2$ sowie der Höhe $h$. Der innere Zylinder sei vom Strom $I_1$ durchflossen, der äußere von $I_2$. Beide Ströme seien gleich groß, $I_2$ zeige in die Papierebene, $I_1$ zeige aus der Papierebene (siehe Skizze). Die Ströme sind gleichmäßig über die Zylinderwände verteilt.
+ Berechnen Sie das magnetische Feld dieses Systems. Zeichnen Sie die Richtung des Magnetfeldes in der Skizze ein.
+ Berechnen Sie die Induktivität des Systems

#image("assets/fragenkatalog/magnetfeld_zylinderschalen.png")

#line(length: 100%)

TODO

=== Gegeninduktivität zweier runder Stromschleifen

Berechnen Sie die Gegeninduktivität zweier runder Stromschleifen (Radien: $R_1$ und $R_2$) im großen Abstand ($z >> R_(1,2)$) voneinander. Beide Schleifen sind symmetrisch senkrecht zur z-Achse ausgerichtet

#line(length: 100%)

TODO

=== Induktivität einer Doppelleitung

Berechnen Sie die Induktivität einer Doppelleitung (Abstand $d$, Radien $R$, Ströme antiparallel) unter der Annahme, dass das Magnetfeld im Inneren der Leitungen vernachlässigt werden kann. (Welche Stromverteilung ist dazu notwendig?)

#line(length: 100%)

TODO

== Kraft auf bewegte Ladungen; Elektrodynamik bewegter Körper; Materie im Magnetfeld

=== Lorenzkraft Folgerung

Zeigen Sie, dass die Lorenzkraft auf einen Stromleiter im Magnetfeld aus der Kraft auf eine Einzelladung folgt.

#line(length: 100%)

TODO

=== Drehmoment magnetischer Dipol im Magnetfeld

Welches Drehmoment wirkt auf einen magnetischen Dipol (Stromschleife) im homogenen Magnetfeld? Berechnen Sie daraus die Energie des magnetischen Dipols im Magnetfeld für einfache Geometrie.

#line(length: 100%)

TODO

=== Konstante kin. Energie Teilchen im Magnetfeld

Zeigen Sie, dass die kinetische Energie eines Teilchens im Magnetfeld konstant bleibt. Aus welchen Beziehungen ergibt sich die Stetigkeit bzw. Unstetigkeit der entsprechenden Komponenten von $arrow(B)$ und $arrow(H)$ (bzw. $arrow(D)$ und $arrow(E)$) an Grenzflächen? Leiten sie das Brechungsgesetz für das elektrische und magnetische Feld ab.

#line(length: 100%)

TODO

=== Brechungsgesetz Magnetfeld

Leiten sie das Brechungsgesetz für $arrow(b)$ und $arrow(H)$ an einer Grenzfläche von zwei Materialien mit $mu_1 > mu_2$ ab; welche Komponenten sind stetig und welche sind unstetig.? (Schematische Zeichnung) Wie lauten die analogen Beziehungen in der Elektrostatik?

#line(length: 100%)

TODO

=== Ladung fliegt durch Kondensator

Eine Ladung $q$ fliegt horizontal in einen Kondensator der Breite $L$ und mit vertikalen elektrischen Feld (siehe Bild). Berechnen Sie die Auslenkung dieser Ladung nach beim Austritt aus dem Kondensator.

#image("assets/fragenkatalog/fliegende_ladung_kondensator.png")

#line(length: 100%)

TODO

=== Bewegungsgleichungen geladenes Teilchen

+ Geben Sie die Bewegungsgleichungen eines geladenen Teilchens in gleichzeitigen elektrischen $arrow(E) = (0,0,E_0)$ und magnetischen Feldern $arrow(B) = (0,0,B_0)$ an, wenn das Teilchen die Anfangsgeschwindigkeit $arrow(v) = (v_0, v_0, v_0)$ hat.
+ Berechnen Sie die Geschwindigkeit des Teilchens unter Berücksichtigung der Anfangsbedingungen.

#line(length: 100%)

TODO

=== Bewegungsgleichungen geladenes Teilchen (2)

+ Geben Sie die Bewegungsgleichungen eines geladenen Teilchens im magnetischen Feld $arrow(B) = (0,B,B)$ an, wenn das Teilchen die Anfangsgeschwindigkeit $arrow(v) = (v_0, 0, 0)$ hat.
+ Finden Sie allgemeine Lösung der Bewegungsgleichungen (nur Geschwindigkeiten).
+ Berechnen Sie die Geschwindigkeit des Teilchens unter Berücksichtigung der Anfangsbedingungen.

#line(length: 100%)

TODO

=== Magnetfeld torusförmiger Eisenkern

Ein torusförmiger Eisenkern (magnetische Permeabilität $mu$) mit dem mittleren Durchmesser $d$ und dem Luftspalt $s$ ist gleichmäßig mit $N$ Windungen bewickelt. Wie groß ist das Magnetische Feld im Spalt wenn durch die Windungen ein Strom $I$ fließt? (Detaillierte Berechnung)

#image("assets/fragenkatalog/torus_eisenkern.png")

#line(length: 100%)

TODO

=== Drehende Scheibe im Magnetfeld

Eine Aluminiumscheibe dreht sich im Magnetfeld ($arrow(B)$) mit Winkelgeschwindigkeit $omega$ (siehe Bild). Zwischen Kontakten im Abstand $r_1$ und $r_2$ wird Spannung gemessen. Berechnen Sie diese Spannung.

#image("assets/fragenkatalog/drehende_scheibe_magnetfeld.png")

#line(length: 100%)

TODO

=== Magnetfeld eines langen rotierenden Zylinders

Ein langer homogen geladener Zylinder ($R$ - Radius, $rho$ - Ladungsdichte) dreht sich um seine Achse mit konstanter Winkelgeschwindigkeit $omega$ (siehe Skizze). Berechnen Sie das magnetische Feld entlang der $z$-Achse.

#image("assets/fragenkatalog/magnetischer_drehender_zylinder.png")

#line(length: 100%)

TODO

=== Halleffekt

Beschreiben Sie den Hall Effekt (schematische Zeichnung, Rechnung), welche mikroskopische Größen können mit dem Halleffekt bestimmt werden?

#line(length: 100%)

TODO

=== Funktionsweise Massenspektrometer

Beschreiben Sie die Funktionsweise eines Massenspektrometers (mit Formeln)

#line(length: 100%)

TODO

=== Magnetisierungskurven

Zeichnen Sie die Magnetisierungskurven, M(B), eines Para- Dia- und Ferromagneten sowie eines Supraleiters. Was ist ein Supraleiter?

#line(length: 100%)

TODO

=== Parallele Elektronenstrahlen

Zwei Elektronenstrahlen (lineare Ladungdichte $lambda$ [$"C"/"m"$], Abstand $r$) bewegen sich parallel zueinander mit konstanter Geschwindigkeit $v$.
+ Berechnen Sie elektrische und magnetische Kraft zwischen den Strahlen (pro Längeneinheit).
+ Vergleichen Sie die beiden Kräfte ($F_E/F_M$ = ?)
+ Berechnen Sie die beiden Kräfte im Bezugsystem, das sich mit gleicher Geschwindigkeit $v$ bewegt. Erklären Sie den Unterschied zu Fall a).

#image("assets/fragenkatalog/parallele_elektronenstrahlen.png")

#line(length: 100%)

TODO

=== Parallel bewegende geladene Teilchen

Zwei geladene Teilchen (Ladung $q$, Abstand $d$) bewegen sich parallel zueinander mit konstanter Geschwindigkeit $v$.
+ Berechnen Sie elektrische und magnetische Kraft zwischen den Teilchen.
+ Vergleichen Sie die beiden Kräfte ($F_E/F_M$ = ?)
+ Berechnen Sie die beiden Kräfte im Bezugsystem, dass sich mit gleicher Geschwindigkeit $v$ bewegt. Erklären Sie den Unterschied zu Fall a).

#line(length: 100%)

TODO

=== Magnetfeld planparalleler Ebenen

Zwei planparallele Ebenen befinden sich im Abstand $2d$ voneinander und tragen Stromdichten $+I$ [$"A"/"m"$] und $-I$ [$"A"/"m"$] parallel zu der $y$-Achse (siehe Bild).
+ Begründen Sie die Symmetrie und die Richtung des Magnetfeldes
+ Berechnen Sie das magnetische Feld im gesamten Raum.

#image("assets/fragenkatalog/magnetfeld_ebenen.png")

#line(length: 100%)

TODO


= Zeitlich veränderliche Felder

== Magnetische Induktion; Induktivität; Energie des Magnetfeldes; Verschiebungsstrum; Maxwell Gleichungen

=== Induktion in Drahtschleife

Eine Drahtschleife umschließt eine Fläche, die senkrecht zu den Feldlinien eines Magneten steht (Skizze). Der Bügel bewegt sich reibungsfrei mit der Geschwindigkeit $v$ in die $x$-Richtung. Berechnen Sie:
+ In der Schleife induzierten Strom.
+ Am Widerstand $R$ erzeugte Joulesche Wärme.
+ Auf den Bügel wirkende Kraft.
+ Mechanische Leistung, die angewendet werden muss um den Bügel mit konstanter Geschwindigkeit zu bewegen.
+ Vergleichen Sie und diskutieren Sie die Ergebnisse in b) und d)

#image("assets/fragenkatalog/induktion_drahtschleife.png")

#line(length: 100%)

TODO

=== Rotierende quadratische Spule

In einem homogenen Magnetfeld $B$ befindet sich eine quadratische Spule der Seitenlänge $a$ und der Windungszahl $N$. Die Spule dreht sich mit der Winkelgeschwindigkeit $omega$ um eine Achse, die senkrecht zum Feld steht und parallel zu einer Seite des Quadrates durch die Spulenmitte läuft. Welche Stromstärke fließt in der Spule, die den Widerstand $R$ hat?

#line(length: 100%)

TODO

=== Bewegender Stab im Magnetfeld

Ein metallischer Stab bewegt sich im Magnetfeld (siehe Bild). Berechnen Sie die Spannungsdifferenz an den Enden des Stabes.

#image("assets/fragenkatalog/bewegender_stab_magnetfeld.png")

#line(length: 100%)

TODO

=== Messung Störfeld

Zur Messung eines von der Netzspannung (Frequenz $f = 50 "Hz"$) herrührenden Magnetischen Störfeldes befindet sich eine Spule der Fläche $A$ und Windungszahl $N$ an dem zu untersuchenden Ort. Durch Verändern der Orientierung der Spule im Raum findet man diejenige Richtung heraus, bei der die induzierte Wechselspannung ihren größten gemessenen Effektivwert $U_0$ hat. Welchen Wert hat die Amplitude der magnetischen Feldstärke $H_0$?

#line(length: 100%)

TODO

=== Koaxiale Spulen

Innerhalb einer langen großen Spule der Länge $l$ und Radius $R_1$ mit $N_1$ Windungen befindet sich eine kurze kleine Messspule mit dem Radius $R_2 < R_1$ mit $N_2$ Windungen. Die Achsen der Spulen sind parallel angeordnet. Die Große Spule wird mit einer Spannung $U_0 * exp(i omega t)$ betrieben. Finden Sie die Spannung an der Messspule. (Randeffekte vernachlässigen)

#image("assets/fragenkatalog/koaxiale_spulen.png")

#line(length: 100%)

TODO

=== Koaxiale Spulen (2)

Eine lange Spule der Länge $l$, Radius $R_1$ und mit $N_1$ Windungen befindet sich innerhalb einer kurzen Spule mit dem Radius $R_2$ und mit $N_2$ Windungen. Die Achsen der Spulen sind parallel angeordnet (Bild). Die Spule $R_1$ wird mit linear ansteigender Spannung $U_1 = X * t$ betrieben. Berechnen Sie:
+ Magnetisches Feld in der Spule $R_1$.
+ An der Spule $R_2$ gemessene Spannung

#image("assets/fragenkatalog/koaxiale_spulen_2.png")

#line(length: 100%)

TODO

=== Magnetfeld unendlicher zylindrischer Leiter

Ein unendlicher zylindrischer Leiter der Radius $R$ trägt den Strom der Dichte $j$ [$"A"/"m"^3$] entlang der $z$-Richtung (homogen verteilt, Bild). Der Zylinder ist außerdem magnetisch mit der Suszeptibilität $chi$. Berechnen Sie die magnetischen Felder $B, H$ im gesamten Raum.

#image("assets/fragenkatalog/magnetfeld_unendlicher_zyl.png")

#line(length: 100%)

TODO

=== Herleitung Wellengleichung

Ausgehend von den Maxwell Gleichungen leiten sie die Wellengleichung her in Vakuum / einem Dielektrikum / paramagnetischen Isolator / etc. …. den Skin-Effekt in einem Metall her, etc.

#line(length: 100%)

TODO


= Elektrotechnische Anwendungen; Elektromagnetische Schwingungen

=== Funktionsweise Transformator

Beschreiben Sie die Funktionsweise eines unbelasteten Transformators

#line(length: 100%)

TODO

=== Stromnetz

+ Skizzieren Sie den Transport elektrischer Energie vom Kraftwerk zum Verbraucher mittels Transformatoren und einer Hochspannungsleitung. Kennzeichnen Sie, welche Spule eine größere/kleinere Windungszahl hat.
+ Wieso verwendet man Hochspannung für den Stromtransport über lange Distanzen?
+ Die Durchschlagfestigkeit von Luft beträgt $0.1 "kV"/"mm"$. Wie hoch muss eine $220 "kV"$ Leitung mindestens über dem Boden hängen, damit es nicht zum Überschlag kommt? Wird dieser Mindestabstand größer oder kleiner wenn man Glas verwendet? Hinweis: $epsilon_"Glas" > epsilon_"Luft"$
+ In einem Umspannwerk soll die Spannung von $220 "kV"$ auf haushaltsübliche $220 "V"$ transformiert werden. Wie verhalten sich die Windungszahlen der Spulen?

#line(length: 100%)

TODO

=== Komplexer Widerstand

Leiten Sie die komplexen Widerstände her für:
+ einen ideellen Kondensators
+ eine reelle Spule mit internem Ohm'schen Widerstand

#line(length: 100%)

TODO

=== Leistung bei Phasenverschiebung

Berechnen Sie die Leistung im Wechselstromkreis, wenn Strom und Spannung eine Phasenverschiebung von $phi$ haben (über eine Periode gemittelt).

#line(length: 100%)

TODO

=== Strommessung bei Kondensator

Ein Kondensator $C$ ist an eine AC-Spannung $U(T) = U_0 * exp(i omega t)$ angeschlossen (Bild). Der Strom wird mithilfe des Strommessgeräts A (mit internem Widerstand $R$) gemessen.
+ Welcher Effektivwert wird in diesem Experiment angezeigt?
+ In welchem Frequenzbereich ist dem Wert zu trauen?

#image("assets/fragenkatalog/kondensator_strommessung.png")

#line(length: 100%)

TODO

=== Serienschwingkreis

Ein Serienschwingkreis wird mit Spannung $U(t) = U_1 * e^(i omega t) + U_2 * e^(2 i omega t)$ betrieben. Berechnen Sie den Strom durch den Widerstand. (Einschwingvorgang vernachlässigen)

#image("assets/fragenkatalog/serienschwingkreis.png")

#line(length: 100%)

TODO

=== Wheatstonesche Brücke

Eine Wheatstonesche Brücke wird aus 4 Elementen und einem idealen Voltmeter aufgebaut wie abgebildet. Die Brücke wird mit einer Wechselspannung $U(t) = U_0 * exp(i omega t)$ betrieben.
+ Welche (komplexe) Spannung wird vom Voltmeter angezeigt?
+ Wann ist diese Spannung Null?

#image("assets/fragenkatalog/wheatstone_1.png")

#line(length: 100%)

TODO

=== Wheatstonesche Brücke (2)

Eine Wheatstonesche Brücke wird aus 4 Elementen und einem idealen Voltmeter aufgebaut wie abgebildet. Die Brücke wird mit einer Wechselspannung $U(t) = U_0 * exp(i omega t)$ betrieben.
+ Welche (komplexe) Spannung wird vom Voltmeter angezeigt?
+ Wann ist diese Spannung Null?

#image("assets/fragenkatalog/wheatstone_2.png")

#line(length: 100%)

TODO

=== Schwingungsgleichung Serienresonanzkreis

Stellen sie die Schwingungsgleichung für den gedämpften Serienresonanzkreis mit $C$, $R$ und $L$ auf. Behandlung mit den Lösungen Kriechfall, aperiodischer Grenzfall und gedämpfte Schwingung.

#line(length: 100%)

TODO

=== RLC-Serienschwingkreis

Ein serieller RLC-Serienschwingkreis wird durch die Wechselspannung $U(t) = U_0 * e^(i omega t)$ zu erzwungenen Stromschwingungen $I(t) = I_0 * e^(i(omega t - phi))$ angeregt, wobei $phi$ der Phasenwinkel zwischen $U(t)$ und $I(t)$ ist.
+ Wie lautet die allgemeine Differentialgleichung dieses Systems?
+ Finden Sie die Lösung dieser Gleichung für $U(t) = U_0 * e^(i omega t)$ (Einschwingvorgang vernachlässigen).
+ Bestimmen Sie den Phasenwinkel $phi$, sowie das Amplitudenverhältnis $U_0/I_0$.

#line(length: 100%)

TODO

=== Gemischter RLC-Schwingkreis

Ein gemischter RLC-Schwingkreis wird mit der Wechselspannung $U(t) = U_0 * exp(i omega t)$ angetrieben. Berechnen Sie:
+ die Spannung am Kondensator UC(t)
+ den Strom durch den Widerstand
(Einschaltvorgang vernachlässigen, Berechnung mit komplexen Zahlen).

#image("assets/fragenkatalog/gemischter_schwingkreis.png")

#line(length: 100%)

TODO

=== RLC-Serienschwingkreis (2)

a) Ein RLC Serien-Schwingkreis ist an eine Stromquelle $I(t)$ angeschlossen. Stellen Sie die Differenzialgleichung auf und berechnen Sie die Gesamtspannung $U(t gt.eq 0)$ für folgenden Strom:
$ I(t) = cases(0 "if" t<0, I_0 * t/tau "if" t gt.eq 0) $

#image("assets/fragenkatalog/serienschwingkreis_2.png")

b) Der Schwingkreis wird nun mit der Wechselspannung $U(t) = U_0 * exp(i omega t)$ angetrieben. Berechnen Sie die Amplitude der Spannung an der Spule $U_L (t)$ (Einschaltvorgang vernachlässigen).

#image("assets/fragenkatalog/serienschwingkreis_3.png")

#line(length: 100%)

TODO

=== RL-Schwingkreis

+ Ein RL Schwingkreis ist an eine Stromquelle $I(t)$ (!) angeschlossen. Stellen Sie die Zeitgleichung für die am Widerstand gemessene Spannung $U(t)$ auf.
+ Berechnen Sie den Einschaltvorgang $U(t gt.eq 0)$ für folgenden Strom:
  $ I(t) = cases(0 "if" t<0, I_0 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase der Spannung $U(t)$ für den Wechselstrom $I(t) = I_0 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#line(length: 100%)

TODO

=== RL-Schwingkreis (2)

+ Ein RL Schwingkreis wird eine lange Zeit an eine Stromquelle $I_0$ angeschlossen (Schalter an). Zum Zeitpunkt $t=0$ wird dieser von der Quelle getrennt (Schalter aus).
+ Beschreiben Sie qualitativ die Ströme in R,L direkt vor ($t = 0-$) und direkt nach dem Ausschalten ($t = 0^+$).
+ Stellen Sie die Zeitgleichung für die an der Spule gemessene Spannung $U_L (t>0)$ auf. (Herleitung!)
+ Finden Sie die Lösung dieser Gleichung unter Berücksichtigung der Anfangsbedingungen.
+ Wie hoch ist die am Widerstand erzeugte Gesamtwärme für $t>0$ ?

#image("assets/fragenkatalog/rl_schwingkreis.png")

#line(length: 100%)

TODO

=== LC-Schwingkreis

Ein LC-Kreis wird lange Zeit mit konstanten Strom $I_0$ angetrieben (Schalter an). Bei $t=0$ wird der Strom unterbrochen (Schalter aus).
+ Wie hoch sind die Ströme und Spannungen am Kondensator und der Spule für $t = 0^+$
+ Berechnen Sie die Spannung am Kondensator für $t>0$.

#image("assets/fragenkatalog/lc_schwingkreis.png")

#line(length: 100%)

TODO

=== LC-Schwingkreis (2)

+ Stellen Sie die Differentialgleichung für den LC Serienschwingkreis auf (Verluste können vernachlässigt werden).
+ Berechnen Sie den Strom $I(t>0)$ für folgende Spannung:
$ U(t) = cases(0 "if" t<0, U_0 "if" t gt.eq 0) $

#image("assets/fragenkatalog/lc_schwingkreis_2.png")

#line(length: 100%)

TODO

=== RC-Schwingkreis

+ Stellen Sie die Differentialgleichung für den abgebildeten RC Schwingkreis auf
+ Berechnen Sie den Einschaltvorgang $I(t gt.eq 0)$ für folgende Spannung:
  $ U(t) = cases(0 "if" t<0, U_0 "if" t gt.eq 0) $
+ Berechnen Sie den Strom für die Wechselspannung $U(t) = U_0 * exp(i omega t)$ (Einschaltvorgangvernachlässigen)

#image("assets/fragenkatalog/rc_schwingkreis.png")

#line(length: 100%)

TODO

=== RC-Schwingkreis (2)

+ Ein RC Schwingkreis ist an eine Stromquelle $I(t)$ angeschlossen. Stellen Sie die Zeitgleichung für die am Widerstand gemessene Spannung $U(t)$ auf.
+ Berechnen Sie den Einschaltvorgang $U(t gt.eq 0)$ für folgenden Strom:
  $ I(t) = cases(0 "if" t<0, I_0 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase der Spannung $U(t)$ für den Wechselstrom $I(t)= I_1 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/rc_schwingkreis_2.png")

#line(length: 100%)

TODO

=== RL-Schwingkreis (3)

+ Stellen Sie die Differentialgleichung für den abgebildeten RL Schwingkreis auf:
+ Berechnen Sie den Einschaltvorgang $I(t gt.eq 0)$ für folgende Spannung:
  $ U(t) = cases(0 "if" t<0, U_1 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase des Stroms $I(t)$ für die Wechselspannung $U(t) = U_2 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/rl_schwingkreis_3.png")

#line(length: 100%)

TODO

=== Gemischter RLC-Schwingkreis (2)

Ein gemischter RLC-Schwingkreis (Bild) wird mit der Wechsel-Strom $I(t) = I_0 * exp(i omega t)$ getrieben. Berechnen Sie die Spannung am Widerstand $U_R (t)$. (Einschaltvorgang vernachlässigen, Berechnung mit komplexen Zahlen).

#image("assets/fragenkatalog/gemischter_schwingkreis_2.png")

#line(length: 100%)

TODO

=== Hoch- und Tiefpassfilter

Wie funktionieren Hoch- und Tiefpassfilter? (RC, RL)

#line(length: 100%)

TODO

=== RC-Integrator

Wie funktioniert ein RC-Integrator?

#line(length: 100%)

TODO

=== RC-Differenziator

Wie funktioniert ein RC-Differenziator?

#line(length: 100%)

TODO
