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
    - LLMs wie DeepSeek, ChatGPT, Claude
    - Physik Libre
    - TU München (Vorlesungsbetrieb Experimentalphysik)
    - ElectricalAcademia
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

TODO (Seite 11 & 12 Demtröder 2)

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

a) Fall $r > R$:
$ Q/epsilon_0 = integral.cont_A arrow(E) dif arrow(A) = integral_0^(2pi) integral_0^pi underbrace(E(r) * arrow(e)_r, arrow(E)) * underbrace(r^2 * sin(theta) dif theta dif phi * arrow(e)_r, dif arrow(A)) $
$ = E(r) * r^2 * integral_0^(2pi) integral_0^pi sin(theta) dif theta dif phi = E(r) * r^2 * integral_0^(2pi) -cos(pi) - (-cos(0)) dif phi $
$ = E(r) * r^2 * integral_0^(2pi) (1+1) dif phi = E(r) * r^2 * 2 * 2pi arrow.double E_a (r) = Q/(epsilon_0 * r^2 * 4pi) $

Fall $r lt.eq R$:
$ E_i (r) = (Q_i (r))/(epsilon_0 * r^2 * 4pi) $

$Q_i (r)$ anhand der Ladungsdichte ermitteln:
$ rho = Q/V = Q/(4/3 * pi * R^3) arrow.double Q_i (r) = rho * V(r) = Q/(4/3 * pi * R^3) * 4/3 * pi * r^3 = Q/R^3 * r^3 $
$ arrow.double E_i (r) = (Q/R^3 * r^3)/(epsilon_0 * r^2 * 4pi) = Q/(epsilon_0 * 4pi * R^3) * r $

Für die negative (Punkt-)Ladung in der Mitte gilt:
$ E_n (r) = 1/(4pi * epsilon_0) * Q/r^2 $

Mit dem Superpositionsprinzip lassen sich die elektrischen Felder nun für jeweils innerhalb und außerhalb der Kugel zusammenaddieren/berechnen:

Innerhalb der Kugel bzw. des Atoms:
$ E(r) = E_i (r) + E_n (r) = Q/(epsilon_0 * 4pi * R^3) * r - 1/(4pi * epsilon_0) * Q/r^2 = Q/(epsilon_0 * 4pi) * (r/R^3 - 1/r^2) $

Außerhalb der Kugel bzw. des Atoms:
$ E(r) = E_a (r) + E_n (r) = Q/(epsilon_0 * r^2 * 4pi) - 1/(4pi * epsilon_0) * Q/r^2 = 0 $

Um das Potential zu berechnen, muss lediglich über das elektrische Feld integriert werden:
$ Phi(r) = - integral E(r) dif r = - integral_R^r q/(epsilon_0 * 4pi) * (r/R^3 - 1/r^2) dif r $
$ = q/(epsilon_0 * 4pi) * (-1/r - r^2/2 * R^(-3) - (-1/R - R^2/2 * R^3)) = q/(epsilon_0 * 4pi) * (-1/r - r^2/(2*R^3) + 1/R + R/2) $
$ = q/(epsilon_0 * 4pi) * (3/(2*R) - r^2/(2*R^3) - 1/r) $

Das Potential ausserhalb der Kugel ist = 0, weil $- integral 0 dif r = 0$

b) TODO

=== Kräfteüberlagerung Ladungen

Berechnen Sie die potentielle Energie von drei Ladungen $Q_1$, $Q_2$ und $Q_3$, die sich im Abstand $r_12$, $r_13$, bzw. $r_23$ befinden. Geben sie die Gesamtkraft auf die Ladung $Q_3$ an und zeichnen sie schematisch die Überlagerung der Kräfte zur Gesamtkraft auf die Ladung $Q_3$.

#line(length: 100%)

TODO

=== Ladungsanordnung Kreis

Geben sie das Potential und das elektrische Feld im Mittelpunkt eines
Kreises mit Radius $r$ an, wenn die Ladungen $Q$, $-2Q$, $2Q$ und $Q$ bei den
Koordinaten $vec(r,0)$, $vec(0,r)$, $vec(-r,0)$ und $vec(0,-r)$ angeordnet sind.

#image("assets/fragenkatalog/ladungsanordnung_kreis.svg")

#line(length: 100%)

Durch das Superpositionsprinzip lässt sich das elektrische Feld im Punkt $arrow(r)$ mit folgender Formel darstellen:
$ arrow(E)(arrow(r)) = Q_1/(4pi * epsilon_0) * (arrow(r) - arrow(r)_1)/(|arrow(r) - arrow(r)_1|^3) + Q_2/(4pi * epsilon_0) * (arrow(r) - arrow(r)_2)/(|arrow(r) - arrow(r)_2|^3) + ... $

Einsetzen für $arrow(r) = vec(0,0)$ und die gegebenen Ladungen:
$ arrow(E)(vec(0,0)) = 1/(4pi * epsilon_0) * (Q * vec(-r, 0)/(sqrt((-r)^2))^3 - 2Q * vec(0, -r)/(sqrt((-r)^2))^3 + 2Q * vec(r, 0)/(sqrt(r^2))^3 + Q * vec(0, r)/(sqrt(r^2))^3) $
$ = Q/(4pi * epsilon_0) * 1/r^3 * (vec(-r,0) - 2*vec(0,-r) + 2*vec(r,0) + vec(0,r)) $
$ = Q/(4pi * epsilon_0 * r^3) * vec(r, 3r) = Q/(4pi * epsilon_0 * r^2) * vec(1, 3) $

Das Potential lässt sich sehr einfach mit folgender Formel errechnen, da alle Ladungen den gleichen Abstand $r$ zum Mittelpunkt haben:
$ phi = 1/(4pi * epsilon_0) * sum Q_i/r arrow.double phi = 1/(4pi * epsilon_0 * r) * (Q - 2Q + 2Q + Q) = (2Q)/(4pi * epsilon_0 * r) $

=== Ladungsanordnung Quadrat

In drei Ecken (A,B,C) eine Quadrats ABCD mit der Seitenlänge $a$ befinden sich drei gleiche Ladungen $+Q$. Finden Sie das elektrische Feld und das Potential im Punkt D sowie in der Mitte des Quadrats.

#image("assets/fragenkatalog/ladungsanordnung_quadrat.svg")

#line(length: 100%)

Durch das Superpositionsprinzip lässt sich das elektrische Feld im Punkt $arrow(r)$ mit folgender Formel darstellen:
$ arrow(E)(arrow(r)) = Q_1/(4pi * epsilon_0) * (arrow(r) - arrow(r)_1)/(|arrow(r) - arrow(r)_1|^3) + Q_2/(4pi * epsilon_0) * (arrow(r) - arrow(r)_2)/(|arrow(r) - arrow(r)_2|^3) + ... $

Zuerst berechne ich das elektrische Feld für die Ecke D im Punkt $arrow(r)_D = vec(-a/2, a/2)$:
$ arrow(E)(vec(-a/2, a/2)) = 1/(4pi * epsilon_0) * (Q * (vec(0, a))/(sqrt(a^2))^3 + Q * (vec(-a, a))/(sqrt((-a)^2 + a^2))^3 + Q * (vec(-a, 0))/(sqrt((-a)^2))^3) $
$ = Q/(4pi * epsilon_0) * (vec(-a, a)/a^3 + vec(-a, a)/(sqrt(2) * a)^3) = Q/(4pi * epsilon_0) * (vec(-1, 1)/a^2 + vec(-1, 1)/(sqrt(8) * a^2)) $
$ = Q/(4pi * epsilon_0) * 1/a^2 * (vec(-1, 1) + vec(-1/sqrt(8), 1/sqrt(8))) = Q/(4pi * epsilon_0 * a^2) * vec(-1 - 1/sqrt(8), 1 + 1/sqrt(8)) $

Das Potential im Punkt $arrow(r)_D = vec(-a/2, a/2)$ lässt sich sehr einfach mit folgender Formel errechnen:
$ phi = 1/(4pi * epsilon_0) * sum Q_i/r arrow.double phi = 1/(4pi * epsilon_0) * (Q/a + Q/(sqrt(2) * a) + Q/a) = Q/(4pi * epsilon_0 * a) * (1 + 1/sqrt(2) + 1) $
$ = Q/(4pi * epsilon_0 * a) * (2*sqrt(2) + 1)/sqrt(2) $

Das gleiche kann man für den Mittelpunkt $arrow(r)_M = vec(0,0)$ wiederholen:
$ arrow(E)(vec(0,0)) = Q/(4pi * epsilon_0) * ((vec(a/2, a/2))/(sqrt((a/2)^2 + (a/2)^2))^3 + (vec(-a/2, a/2))/(sqrt((-a/2)^2 + (a/2)^2))^3 + (vec(-a/2, -a/2))/(sqrt((a/2)^2 + (a/2)^2))^3) $
$ = Q/(4pi * epsilon_0) * 1/((a/sqrt(2))^3) * vec(-a/2, a/2) = Q/(4pi * epsilon_0) * sqrt(8)/a^3 * vec(-a/2, a/2) = (sqrt(8) * Q)/(4pi * epsilon_0 * a^2) * vec(-1/2, 1/2) $

Auch für das Potential:
$ phi = 1/(4pi * epsilon_0) * sum Q_i/r arrow.double phi = 1/(4pi * epsilon_0) * (Q/(a/sqrt(2)) + Q/(a/sqrt(2)) + Q/(a/sqrt(2))) = Q/(4pi * epsilon_0 * a) * 3sqrt(2) $

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

a) Durch das Superpositionsprinzip lässt sich das elektrische Feld im Punkt $arrow(r)$ mit folgender Formel darstellen:
$ arrow(E)(arrow(r)) = Q_1/(4pi * epsilon_0) * (arrow(r) - arrow(r)_1)/(|arrow(r) - arrow(r)_1|^3) + Q_2/(4pi * epsilon_0) * (arrow(r) - arrow(r)_2)/(|arrow(r) - arrow(r)_2|^3) + ... $

Einfach die Werte aus der Angabe einsetzen:
$ arrow(E)(vec(0,0)) = (2Q)/(4pi * epsilon_0) * (vec(-R,-2R))/(sqrt((-R)^2 + (-2R)^2))^3 + Q/(4pi * epsilon_0) * (vec(2R,-R))/(sqrt((2R)^2 + (-R)^2))^3 $
$ = Q/(4pi * epsilon_0) * 1/((sqrt(5*R^2))^3) * (2*vec(-R,-2R) + vec(2R,-R)) = Q/(4pi * epsilon_0) * 1/(sqrt(125) * R^3) * vec(0, -5R) $
$ = Q/(4pi * epsilon_0 * sqrt(125) * R^2) * vec(0, -5) $

b) Für das Potential entlang der $x$-Achse kann entweder das elektrische Feld entlang der $x$-Achse ($arrow(E)(vec(x,0))$) integriert werden, oder es kann folgende einfach Formel genutzt werden (weil das Potential ein Skalar ist und Superpositionsprinzip):
$ phi(vec(x,0)) = 1/(4pi * epsilon_0) * sum Q_i/r_i arrow.double phi = 1/(4pi * epsilon_0) * ((2Q)/(sqrt((x-R)^2 + (-2R)^2)) + Q/(sqrt((x+2R)^2 + (-R)^2))) = $
$ Q/(4pi * epsilon_0) * (2/(sqrt(x^2 - 2R + 5R^2)) + 1/(sqrt(x^2 + 4R + 5R^2))) $

=== Ladungen eines Kondensatorenschaltkreises

Drei Kondensatoren sind angeordnet wie in der Abbildung. Das System ist an einer Batterie der Spannung $U$ angeschlossen. Berechnen Sie die Ladungen an allen Kondensatoren ($q_1$, $q_2$, $q_3$).

#image("assets/fragenkatalog/kondensatorschaltkreis.png")

#line(length: 100%)

Für die Ladung an einem Kondensator gilt $Q = C * U$. Da in Serie geschaltene Kondensator die gleiche Ladung haben, sollte die Parallelschaltung zusammengefasst werden:
$ C_23 = C_2 + C_3 = 2C + C = 3C $

Für die gesamte Schaltung gilt somit:
$ C_g = (C_1 * C_23)/(C_1 + C_23) = (3C * 3C)/(3C + 3C) = 3/2 C $
$ q_g = C_g * U = 3/2C * U arrow.double q_1 = 3/2C * U $

Um die Ladungen in den Zweigen des parallelen Abschnittes zu berechnen, muss der Spannungsabfall beim ersten Kondensator beachtet werden:
$ U_1 = q_1/C_1 = (3/2C * U)/(3C) = U/2 arrow.double U_"par" = U - U_1 = U/2 $
$ q_2 = C_2 * U_"par" = 2C * U/2 = C * U $
$ q_3 = C_3 * U_"par" = C * U/2 = 1/2C * U $

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

a) Im Innenbereich ($r < R_1$) ist $E(r) = 0$, da bei der Anwendung vom Satz von Gaus in der Gausfläche keine Ladung eingeschlossen ist:
$ integral.cont arrow(E) dif arrow(A) = E * 2pi * r * l = Q_"in"/epsilon_0 arrow.double E(r) = Q/(2pi * r * l * epsilon_0) = 0/(2pi * R_1 * l * epsilon_0) = 0 $

Bei der Gausfläche ist nur die Mantelfläche des Zylinders ($2pi * r * l$) gefragt, weil das elektrische Feld des Zylinderkondensators senkrecht zu den Grund- und Deckflächen der zylindrischen Gaußfläche stehen und somit keinen Beitrag leisten.

Das Potential ist im Innenbereich konstant und entspricht dem Potential entlang der Oberfläche des kleineren Zylinders. Das Potential lässt sich über die Integration des elektrischen Feldes von $r$ bis $R_2$ bekommen:
$ Phi(r) = - integral_(R_2)^(r) E(r) dif r = - integral_(R_2)^(r) Q/(2pi * r * l * epsilon_0) dif r = -Q/(2pi * l * epsilon_0) integral_(R_2)^(r) 1/r dif r $
$ -Q/(2pi * l * epsilon_0) * (ln(r) - ln(R_2)) = -Q/(2pi * l * epsilon_0) * ln(r/R_2) $

Das Potential an der Oberfläche des kleineren Zylinders ist $Phi(R_1)$:
$ Phi(R_1) = (3*q)/(2pi * l * epsilon_0) * ln(R_1/R_2) $

b) Im Zwischenbereich ($R_1 < r < R_2$) lässt sich das Feld (erneut) mit dem Satz von Gauß berechnen:
$ integral.cont arrow(E) dif arrow(A) = Q_"in"/epsilon_0 arrow.double E(r) = Q/(2pi * r * l * epsilon_0) $

Da bei dieser Aufgabe eine Ladungsdichte [$C/m$] statt nur einer Ladung gegeben ist, muss dementsprechend gerechnet werden:
$ Q = lambda/l arrow.double E(r) = (-3*q)/(2pi * r * epsilon_0) $

Für das Potential die gleiche Formel wie bei a) verwenden:
$ Phi(r) = (3*q)/(2pi * l * epsilon_0) * ln(r/R_2) $

c) Im Außenbereich ($r > R_2$) rechnet man identisch wie im Zwischenbereich, nur, dass die Gesamtladung pro Länge nun $-3lambda + lambda = -2lambda$ beträgt:
$ E(r) = (-2*q)/(2pi * r * epsilon_0) $

Für das Potential die gleiche Formel wie bei a) verwenden, jedoch diesmal mit einer anderen Ladung:
$ Phi(r) = (2*q)/(2pi * l * epsilon_0) * ln(r/R_2) = q/(pi * l * epsilon_0) * ln(r/R_2) $

(Für die Zeichnung: Das Feld zeigt von außerhalb des größeren Zylinders radial nach innen zum kleineren Zylinder, wird stärker im Zwischenbereich, innerhalb des kleineren Zylinders ist nichts)

=== Kugelkondensator

Gegeben sind zwei konzentrische, dünnwandige und geladene Metallkugeln der Radien $R_1$ (Ladung $-2Q$) und $R_2 > R_1$ (positive Ladung $+Q$).
+ Berechnen Sie und zeichnen Sie das elektrische Feld dieser Ladungsverteilung im gesamten Raum (Innenbereich, Außenbereich, Zwischenbereich).
+ Berechnen Sie und zeichnen Sie das elektrische Potential im gesamten Raum.
+ Berechnen Sie die Kapazität eines solchen Kugelkondensators.

#image("assets/fragenkatalog/kugelkondensator.png")

#line(length: 100%)

a) Im Innenbereich ($r < R_1$) ist $E(r) = 0$, da im Inneren einer Kugelschale das elektrische Feld null ist.

Im Außenbereich ($r > R_2$) addieren sich die Ladungen der zwei Kugelschalen und es scheint so, als wäre es eine Punktladung im Mittelpunkt der Kugeln:
$ Q_"in" = -2Q + Q = -Q arrow.double E(r) = -Q/(4 pi*epsilon_0 * r^2) $

Im Zwischenbereich ($R_1 < r < R_2$) lässt sich das Feld mit dem Satz von Gauß berechnen:
$ integral.cont arrow(E) dif arrow(A) = Q_"in"/epsilon_0 arrow.double E(r) * 4 pi r^2 = (-2Q)/epsilon_0 arrow.double E(r) = -Q/(2 pi * epsilon_0 * r^2) $

(Für die Zeichnung: Das Feld zeigt von außerhalb der größeren Kugel radial nach innen zur kleineren Kugel, wird stärker im Zwischenbereich, innerhalb der kleineren Kugel ist nichts)

b) Im Außenbereich ($r > R_2$):
$ Phi(r) = -integral^r_infinity E(R) dif R = -integral^r_infinity -Q/(4 pi*epsilon_0 * R^2) dif R = Q/(4 pi*epsilon_0) * integral^r_infinity (dif R)/R^2 $
$ Phi(r) = Q/(4 pi*epsilon_0) * lim(-1/r - 1/infinity) = -Q/(4 pi*epsilon_0*r) $

Im Zwischenbereich ($R_1 < r < R_2$) setzt sich das Gesamtpotential aus dem Potential der äußeren Kugelschale und dem Potential zwischen der inneren und der äußeren Kugelschale zusammen:
$ Phi(r) = underbrace(Phi(R_2), "Außenbereich") - integral^r_(R_2) E(R) dif R = -Q/(4 pi*epsilon_0*R_2) - integral^r_(R_2) -Q/(2 pi * epsilon_0 * R^2) dif R $
$ = -Q/(4 pi*epsilon_0*R_2) + Q/(2 pi * epsilon_0) * integral^r_(R_2) (dif R)/R^2 = -Q/(4 pi*epsilon_0*R_2) + Q/(2 pi * epsilon_0) * (-1/r + 1/R_2) $
$ = -Q/(4 pi*epsilon_0*R_2) - Q/(2 pi * epsilon_0 * r) + Q/(2 pi * epsilon_0 * R_2) = Q/(2 pi * epsilon_0) * (1/(2 * R_2) - 1/r) $

Im Innenbereich ($r < R_1$) ist das Potential konstant. Es entspricht dem Potential an der Oberfläche der inneren Kugel:
$ Phi(R_1) = Q/(2 pi * epsilon_0) * (1/(2 * R_2) - 1/R_1) $

c) Die Kapazität lässt sich mit der Formel $Q = C*U$ ermitteln. Dafür muss aber zuerst $U$ bzw. $Delta Phi$ zwischen den Kugelschalen ermittelt werden.
$ U = Delta Phi = Phi(R_1) - Phi(R_2) = Q/(2 pi * epsilon_0) * (1/(2 * R_2) - 1/R_1) - Q/(2 pi * epsilon_0) * (1/(2 * R_2) - 1/R_2) $
$ = Q/(2 pi * epsilon_0) * (1/(2 * R_2) - 1/R_1 - 1/(2 * R_2) + 1/R_2) = Q/(2 pi * epsilon_0) * (R_1 - 2 * R_2 - R_1 + 2 * R_1)/(2*R_1*R_2) $
$ = Q/(2 pi * epsilon_0) * (R_1 - R_2)/(R_1 * R_2) $

Für $U$ einsetzen:
$ C = Q/U = (|Q_"ein"|)/(|Delta Phi|) = (2Q)/(Q/(2 pi * epsilon_0) * (R_1 - R_2)/(R_1 * R_2)) = 4pi * epsilon_0 * (R_1 * R_2)/(R_2 - R_1) $

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

+ Welche Eigenschaften treffen auf elektrostatische Felder zu: konservativ, quellenfrei, wirbelfrei? Wann können elektrische Felder ohne Ladungen existieren?
+ Skizzieren Sie elektrischen Feldlinien und Äquipotenziallinien eines Plattenkondensators/elektrischen Dipols/Punktladung/geladenen Stabs, etc.

#line(length: 100%)

a) Konservativ trifft zu, da $arrow(E) = - nabla phi$ gilt und somit das Wegintegral unabhängig vom Weg ist ($integral.cont arrow(E) dif arrow(s) = 0$), was die Chrakteristik eines konservativen Kraftfelds ist.

Wirbelfrei trifft ebenfalls zu, da $nabla times arrow(E) = 0$ und somit keine Rotation im Feld existiert, d.h. die Feldlinien haben keine geschlossenen Schleifen.

Wenn Ladungen im Feld vorhanden sind, ist es nicht quellenfrei ($nabla * arrow(E) = lambda/epsilon_0$). Ladungen sind Quellen/Senken des Feldes. Es kann jedoch sein, dass lokal keine Ladung vorhanden ist (z.B. bei Betrachtung des Feldes zwischen zwei Kondensatorplatten) und somit das Feld lokal quellenfrei ist ($nabla * arrow(E) = 0$).

b)

#image("assets/fragenkatalog/linien_kondensator.png")
#image("assets/fragenkatalog/linien_dipol.png")
#image("assets/fragenkatalog/linien_punktladung.png")

=== Isoliert hängende Metallkugeln

Eine isoliert aufgehängte Metallkugel ($r_1 = R$) wird in Luft solange aufgeladen, bis die Potentialdifferenz zur Umgebung $U_0$ beträgt.

a) Welche Ladung ist dazu notwendig?

Anschließend wird diese Kugel mit einer zweiten ebenfalls isoliert aufgehängten Metallkugel ($r_2 = R/2$) durch einen feinen Draht kurzzeitig verbunden, sodass sich die Ladung auf beide Körper
aufteilen kann.

b) Wie groß sind nun die einzelnen Ladungen und die jeweiligen Potentiale?

#line(length: 100%)

TODO

=== IDFK

Warum ist ein statisches elektrisches Feld nicht in der Lage, ein geladenes Teilchen in einem stabilen Gleichgewicht zu halten?

#line(length: 100%)

TODO

== Poisson Gleichung; Multipole; Leiter im elektrischen Feld; Energie des elektrischen Feldes

=== Elektrisches Feld und Potential eines Metalls

Beschreiben Sie das elektrische Feld und Potential im Inneren sowie an der Oberfläche eines Metalls.

#line(length: 100%)

Im Inneren eines Metall ist das elektrische Feld gleich null und das Potential somit konstant. Je nach der Form der Oberfläche ist das elektrische Feld dort unterschiedlich (z.B. Spitzeneffekt), es steht aber immer senkrecht zur Oberfläche. Das Potential ist entlang der Oberfläche wie im Inneren überall gleich.

Wichtige Bemerkung: Es werden im Metall so viele Ladungen verschoben, dass im statischen Fall das Innere eines Leiters/Metalls feldfrei ist ($E_"ges" = E_"ext" + E_"int" = 0$). D.h. innerhalb des Metalls existiert quasi ein entgegengesetztes Feld, welches das äußere destruktiv ergänzt.

#image("assets/fragenkatalog/feld_metall.png")

=== Elektrostatisches Potential und Energie eines Kondensators

Beschreiben Sie, wie die Änderung von Ladung/Spannung/Abstand/Dielektrikum den Kondensator und dessen elektrostatisches Potential beeinflusst.

#line(length: 100%)

- Ladung: Wird die Ladung erhöht, steigt bei konstanter Kapazität die Spannung gemäß $U = Q/C$ (und vice versa).
- Spannung: Wird die Spannung erhöht, steigt bei konstanter Kapazität die Ladung gemäß $U = Q/C$ (und vice versa).
- Abstand: Die Kapazität eines Plattenkondensators nimmt wegen $C = epsilon_0 * A/d$ beim Auseinanderziehen der Platten ab. Wenn die Ladung unverändert ist, muss wegen $U = Q/C$ die Spannung steigen. Wenn die Spannung fix bleibt, dann verringert sich die Ladung.
- Dielektrikum: Durch Einbringen eines Dielektrikums steigt die Kapazität, d.h. es ist gemäß $C = epsilon_0 * epsilon_r * A/D$ mehr Ladung speicherbar. Wenn die Ladung unverändert ist, muss somit die Spannung sinken. Wenn die Spannung fix bleibt, dann steigt die Ladung.

=== Hohle Kugel mit Ladung im Mittelpunkt

In den Hohlraum einer leitenden Kugel mit der Ladung $Q$ wird in den Mittelpunkt eine Ladung $-q$ eingebracht. Wie groß ist dann die Ladung an der Oberfläche der äußeren Kugel?

#line(length: 100%)

$Q - q$, weil
#image("assets/fragenkatalog/influenz_kugel.svg")

=== Faradaykäfig

Zeigen Sie, dass im Hohlraum umgeben von einem Metall (keine Kugel!) das elektrische Feld verschwindet.

#line(length: 100%)

1) Geladener Leiter mit Hohlraum: Ladungen sitzen nur auf der Oberfläche

2) Gauß'scher Satz für Fläche $S$: $integral arrow(E) dif arrow(A) = q/epsilon_0 = 0$, weil $E$ im Inneren eines Leiters $0$ ist, d.h. Summe der eingeschlossenen Ladung muss null sein

3) Annahme: an der Innenseite befinden sich gleich viel positive wie negative Ladungen, d.h. $sum q = 0$, siehe oben

4) Zwischen den positiven und negativen Ladungen gibt es ein elektrisches Feld

5) Elektrostatisches Feld ist ein konservatives Kraftfeld: $integral arrow(E) dif arrow(s) = 0$ längs eines geschlossenen Weges

6) Schleife G: $integral arrow(E)_"Leiter" dif arrow(s) + integral arrow(E)_"Hohlraum" dif arrow(s) eq.not 0$, weil $E_"Leiter" = 0$ und $E_"Hohlraum" eq.not 0$

Lösung: Ladungen auf Außenseite so lange verschoben bis sie sich vollständig kompensieren, daher kann es im Hohlraum eines Leiters kein elektrisches Feld geben

#image("assets/fragenkatalog/faraday_pustogow_masterpiece.png")
(Diese wunderschöne Zeichnung kommt direkt von Pustogows Folien)

=== Spitzeneffekt

Zeigen Sie, dass an der Spitze eines geladenen Metallgegenstandes das elektrische Feld sehr groß sein kann.

#line(length: 100%)

Eine Spitze kann als eine Halbkugel mit einem kleinen Radius beschrieben werden. Für das elektrische Feld (außerhalb) einer geladenen Kugel gilt:
$ E(r) = 1/(4*pi*epsilon_0) * Q/r^2 $

Die elektrische Feldstärke ist somit proportional zu $1/r^2$, was heißt, dass eine Halbkugel mit einem kleineren Radius (spitzere Spitze) eine quadratisch zunehmende Feldstärke hat.
$ E prop 1/r^2 arrow.long_(r arrow 0) infinity  $

=== Minimierung/Maximierung der pot. Energie zweier Dipole

Ein elektrischer Dipol mit $p_1 parallel z$-Achse befindet sich im Koordinatenursprung. Ausgehend vom Coulomb Gesetz berechnen Sie die potentielle Energie eines zweiten Dipols $p_2$ an, der sich im (großen) Abstand auf der $x$-Achse befindet und beliebig ausgerichtet ist. Bei welcher Ausrichtung der Dipole zueinander ist die potentielle Energie minimal bzw. maximal?

#line(length: 100%)

TODO

=== Elektrisches Potential eines Dipols entlang den Achsen

Ein elektrischer Dipol mit $p parallel z$-Achse befindet sich im Koordinatenursprung. Ausgehend vom Coulomb Gesetz leiten Sie das elektrische Potenzial dieses Dipols entlang der:
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

- Knotenregel: Im Knoten werden keine Ladungen erzeugt oder vernichtet bzw. werden nicht gespeichert (Ladungserhaltung), d.h. die Summe aller zufließenden Ströme ist gleich der Summe aller abfließenden Ströme an einem Knoten ($sum I_"ein" = sum I_"aus"$ bzw. $sum I = 0$ wenn zufließend pos. und abfließend neg. ist)
- Maschenregel: Längs einer geschlossenen Masche ist die Summe aller Quellspannungen plus der Summe aller Spannungsabfälle gleich Null ($sum U = 0$), weil das elektrische Feld ein konservatives Kraftfeld ist und somit die Arbeit längs eines geschlossenen Weges null ist.

=== Kontinuitätsgleichung für die Ladung

Wie lautet die Kontinuitätsgleichung für die Ladung in integraler Form? Leiten Sie daraus die Gleichung in differenzieller Form her.

#line(length: 100%)

Kontinuitätsgleichung in integraler Form:
$ integral.cont_(partial V) arrow(j) dif arrow(A) = - dif/(dif t) integral_V rho dif V $

Die zeitliche Änderung der Gesamtladung im Volumen ist gleich dem negativen Stromfluss durch die Oberfläche (und vice versa).

Herleitung der differentiellen Form (mit dem Satz von Gauss):
$ integral.cont_(partial V) arrow(j) dif arrow(A) = integral_V (nabla * arrow(j)) dif V arrow.double integral_V (nabla * arrow(j)) dif V = - dif/(dif t) integral_V rho dif V = - integral_V (partial rho)/(partial t) dif V $
$ integral_V ((partial rho)/(partial t) + nabla * arrow(j)) dif V = 0 $

Da dies für jedes beliebige Volumen gelten muss, folgt:
$ (partial rho)/(partial t) + nabla * arrow(j) = 0 $

Wenn Ladung lokal abnimmt ($(partial rho)/(partial t) < 0$), dann fließt Strom heraus ($nabla * arrow(j) > 0$)

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

Die Annahmen gelten, weil wenn eine Schaltung unter Spiegelung identisch bleibt, sind die entsprechenden Ströme gleich.

Das Gleichungssystem kann mithilfe der Kirchhoffschen Regeln erstellt werden:
$
"Knotenregel" arrow.double cases(
  I_1 = I_2 + I_5,
  I_4 = I_3 + I_5,
)\
"Maschenregel" arrow.double cases(
  U_1 + U_5 - U_3 = 0,
  U_2 - U_4 - U_5 = 0
)
$

Mit dem Ohm'schen Gesetz $U = R * I$ lässt sich das Gleichungssystem der Spannungen auf Ströme umformen:
$
  I_1 + I_5 = 2 * I_3\
  2 * I_2 = I_4 + I_5
$

Mit der Erkenntniss, dass $I_5 = I_1 - I_2$ und der Annahme, dass $I_2 = I_3$:
$ I_1 + I_1 - I_2 = 2 * I_2 arrow.double 2 * I_1 = 3 * I_2 arrow.double I_1 = 3/2 * I_2 $

Angenommen, dass an der linken Seite der Widerstandskonfiguration eine Spannung $U$ angebracht wird und die rechte Seite eine Spannung von $0$, kann die Spannung entlang des "oberen" Pfades errechnet werden:
$ U = I_1 * R + I_2 * 2R = 3/2 * I_2 * R + I_2 * 2R = 7/2 * I_2 * R $

Für den effektiven Gesamtwiderstand fehlt noch der Gesamtstrom, welcher beim Knoten ganz links anfällt:
$ I = I_1 + I_3 = I_1 + I_2 = 3/2 * I_2 + I_2 = 5/2 * I_2 $
$ arrow.double R_g = U/I = (7/2 * I_2 * R)/(5/2 * I_2) = 7/5 R $

=== Strommessgerät als Voltmeter <strommessgeraet_als_voltmeter>

Zeigen Sie, wie man ein Strommessgerät als Voltmeter verwenden kann.

#line(length: 100%)

Da eine Spannung $U$ einen Strom $I = U/R$ durch einen Widerstand R bewirkt, können Strommessgeräte auch zur Spannungsmessung verwendet werden. Dazu wird ein Widerstand $R$ in Reihe mit dem Messwerk geschaltet (siehe Abb.), so dass der Strom $I = U/(R + R_i)$ im Messbereich der Anzeigeskala liegt. Als Voltmeter verwendete Strommessgeräte sollten einen möglichst großen Gesamtwiderstand $(R + R_i)$ haben, damit der Messstrom den Gesamtstrom im Schaltkreis möglichst wenig beeinflusst.

#image("assets/fragenkatalog/strommessgeraet_als_voltmeter.png")

=== Spannungsmessgerät als Amperemeter

Zeigen Sie, wie man ein Spannungsmessgerät als Amperemeter verwenden kann.

#line(length: 100%)

Wie bei @strommessgeraet_als_voltmeter, nur dass der Widerstand $R$ in Reihe mit dem Verbraucher, nicht dem Messwerk geschaltet werden muss (und das Messwerk parallel zu diesem Widerstand $R$). Als Amperemeter verwendete Spannungsmessgeräte solltenen einen möglichst kleinen Gesamtwiderstand haben.

=== Kreuzförmige Widerstandskonfiguration

Gegeben ist eine Kreuzförmige Widerstands- und Spannungskonfiguration wie abgebildet. Berechnen Sie die Spannung in der Mitte des Kreuzes, $U_X$.

#image("assets/fragenkatalog/kreuz_widerstandskonfiguration.png")

#line(length: 100%)

Laut der Kirchhoffschen Knotenregel gilt in der Mitte $sum I = 0$, d.h. man kann die Ströme von der Mitte nach außen mit dem Ohmschen Gesetz aufschreiben und dann gemeinsam gleich null setzen:
- nach links: $I_L = (U_X - 2U)/R$
- nach rechts: $I_R = (U_X - (-2U))/(2R) = (U_X + 2U)/(2R)$
- nach oben: $I_O = (U_X - (-U))/R = (U_X + U)/R$
- nach unten: $I_U = (U_X - U)/(2R)$
$ arrow.double (U_X - 2U)/R + (U_X + 2U)/(2R) + (U_X + U)/R + (U_X - U)/(2R) = 0 $
$ U_X - 2U + U_X/2 + U + U_X + U + U_X/2 - U/2 = 0 arrow.double 3U_X - U/2 = 0 arrow.double U_X = U/6 $

=== Volt- und Amperemeter in einem Schaltkreis

Das Voltmeter im angegebenen Schaltkreis zeigt den Wert $U = 6"V"$. Welcher Strom wird vom Amperemeter angezeigt? Wiederstände sind in Ohm angegeben. Die Messgeräte können als ideal angenommen werden.

#image("assets/fragenkatalog/voltmeter_amperemeter_schaltkreis.png")

#line(length: 100%)

Ein ideales Amperemeter hat einen Widerstand von $R = 0$, ein ideales Voltmeter $R = infinity$. Somit fließt der Gesamtstrom in diesem Schaltkreis über das Amperemeter.

Hinter dem Amperemeter teilt sich der Strom auf, der linke Zweig hat einen Widerstand von $R_L = 1$ und der rechte hat einen Gesamtwiderstand von $R_"R" = 2 + 1 = 3$. Das Voltmeter ist parallel zum 2er-Widerstand des rechten Zweiges und misst somit die Spannung, die durch diesen Widerstand fließt. Da in einem Zweig der Strom jeweils gleich bleibt (seriell geschalten), kann somit der Strom des rechten Zweiges berechnet werden:
$ I_R = (6"V")/(2Omega) = 3"A" $

Nun kann die Gesamtspannung des rechten Zweiges und somit der Spannungsquelle berechnet werden:
$ U_"ges" = I_R * R_R = 3 * 3 = 9"V" $

Der Strom im linken Zweig ist somit $I_L = 9/1 = 9"A"$. Das Amperemeter misst den Gesamtstrom, der sich zwischen den zwei Zweigen aufteilt:
$ I_"ges" = I_L + I_R = 3 + 9 = 12"A" $

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

Geben Sie die Definition des Vektorpotentials. Wie kann man das Vektorpotential aus gegebenen Verteilung der Stromdichte berechnen? (Herleitung der Integralgleichung)

#line(length: 100%)

TODO

=== Trivia zu magnetischen Feldern

+ Welche Eigenschaften treffen auf statische Magnetfelder zu: konservativ, quellenfrei, wirbelfrei? Gibt es Monopole?
+ Skizzieren Sie die Magnetfeldlinien einer Spule, eines geraden stromdurchflossenen Leiters, einer Kompassnadel, eines Dipols, einer Stromschleife, etc.

#line(length: 100%)

a) Konservativ trifft nicht zu, denn es gilt $integral.cont arrow(B) dif arrow(s) eq.not 0$, weil $|B| = "konst" eq.not 0$ und $arrow(B) parallel dif arrow(s)$.

Quellenfrei trifft zu, denn magnetische Feldlinien sind immer geschlossen, egal wie die Fläche gewählt wird, d.h. $integral.cont_A arrow(B) * dif arrow(A) eq.triple 0$. Mit dem Satz von Gauß lässt sich folgendes zeigen:
$ integral.cont_A arrow(B) * dif arrow(A) = integral_V nabla * arrow(B) dif V eq.triple 0 arrow.double nabla * arrow(B) = 0 $

Das magnetische Feld hat somit keine Quellen und Senken. Es zeigt auch, dass keine magnetischen Monopole existieren können.

Wirbelfrei trifft nicht immer zu, denn laut dem Ampereschen Gesetz gilt $nabla times arrow(B) = mu_0 * arrow(j)$, d.h. außer in Gebieten ohne Stromdichte ($arrow(j) = 0$) ist das magnetische Feld nicht wirbelfrei. Z.B. gibt es bei Permanentmagneten keine Stromdichte, was dessen Magnetfeld theoretisch wirbelfrei machen würde (Strom fließt auf Elementarebene aufgrund von Elektronenspins aber trotzdem, also...)

b) 

#image("assets/fragenkatalog/magnet_spule.png")
#image("assets/fragenkatalog/magned_gerader_leiter.png")
#image("assets/fragenkatalog/magnet_leiterschleife.png")

=== Magnetfeld im Mittelpunkt einer Spule

Berechnen sie das Feld einer langen Spule mit N gleichmäßig aufgewickelten Windungen im Mittelpunkt der Spule.

#line(length: 100%)

TODO

=== Magnetfeld im Mittelpunkt einer quadratischen Stromschleife <biot-savart-quadrat-1>

Ausgehend vom Biot-Savartschen Gesetz finden Sie das magnetische Feld in der Mitte einer quadratischen (alternativ: dreieckigen) Stromschleife mit Strom $I$ und Kantenlänge $a$

#image("assets/fragenkatalog/magnetfeld_quad_stromschleife.png")

#line(length: 100%)

Das Biot-Savart-Gesetz im Demtröder:
$ arrow(B)(arrow(r)_1) = - mu_0/(4pi) * I * integral (hat(e)_12 times dif arrow(s))/r^2_12 = - mu_0/(4pi) * I * integral (dif arrow(s) times arrow(r)_12)/r^3_12 $

Da das Magnetfeld im Mittelpunkt gefragt ist und die Stromschleife ein Quadrat ist, ist hohe Symmetrie gegeben. Somit muss nur einer der vier geraden Drahtabschnitte (z.B. Stromrichtung nach $+x$) ausgerechnet werden:
$ dif arrow(s) = dif x * hat(x) $

Für den Ortsvektor zum Mittelpunkt gilt:
$ arrow(r) = vec(-x, -a/2, 0) arrow.double dif arrow(s) times arrow(r) = vec(dif x, 0, 0) times vec(-x, -a/2, 0) = vec(0, 0, -a/2 * dif x) $

In das Biot-Savart-Gesetz einsetzen (für Magnetfeld in $z$-Richtung, da sonst alles in $arrow(r)$ null ist):
$ B_Z = - mu_0/(4pi) * I * integral_(-a/2)^(a/2) (-a/2 * dif x)/(x^2 + (a/2)^2)^(3/2) = mu_0/(4pi) * I * a/2 * integral_(-a/2)^(a/2) 1/(x^2 + (a/2)^2)^(3/2) dif x $

Mit $u = a/2$:
$ integral 1/((x^2 + u^2)^(3/2)) dif x = x/(u^2 * sqrt(x^2 + u^2)) arrow.double B_Z = mu_0/(4pi) * I * a/2 * lr(x/((a/2)^2 * sqrt(x^2 + (a/2)^2))|)^(a/2)_(-a/2) $
$ = mu_0/(4pi) * I * a/2 * ((a/2)/((a/2)^2 * sqrt((a/2)^2 + (a/2)^2)) - (-a/2)/((a/2)^2 * sqrt((-a/2)^2 + (a/2)^2))) $
$ = mu_0/(4pi) * I * a/2 * a/(a^2/4 * (sqrt(2) * a)/4) = mu_0/(4pi) * I * a/2 * (4 * sqrt(2))/a^2 = (mu_0 * I * sqrt(2))/(2pi * a) $

Da sich das Gesamtfeld in der Mitte symmetrisch aus den vier Seiten zusammensetzt, kann einfach mal $4$ multipliziert werden:
$ arrow(B)(vec(0,0,0)) = 4 * vec(0, 0, (mu_0 * I * sqrt(2))/(2pi * a)) = vec(0, 0, (2 sqrt(2) * mu_0 * I)/(pi * a)) $

TODO: "alternativ: dreieckig"

=== Magnetfeld im Mittelpunkt einer quadratischen Stromschleife (2)

Ausgehend vom Biot-Savartschen Gesetz finden Sie das magnetische Feld einer quadratischen Stromschleife mit Strom $I$ und Kantenlänge $a$ entlang der $z$-Achse (Symmetrieachse) für $z >> a$. Nennen Sie 2 physikalische Merkmale dieser Formel.

#line(length: 100%)

Das Biot-Savart-Gesetz im Demtröder:
$ arrow(B)(arrow(r)_1) = - mu_0/(4pi) * I * integral (hat(e)_12 times dif arrow(s))/r^2_12 = - mu_0/(4pi) * I * integral (dif arrow(s) times arrow(r)_12)/r^3_12 $

Da das Magnetfeld im Mittelpunkt gefragt ist und die Stromschleife ein Quadrat ist, ist hohe Symmetrie gegeben. Somit muss nur einer der vier geraden Drahtabschnitte (z.B. Stromrichtung nach $+x$) ausgerechnet werden:
$ dif arrow(s) = dif x * hat(x) $

Für den Ortsvektor zum Mittelpunkt gilt:
$ arrow(r) = vec(-x, -a/2, z) arrow.double dif arrow(s) times arrow(r) = vec(dif x, 0, 0) times vec(-x, -a/2, z) = vec(0, -z * dif x, -a/2 * dif x) $

In das Biot-Savart-Gesetz einsetzen (für Magnetfeld in $z$-Richtung, alles andere hebt sich aufgrund der Symmetrie auf):
$ B_Z (z) = - mu_0/(4pi) * I * integral_(-a/2)^(a/2) (-a/2 * dif x)/(x^2 + (a/2)^2 + z^2)^(3/2) = mu_0/(4pi) * I * a/2 * integral_(-a/2)^(a/2) 1/(x^2 + (a/2)^2 + z^2)^(3/2) dif x $

Mit $u^2 = (a/2)^2 + z^2$:
$ integral 1/((x^2 + u^2)^(3/2)) dif x = x/(u^2 * sqrt(x^2 + u^2)) arrow.double B_Z (z) = mu_0/(4pi) * I * a/2 * lr(x/(((a/2)^2 + z^2) * sqrt(x^2 + (a/2)^2 + z^2))|)^(a/2)_(-a/2) $
$ = mu_0/(4pi) * I * a/2 * ((a/2)/(((a/2)^2 + z^2) * sqrt((a/2)^2 + (a/2)^2 + z^2)) - (-a/2)/(((a/2)^2 + z^2) * sqrt((-a/2)^2 + (a/2)^2 + z^2))) $
$ = mu_0/(4pi) * I * a/2 * a/((a^2/4 + z^2) * sqrt(a^2/2 + z^2)) = mu_0/(8pi) * I * a^2/((a^2/4 + z^2) * sqrt(a^2/2 + z^2)) $

Da sich das Gesamtfeld in der Mitte symmetrisch aus den vier Seiten zusammensetzt, kann einfach mal $4$ multipliziert werden:
$ B_Z (z) = 4 * mu_0/(8pi) * I * a^2/((a^2/4 + z^2) * sqrt(a^2/2 + z^2)) = mu_0/(2pi) * I * a^2/((a^2/4 + z^2) * sqrt(a^2/2 + z^2)) $

Wenn wie in der Angabe $z >> a$ verlangt wird, vereinfacht sich die Formel wie folgt:
$ B_Z (z) ~ mu_0/(2pi) * I * 1/((0 + z^2) * sqrt(0 + z^2)) arrow.double B_Z (z) ~ mu_0/(2pi) * I * 1/z^3 $

Zwei physikalische Merkmale dieser Formel sind (mir ist nichts besseres eingefallen...):
- Durch das Kreuzprodukt von der Stromrichtung $dif arrow(s)$ und dem Verbindungsvektor $arrow(r)$ steht das Magnetfeld immer senkrecht zu diesen zwei Vektoren (Rechte-Hand-Regel)
- Der Beitrag eines Stromstücks wird mit wachsendem Abstand schnell kleiner ($dif B prop 1/r^2$)

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

Die Vektorformel für die Lorentzkraft auf eine Einzelladung lautet $arrow(F) = q*(arrow(v) times arrow(B))$. Wenn sich das Teilchen nur senkrecht zum Magnetfeld bewegt, also $arrow(v) perp arrow(B)$ gilt, vereinfacht sich die Formel zu
$ F = |q| * v * B $

Ein Stromleiter beinhaltet eine Anzahl $N$ dieser Einzelladungen, die sich durch das Magnetfeld bewegen. $N$ lässt sich aus der Ladungsdichte $n$ und dem Volumen $V$ berechnen:
$ N = n * V = n * A * L $

Für die Geschwindigkeit der Ladungen im Leiter wird die durchschnittliche Geschwindigkeit, also die Driftgeschwindigkeit $v_D$ verwendet:
$ v_D = I/(n * q * A) $

Die Gesamtkraft aller Ladungen im Leiter ist also:
$ F_"ges" = N * q * v_D * B = n * A * L * q * I/(n * q * A) * B = I * L * B $

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

Ein Massenspektrometter misst die Masse von Atomen/Molekülen. Die zu untersuchenden Moleküle werden dabei in die Gasphase überführt und ionisiert. Die Ionen werden anschließend durch ein elektrisches Feld beschleunigt und dem Analysator zugeführt, der sie nach ihrem Masse-zu-Ladung-Verhältnis "sortiert", beispielsweise räumlich in Teilstrahlen auftrennt.

Für die Bewegung in elektrischen/magnetischen Feldern gilt die Coulomb- und Lorentzkraft:
$ arrow(F) = q(underbrace(arrow(E), "Coulombkraft") + underbrace(arrow(v) times arrow(B), "Lorentzkraft")) $

Ionen der Ladung $q$ und Masse $m$ werden durch eine Spannung $U$ beschleunigt, wobei sie danach alle die gleiche kinetische Energie, aber unterschiedliche Geschwindigkeiten haben:
$ q * U = (m * v^2)/2 arrow.double v = sqrt((2 * q * U)/m) $

Nach der Beschleunigung treten die Ionen senkrecht in ein homogenes Magnetfeld $B$ ein. Die Lorentzkraft wirkt als Zentripetalkraft:
$ q * v * B = (m * v^2)/r arrow.double r = (m*v)/(q*B) $

Setze $v$ aus der Beschleunigung ein:
$ r = m/(q*B) * sqrt((2 * q * U)/m) = sqrt(2*U)/B * sqrt(m/e) $

Die Moleküle können somit anhand ihres Radius $r$ auf dem Detektor unterschieden werden.

#image("assets/fragenkatalog/massenspektrometer.png")

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

Vorab: unbelasteter Transformator = im Sekundärkreis fließt kein Strom ($I_2 = 0$)

Wird an der Primärspule $L_1$ des unbelasteten Transformators die Eingangsspannung $U_1 = U_0 * cos(omega t)$ angelegt, so wird in $L_1$ ein Strom $I_1$ fließen, der einen magnetischen Fluss $Phi_m$ erzeugt. Dieser bewirkt eine Induktionsspannung
$ U_"ind" = -L_1 * (dif I_1)/(dif t) = -N_1 * (dif Phi_m)/(dif t) = -U_1 $

welche der von außen angelegten Spannung $U_1$ entgegengesetzt gleich ist, da nach der Kirchhoff'schen Regel im geschlossenen Stromkreis gelten muss, dass $U_1 + U_"ind" = 0$. 

Man kann hier den Ohm'schen Widerstand der Spule gegenüber ihrem induktiven Widerstand $omega * L_1$ vernachlässigen. Wenn der gesamte in $L_1$ erzeugte Fluss $Phi_m$ auch durch die Sekundärspule $L_2$ geht, wird dort folgende Spannung erzeugt:
$ U_2 = -N_2 * (dif Phi_m)/(dif t) $

Wegen $(dif Phi_m)/(dif t) = (U_1)/(N_1)$ folgt aus den Gleichungen zuvor:
$ U_2/U_1 = - N_2/N_1 $

Das Minuszeichen zeigt an, dass bei gleichsinniger Wicklung von Primär- und Sekundärspule die Sekundärspannung $U_2$ im unbelasteten Transformator gegenüber der Eingangsspannung $U_1$ um $180°$ phasenverschoben ist.

=== Stromnetz

+ Skizzieren Sie den Transport elektrischer Energie vom Kraftwerk zum Verbraucher mittels Transformatoren und einer Hochspannungsleitung. Kennzeichnen Sie, welche Spule eine größere/kleinere Windungszahl hat.
+ Wieso verwendet man Hochspannung für den Stromtransport über lange Distanzen?
+ Die Durchschlagfestigkeit von Luft beträgt $0.1 "kV"/"mm"$. Wie hoch muss eine $220 "kV"$ Leitung mindestens über dem Boden hängen, damit es nicht zum Überschlag kommt? Wird dieser Mindestabstand größer oder kleiner wenn man Glas verwendet? Hinweis: $epsilon_"Glas" > epsilon_"Luft"$
+ In einem Umspannwerk soll die Spannung von $220 "kV"$ auf haushaltsübliche $220 "V"$ transformiert werden. Wie verhalten sich die Windungszahlen der Spulen?

#line(length: 100%)

TODO

=== Komplexer Widerstand

Leiten Sie die komplexen Widerstände her für:
+ einen ideallen Kondensators
+ eine reelle Spule mit internem Ohm'schen Widerstand

#line(length: 100%)

a) Aus der Gleichung $U = Q/C$ folgt durch zeitliche Differentiation
$ (dif U)/(dif t) = 1/C * (dif Q)/(dif t) = 1/C * I $

Mit $U_c = U_0 * cos(omega t)$ wird
$ I = -omega * C * U_0 * sin(omega t) = omega * C * U_0 * cos(omega t + 90°) $

Der Strom eilt der Spannung um $90°$ voraus. Der komplexe Widerstand der Kapazität $C$ ergibt sich daher mit $I_0 = omega * C * U_0$ zu
$ Z = U/I = exp(-i * pi/2) * U_0/I_0 = -i * 1/(omega * C) = 1/(i * omega * C) $

b) Eine reelle Spule (Induktivität ohne Verluste) mit internem ohmschen Widerstand lässt sich aus einer in Serie geschalteten idealen Induktivität $L$ und einem ohmschen Widerstand $R$ darstellen.

Den komplexen Widerstand einer Spule lässt sich folgend herleiten:
$ U_c + U_"ind" = 0 arrow.double U_0 * cos(omega t) = L * (dif I)/(dif t) $
$ arrow.double I = U_0/L * integral cos(omega t) dif t = U_0/(omega * L) * sin(omega t) = U_0/(omega * L) * cos(omega t - 90 °) $

Der Strom ist gegenüber der Spannung um $90°$ verzögert. Der komplexe Widerstand der Induktivität $L$ ergibt sich daher mit $I_0 = U_0/(omega * L)$ zu
$ Z = U/I = 1/exp(-i * pi/2) * U_0/I_0 = i * omega * L $

Mit einem ohmschen Widerstand in Serie ergibt sich die Gesamtimpedanz eine reelle Spule mit internem ohmschen Widerstand:
$ Z = R + i * omega * L $

=== Leistung bei Phasenverschiebung

Berechnen Sie die Leistung im Wechselstromkreis, wenn Strom und Spannung eine Phasenverschiebung von $phi$ haben (über eine Periode gemittelt).

#line(length: 100%)

Enthält der Wechselstromkreis Induktivitäten $L$ oder Kapazitäten $C$, so sind im allgemeinen Strom und Spannung nicht mehr in Phase. Es gilt dann:
$ U = U_0 * cos(omega t), space space space I = I_0 * cos(omega t + phi) $

Die mittlere Leistung ist nun
$ overline(P)_"el" = (U_0 * I_0)/T * integral^T_0 cos(omega t) * cos(omega t + phi) dif t = (U_0 * I_0)/2 * cos(phi) $

=== Strommessung bei Kondensator

Ein Kondensator $C$ ist an eine AC-Spannung $U(t) = U_0 * exp(i omega t)$ angeschlossen (Bild). Der Strom wird mithilfe des Strommessgeräts A (mit internem Widerstand $R$) gemessen.
+ Welcher Effektivwert wird in diesem Experiment angezeigt?
+ In welchem Frequenzbereich ist dem Wert zu trauen?

#image("assets/fragenkatalog/kondensator_strommessung.png")

#line(length: 100%)

a) Der Kondensator und der interne Widerstand des Strommessgeräts sind in Serie geschalten, d.h. die Impedanzen können einfach addiert werden:
$ Z = Z_C + Z_R = 1/(i * omega * C) + R arrow.double |Z| = sqrt((1/(omega * C))^2 + R^2) $

Nun kann der Strom berechnet werden. $I_0$ ist nur der Scheitelwert, um den Effektivwert zu erhalten, muss durch $sqrt(2)$ dividiert werden:
$ I_0 = U_0/(|Z|) arrow.double I_"eff" = I_0/sqrt(2) = (U_0/sqrt((1/(omega * C))^2 + R^2))/sqrt(2) = U_0/sqrt(2*((1/(omega * C))^2 + R^2)) $

b) Der interne Widerstand $R$ des Amperemeters soll den Kondensator nicht beeinflussen:
$ R << 1/(omega * C) arrow.double omega << 1/(R * C) $

Das heißt um den internen Widerstand zu minimieren und den Kondensatorwiderstand zu maximieren muss eine niedrige Frequenz verwendet werden.

=== Serienschwingkreis

Ein Serienschwingkreis wird mit Spannung $U(t) = U_1 * e^(i omega t) + U_2 * e^(2 i omega t)$ betrieben. Berechnen Sie den Strom durch den Widerstand. (Einschwingvorgang vernachlässigen)

#image("assets/fragenkatalog/serienschwingkreis.png")

#line(length: 100%)

Alle drei Komponenten sind in Serie geschalten, d.h. ihre Impedanzen können einfach addiert werden:
$ Z = Z_R + Z_L + Z_C = R + i * omega * L + 1/(i * omega * C) $

Der Strom ist in einer Serienschaltung zwar überall gleich, da die gegebene Spannung aber zwei Frequenzen enthält, müssen diese beide einzeln behandelt werden:
$ I_1 = U_1/(R + i * omega * L + 1/(i * omega * C)) $
$ I_2 = U_2/(R + i * (2 omega) * L + 1/(i * (2 omega) * C)) $
$ arrow.double I(t) = I_1 * e^(i omega t) + I_2 * e^(i 2 omega t) = U_1/(R + i * omega * L + 1/(i * omega * C)) * e^(i omega t) + U_2/(R + i * (2 omega) * L + 1/(i * (2 omega) * C)) * e^(i 2 omega t) $

=== Wheatstonesche Brücke

Eine Wheatstonesche Brücke wird aus 4 Elementen und einem idealen Voltmeter aufgebaut wie abgebildet. Die Brücke wird mit einer Wechselspannung $U(t) = U_0 * exp(i omega t)$ betrieben.
+ Welche (komplexe) Spannung wird vom Voltmeter angezeigt?
+ Wann ist diese Spannung Null?

#image("assets/fragenkatalog/wheatstone_1.png")

#line(length: 100%)

a) Die Wheatstone Brücke kann als Spannungsteiler angesehen werden, wobei der "obere" und der "untere" Pfad unterschiedliche Spannungen aufweisen:
$ U_U = U * R_1/(i * omega * L_1 + R_1), space space space U_O = U * R_2/(i * omega * L_2 + R_2) $

Der vom Voltmeter angezeigte (komplexe) Spannungsunterschied ist $U_O - U_U$, da der Pfeil nach oben zeigt (d.h. + oben, - unten):
$ U_V = U_O - U_U = U_0 * exp(i omega t) * (R_2/(i * omega * L_2 + R_2) - R_1/(i * omega * L_1 + R_1)) $

b)
$ U_V = 0 arrow.double R_2/(i * omega * L_2 + R_2) = R_1/(i * omega * L_1 + R_1) $
$ R_2 * (i * omega * L_1 + R_1) = R_1 * (i * omega * L_2 + R_2) $
$  R_2 * i * omega * L_1 + R_2 * R_1 = R_1 * i * omega * L_2 + R_1 * R_2 arrow.double L_1/R_1 = L_2/R_2 $

=== Wheatstonesche Brücke (2)

Eine Wheatstonesche Brücke wird aus 4 Elementen und einem idealen Voltmeter aufgebaut wie abgebildet. Die Brücke wird mit einer Wechselspannung $U(t) = U_0 * exp(i omega t)$ betrieben.
+ Welche (komplexe) Spannung wird vom Voltmeter angezeigt?
+ Wann ist diese Spannung Null?

#image("assets/fragenkatalog/wheatstone_2.png")

#line(length: 100%)

a) Die Wheatstone Brücke kann als Spannungsteiler angesehen werden, wobei der "obere" und der "untere" Pfad unterschiedliche Spannungen aufweisen:
$ U_U = U * R/(i * omega * L + R), space space space U_O = U * 1/(i * omega * C)/(1/(i * omega * C) + R) = 1/(1 + i * omega * C * R) $

Der vom Voltmeter angezeigte (komplexe) Spannungsunterschied ist $U_O - U_U$, da der Pfeil nach oben zeigt (d.h. + oben, - unten):
$ U_V = U_O - U_U = U_0 * exp(i omega t) * (1/(1 + i * omega * C * R) - R/(i * omega * L + R)) $

b) 
$ U_V = 0 arrow.double 1/(1 + i * omega * C * R) = R/(i * omega * L + R) $
$ i * omega * L + R = R * (1 + i * omega * C * R) = R + i * omega * C * R^2 arrow.double L = C * R^2 $

=== Schwingungsgleichung Serienresonanzkreis <schwingungsgleichung_serienschwingkreis>

Stellen sie die Schwingungsgleichung für den gedämpften Serienresonanzkreis mit $C$, $R$ und $L$ auf. Behandlung mit den Lösungen Kriechfall, aperiodischer Grenzfall und gedämpfte Schwingung.

#line(length: 100%)

Im Serienresonanzkreis gilt für die Maschenspannung $U_L + U_R + U_C = 0$, mit $U_R = R * I$, $U_L = L * dot(I)$ und $I = C * dot(U)_C$ folgt:
$ L * C * dot.double(U)_C + R * C * dot(U)_C + U_C = 0 $

Division durch $L * C$ liefert die Schwingungsgleichung:
$ dot.double(U)_C + underbrace(R/L, = 2 delta) dot(U)_C + underbrace(1/(L C), = omega_0^2) U_C = 0 $

Mit dem Exponentialansatz $U_C (t) = A * e^(lambda t)$ ergibt sich die charakteristische Gleichung:
$ lambda^2 + 2 delta lambda + omega_0^2 = 0 => lambda_(1,2) = -delta plus.minus sqrt(delta^2 - omega_0^2) $

Im Kriechfall ($delta > omega_0$, d.h. $R > 2 * sqrt(L/C)$) kehrt das System ohne Oszillation langsam in die Ruhelage zurück. Der Wert unter der Wurzel ist positiv und somit existieren zwei reelle Lösungen, d.h. die allgemeine Lösung lautet folgend, wobei $gamma := sqrt(delta^2 - omega_o^2)$:
$ U_C (t) = e^(-delta t) * (A_1 * e^(+gamma t) + A_2 * e^(-gamma t)) $

Beim aperiodischen Grenzfall ($delta = omega_0$, d.h. $R = 2 * sqrt(L/C)$) kehrt das System schnellstmöglich ohne Überschwingungen in die Ruhelage zurück (schneller als Kriechfall). Der Wert unter der Wurzel ist gleich null, was zu einer inneren Resonanzt bzw. doppelten Nullstelle $lambda_(1,2) = -delta$ führt, daher lautet die allgemeine Lösung:
$ U_C (t) = e^(-delta t) * (A_1 + A_2 * t) $

Bei der gedämpften Schwingung ($delta < omega_0$, d.h. $R < 2 * sqrt(L/C)$) klingt die Amplitude exponentiell ab, die Schwingung bleibt jedoch erhalten. Der Wert unter der Wurzel ist negativ und somit existieren zwei komplex konjugierte Lösungen $lambda_(1,2) = -delta plus.minus i sqrt(omega_0^2 - delta^2)$, d.h. die allgemeine Lösung lautet folgend, wobei $omega := sqrt(omega_0^2 - delta^2)$:

$ U_C (t) = e^(-delta t) * (A_1 * e^(+i omega t) + A_2 * e^(-i omega t)) = e^(-delta t) * (B_1 * cos(omega t) + B_2 * sin(omega t)) $

=== RLC-Serienschwingkreis

Ein serieller RLC-Serienschwingkreis wird durch die Wechselspannung $U(t) = U_0 * e^(i omega t)$ zu erzwungenen Stromschwingungen $I(t) = I_0 * e^(i(omega t - phi))$ angeregt, wobei $phi$ der Phasenwinkel zwischen $U(t)$ und $I(t)$ ist.
+ Wie lautet die allgemeine Differentialgleichung dieses Systems?
+ Finden Sie die Lösung dieser Gleichung für $U(t) = U_0 * e^(i omega t)$ (Einschwingvorgang vernachlässigen).
+ Bestimmen Sie den Phasenwinkel $phi$, sowie das Amplitudenverhältnis $U_0/I_0$.

#line(length: 100%)

TODO

=== Gemischter RLC-Schwingkreis

Ein gemischter RLC-Schwingkreis wird mit der Wechselspannung $U(t) = U_0 * exp(i omega t)$ angetrieben. Berechnen Sie:
+ die Spannung am Kondensator $U_C (t)$
+ den Strom durch den Widerstand $R$
(Einschaltvorgang vernachlässigen, Berechnung mit komplexen Zahlen).

#image("assets/fragenkatalog/gemischter_schwingkreis.png")

#line(length: 100%)

a) Zuerst kann der Schwingkreis zu einem Serienschwingkreis gemacht werden, in dem die Impedanzen der Induktivität $L$ und des ohmschen Widerstands $R$ kombiniert werden:
$ Z_L = i * omega * L, space space space Z_R = R $
$ arrow.double Z_"ges" = Z_C + (Z_L * Z_R)/(Z_L + Z_R) = 1/(i * omega * C) + (i * omega * L * R)/(i * omega * L + R) $

Es gilt:

$ U_C/U = Z_C/Z_"ges" arrow.double U_C/(U_0 * exp(i omega t)) = (1/(i * omega * C))/(1/(i * omega * C) + (i * omega * L * R)/(i * omega * L + R)) $
$ = 1/(1 + (i^2 * omega^2 * C * L * R)/(i*omega*L + R)) = 1/((i*omega*L + R)/(i*omega*L + R) - (omega^2 * C * L * R)/(i*omega*L + R)) = (i*omega*L + R)/(i*omega*L + R - omega^2 * C * L * R) $
$ arrow.double U_C (t) = U_0 * exp(i omega t) * (i*omega*L + R)/(i*omega*L + R - omega^2 * C * L * R) $

b) Die Spannung an der Parallelschaltung ist $U_P = U - U_C$, also:
$ U_P = U_0 * exp(i omega t) * (1 - (i*omega*L + R)/(i*omega*L + R - omega^2 * C * L * R)) $
$ = U_0 * exp(i omega t) * ((-omega^2 * C * L * R)/(i*omega*L + R - omega^2 * C * L * R)) $
$ arrow.double I_R = U_P/R = U_0 * exp(i omega t) * ((-omega^2 * C * L)/(i*omega*L + R - omega^2 * C * L * R)) $

=== RLC-Serienschwingkreis (2)

a) Ein RLC Serien-Schwingkreis ist an eine Stromquelle $I(t)$ angeschlossen. Stellen Sie die Differenzialgleichung auf und berechnen Sie die Gesamtspannung $U(t gt.eq 0)$ für folgenden Strom:
$ I(t) = cases(0 "if" t<0, I_0 * t/tau "if" t gt.eq 0) $

#image("assets/fragenkatalog/serienschwingkreis_2.png")

b) Der Schwingkreis wird nun mit der Wechselspannung $U(t) = U_0 * exp(i omega t)$ angetrieben. Berechnen Sie die Amplitude der Spannung an der Spule $U_L (t)$ (Einschaltvorgang vernachlässigen).

#line(length: 100%)

a) Die Gesamtspannung setzt sich aus den drei Teilspannungen zusammen:
$ U(t) = U_R + U_L + U_C = R * I + L * dot(I) + 1/C * integral I dif t $
$ U_R = R*I = (R*I_0*t)/tau $
$ U_L = L*dot(I) = (L*I_0)/tau $
$ U_C = 1/C * integral^t_0 (I_0 * T)/tau dif T = (I_0 * t^2)/(2 * C * tau) $
$ arrow.double U(t gt.eq 0) = (R*I_0*t)/tau + (L*I_0)/tau + (I_0 * t^2)/(2 * C * tau) = I_0/tau * (L + R * t + t^2/(2*C)) $

b) Da es sich um einen Serienschwingkreis handelt, ist der Strom überall gleich:
$ I = U/Z_"ges" = (U_0 * exp(i omega t))/(R + i * omega * L + 1/(i * omega * C)) $

Die Spulenspannung lässt sich mit $U_L = Z_L * I$ berechnen:
$ U_L = (U_0 * exp(i omega t) * i * omega * L)/(R + i * omega * L + 1/(i * omega * C)) $

Die Amplitude lässt sich mit $(|U_L|)/U_0$ berechnen:
$ A_L = (|U_L|)/U_0 = |exp(i omega t)| * sqrt((omega * L)^2)/sqrt(R^2 + (omega * L + 1/(omega * C))^2) = (omega * L)/sqrt(R^2 + (omega * L + 1/(omega * C))^2) $

=== RL-Schwingkreis

+ Ein RL Schwingkreis ist an eine Stromquelle $I(t)$ (!) angeschlossen. Stellen Sie die Zeitgleichung für die am Widerstand gemessene Spannung $U(t)$ auf.
+ Berechnen Sie den Einschaltvorgang $U(t gt.eq 0)$ für folgenden Strom:
  $ I(t) = cases(0 "if" t<0, I_0 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase der Spannung $U(t)$ für den Wechselstrom $I(t) = I_0 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/serienschwingkreis_3.png")

#line(length: 100%)

a) Da $L$ und $R$ parallel geschaltet sind, liegt an ihnen dieselbe Spannung $U(t)$, d.h.:
$ I(t) = I_R + I_L = U/R + 1/L * integral U dif T $

Ableiten nach $t$ beseitigt das Integral:
$ dot(U) + R/L * U = R * dot(I) $

b) Für $t > 0$ gilt $dot(I) = 0$, die Gleichung wird also homogen:
$ dot(U) + R/L * = 0 arrow.double U(t) = A * exp(-(R*t)/L) $

Anfangsbedingung bei $t = 0^+$: Die Induktivität verhindert einen sprungförmigen Stromanstieg, daher fließt der gesamte Strom zunächst durch $R$:
$ U(0^+) = I_0 * R arrow.double A = I_0 * R arrow.double U(t) = I_0 * R * exp(-(R*t)/L) $

Die Spannung klingt mit der Zeit exponentiell ab, für $t arrow infinity$ übernimmt die Spule den gesamten Strom, d.h. $U arrow 0$.

c) Zuerst kann der Schwingkreis zu einem Serienschwingkreis gemachwt werden, um die Berechnung der Spannung bzw. ihrer Amplitude $A = U_0/I_0$ zu vereinfachen:
$ Z_"ges" = (Z_L * Z_R)/(Z_L + Z_R) = (i * omega * L * R)/(i * omega * L + R) $
$ arrow.double U_0/I_0 = |Z_"ges"| = sqrt((omega * L * R)^2)/sqrt(R^2 + (omega * L)^2) = (omega * L * R)/(sqrt(R^2 + omega^2 * L^2)) $

Für die relative Phase einfach den Imaginär- durch den Realteil von $Z_"ges"$ im Arcustangens rechnen:
$ Z_"ges" = (i * omega * L * R)/(i * omega * L + R) * (i * omega * L - R)/(i * omega * L - R) = (-omega^2*L^2*R - i*omega*L*R^2)/(-omega^2*L^2 - R^2) $
$ arrow.double phi = arctan(((-omega*L*R^2)/(-omega^2*L^2 - R^2))/((-omega^2*L^2*R)/(-omega^2*L^2 - R^2))) = arctan((omega * L * R^2)/(omega^2 * L^2 * R)) = arctan(R/(omega * L)) $

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

a) Die Gesamtspannung setzt aus den zwei Teilspannungen zusammen:
$ U(t) = U_C + U_L = 1/C * integral I dif t + L * dot(I) $

Um daraus die Differentialgleichung zu erhalten, einfach alles einmal differenziern. $U(t)$ wird in beiden Fällen ($0$ oder $U_0 = "konst"$) zu null.
$ arrow.double L * dot.double(I) + 1/C * I = 0 $

b) TODO

=== RC-Schwingkreis

+ Stellen Sie die Differentialgleichung für den abgebildeten RC Schwingkreis auf
+ Berechnen Sie den Einschaltvorgang $I(t gt.eq 0)$ für folgende Spannung:
  $ U(t) = cases(0 "if" t<0, U_0 "if" t gt.eq 0) $
+ Berechnen Sie den Strom für die Wechselspannung $U(t) = U_0 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

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

Ein elektrischer Hochpass ist eine Schaltung, die hohe Frequenzen $omega$ praktisch ungedämpft durchlässt, tiefe Frequenzen aber unterdrückt. Eine mögliche Realisierungsmöglichkeit ist ein RC-Differenziator (siehe @rc_diff), ein Hochpass kann aber auch induktiv (mit einer Spule) realisiert werden. Da Spulen jedoch anfälliger auf Störsignale sind, wird meistens eine RC-Schaltung verwendet.

#image("assets/fragenkatalog/hochpass.png")

Ein Tiefpass ist eine Schaltung, die nur niedrige Frequenzen $omega$ ungedämpft durchlässt, während hohe Frequenzen unterdrückt werden. Eine mögliche Realisierungsmöglichkeit ist ein RC-Integrator (siehe @rc_int), ein Tiefpass kann aber auch induktiv (mit einer Spule) realisiert werden. Da Spulen jedoch anfälliger auf Störsignale sind, wird meistens eine RC-Schaltung verwendet.

#image("assets/fragenkatalog/tiefpass.png")

=== RC-Integrator <rc_int>

Wie funktioniert ein RC-Integrator?

#line(length: 100%)

Ein RC-Integrator ist eine einfache elektronische Schaltung aus einem in Reihe geschalteten Widerstand und Kondensator, die als Tiefpassfilter fungiert, um die mathematische Integration eines Eingangssignals durchzuführen.

#image("assets/fragenkatalog/rc_int.jpg", width: 70%)

=== RC-Differenziator <rc_diff>

Wie funktioniert ein RC-Differenziator?

#line(length: 100%)

Ein RC-Differenzierer ist eine passive elektronische Schaltung, die aus einem in Reihe geschalteten Kondensator und einem Widerstand besteht und als Hochpassfilter fungiert. Er erzeugt eine Ausgangsspannung, die proportional zur zeitlichen Änderungsrate (der Ableitung) des Eingangssignals ist.

#image("assets/fragenkatalog/rc_diff.jpg", width: 70%)
