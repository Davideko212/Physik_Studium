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
    - Vorlesungsfolien von Prof. Pustogow
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

a) Das Gaußsche Gesetz der Elektrostatik besagt, dass der elektrische Fluss durch eine geschlossene Oberfläche direkt proportional zu der von ihr eingeschlossenen elektrischen Ladung ist.

$ Phi_"el" = integral.cont_A arrow(E) dif arrow(A) = integral_V(A) nabla dot arrow(E) dif V = Q/epsilon_0 $

b) Das Coulomb Gesetz beschreibt die elektrische Kraft zwischen zwei (ruhenden) Punktladungen $q_1$ und $q_2$ im Abstand $r$:
$ arrow(F) = 1/(4pi * epsilon_0) * (q_1 * q_2)/r^2 * hat(r) $

Daraus lässt sich das elektrische Feld einer einzelnen Punktladung folgend definieren:
$ arrow(E) = 1/(4pi * epsilon_0) * q/r^2 * hat(r) $

Um nun vom CG auf das GG zu kommen, muss das von einem beliebigen 3D-Objekt ausgestrahlte elektrische Feld in einem Raumwinkel $dif Omega$ über alle dieser Raumwinkel integriert werden. Der Raumwinkel $dif Omega$ kann in Kugelkoordinaten folgend hergeleitet werden:
$ dif V = r^2 * sin(theta) dif phi dif theta dif r $
$ dif A = (dif V)/(dif r) = r^2 * sin(theta) dif phi dif theta = r^2 * dif Omega $
$ arrow.double (dif A)/r^2 = dif Omega = sin(theta) dif phi dif theta $

Das Gaußsche Gesetz erhältet man nun, wenn in die Formel für den elektrischen Fluss alles eingesetzt wird:
$ dif Phi = arrow(E) dif arrow(A) = 1/(4pi * epsilon_0) * q/r^2 * hat(r) * dif arrow(A) = 1/(4pi * epsilon_0) * q/r^2 * hat(r) * dif A * cos(theta) = 1/(4pi * epsilon_0) * q * dif Omega $
$ arrow.double Phi = integral dif Phi = 1/(4pi * epsilon_0) * q * integral dif Omega = 1/(4pi * epsilon_0) * q * 4pi = q/epsilon_0 $

Bei mehreren Ladungen gilt das Superpositionsprinzip:
$ epsilon_0 * Phi = sum_i epsilon_0 * Phi_i = sum_i q_i = Q $

=== Elektrisches Feld eines unendlichen, homogenen Stabes

Berechnen Sie das elektrische Feld und das Potential eines unendlich langen, homogen geladenen Stabes mit Radius $R$ und Ladungsdichte $rho$ (Volumendichte):
+ im Innenraum
+ im Außenraum
+ Skizzieren Sie das Feld und das Potential (kurze Begründung)
+ Diskutieren Sie die Symmetriebedingungen für die Feldkonfiguration

#line(length: 100%)

Die Gesamtladung des Stabes sei $Q$, somit ist die Ladung pro Längeneinheit $lambda = Q/L = pi * R^2 * rho$. Die elektrische Feldstärke ist aus Symmetriegründen in einem Punkt $P$ im Abstand $r$ von der Stabachse radial nach außen gerichtet.

a) Für das elektrische Feld im Innenraum ($r lt.eq R$) gilt für die eingeschlossene Ladung $Q_"ein" = (lambda * L * pi * r^2)/(pi * R^2) = (lambda * L * r^2)/(R^2)$:
$ Q_"ein"/epsilon_0 = (lambda * L * r^2)/(R^2)/epsilon_0 = integral.cont_A arrow(E) dif arrow(A) = E * 2pi * r * L $
$ arrow.double arrow(E) = (lambda*L*r^2)/(epsilon_0 * R^2 * 2pi * r * L) = (lambda*arrow(r))/(epsilon_0 * R^2 * 2pi) = (pi * R^2 * rho * arrow(r))/(epsilon_0 * R^2 * 2pi) = (rho * arrow(r))/(epsilon_0 * 2) $

Für das elektrische Potential bei $r lt.eq R$ ergibt sich:
$ Phi(r) = - integral E(r) dif r = - integral_R^r (rho * r)/(epsilon_0 * 2) dif r = -(rho)/(epsilon_0 * 2) * integral_R^r r dif r $
$ = -(rho)/(epsilon_0 * 2) * (r^2/2 - R^2/2) = (rho)/(epsilon_0 * 4) * (R^2 - r^2) $

b) Für das elektrische Feld im Außenraum ($r gt R$) gilt:
$ Q/epsilon_0 = (lambda*L)/epsilon_0 = integral.cont_A arrow(E) dif arrow(A) = E * 2pi * r * L $
$ arrow.double arrow(E) = (lambda * L)/(epsilon_0 * 2pi * r * L) * hat(r) = (pi * R^2 * rho)/(epsilon_0 * 2pi * r) * hat(r) = (R^2 * rho)/(epsilon_0 * 2 * r) * hat(r) $

Für das elektrische Potential bei $r gt R$ ergibt sich:
$ Phi(r) = - integral E(r) dif r = - integral_R^r (R^2 * rho)/(epsilon_0 * 2 * r) dif r = -(R^2 * rho)/(epsilon_0 * 2) * integral_R^r 1/r dif r $
$ = -(R^2 * rho)/(epsilon_0 * 2) * (ln(r) - ln(R)) = (R^2 * rho)/(epsilon_0 * 
2) * (ln(R) - ln(r)) = (R^2 * rho)/(epsilon_0 * 2) * ln(R/r) $

c) Das elektrische Feld nimmt innerhalb des Stabes ($0 lt.eq r lt.eq R$) linear zu, da eine homogene Volumenladungsdichte vorliegt. Danach (d.h. für $r gt.eq R$) nimmt es proportional zu $1/r$ ab.

Das Potential ist in der Mitte des Stabes ($r = 0$) maximal und nimmt bis zur Oberfläche des Stabes ($r = R$) quadratisch ab, wobei das Potential an der Oberfläche gleich null ist. Für $r gt.eq R$ wird das Potential negativ, proportional zu $-ln(r)$.
#image("assets/fragenkatalog/elek_feld_unendlicher_stab_graph.png")

d) Für eine zylindrische Feldkonfiguration:
- Es gibt eine Translationssymmetrie in $z$, d.h. $(partial E)/(partial z) = 0$
- Es gibt eine Rotationssymmetrie in $z$, d.h. $(partial E)/(partial phi) = 0$
Somit bleibt lediglich $(partial E)/(partial r)$ übrig, was zu der Folgerung $arrow(E) = E(r) * hat(r)$ führt.

=== Elektrisches Feld eines Stabes entlang Symmetrieachse

Ein dünner geladener Stab (Linienladungsdichte $lambda$ [$C/m$]) der Länge $2a$ befindet sich symmetrisch zum Koordinatenursprung parallel zu $y$-Achse (Bild). Bestimmen Sie das elektrische Feld entlang der $x$-Achse (Symmetrieachse).

#image("assets/fragenkatalog/elek_feld_stab.svg")

#line(length: 100%)

Durch das Superpositionsprinzip lässt sich das elektrische Feld im Punkt $arrow(r)$ mit folgender Formel darstellen:
$ arrow(E)(arrow(r)) = Q_1/(4pi * epsilon_0) * (arrow(r) - arrow(r)_1)/(|arrow(r) - arrow(r)_1|^3) + Q_2/(4pi * epsilon_0) * (arrow(r) - arrow(r)_2)/(|arrow(r) - arrow(r)_2|^3) + ... $

Somit erzeugt ein Ladungselement bei der Position $(0, y)$ mit der Ladung $dif Q = lambda dif y$ im Punkt $P = (x, 0)$ folgendes Feld:
$ dif arrow(E) = lambda * (dif y)/(4pi *  epsilon_0) * (vec(x,0) - vec(0,y))/(x^2 + y^2)^(3/2) $

Uns interessiert nur das elektrische Feld entlang der $x$-Achse, d.h. es muss nur die $x$-Komponente von $dif arrow(E)$ betrachtet werden:
$ dif E_x = lambda * (dif y)/(4pi *  epsilon_0) * x/(x^2 + y^2)^(3/2) $
$ arrow.double E_x = integral^a_(-a) dif E_x = integral^a_(-a) lambda * (dif y)/(4pi *  epsilon_0) * x/(x^2 + y^2)^(3/2) = (lambda * x)/(4pi * epsilon_0) integral^a_(-a) 1/(x^2 + y^2)^(3/2) dif y $
$ E_x = (lambda * x)/(4pi * epsilon_0) * [y/(x^2 sqrt(x^2 + y^2))]_(-a)^a = (lambda * x)/(4pi * epsilon_0) * (2* a)/(x^2 sqrt(x^2 + a^2)) = (lambda * a)/(2pi * epsilon_0 * x * sqrt(x^2 + a^2)) $
$ arrow.double arrow(E)(x) = (lambda * a)/(2pi * epsilon_0 * x * sqrt(x^2 + a^2)) * hat(x) $

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

b) Die Energiedichte des elektrischen Feldes lautet:
$ w = 1/2 * epsilon_0 * E^2 $

Damit ergibt sich für die Gesamtenergie:
$ W = integral_V 1/2 * epsilon_0 * E^2 dif V = 1/2 * epsilon_0 * integral_0^R (Q/(epsilon_0 * 4pi) * (r/R^3 - 1/r^2))^2 * 4pi * r^2 dif r $
$ = 1/2 * epsilon_0 * Q^2/(epsilon_0^2 * 16pi^2) * 4pi * integral_0^R (r^2/R^6 - 2/(R^3*r) + 1/r^4) * r^2 dif r $
$ = 1/2 * Q^2/(epsilon_0 * 4pi) * integral_0^R (r^4/R^6 - (2*r)/R^3 + 1/r^2) dif r = Q^2/(epsilon_0 * 8pi) * [r^5/(5*R^6) - r^2/R^3 - 1/r]_0^R $

Der letzte Term divergiert für $r arrow 0$. Ursache dafür ist die punktförmige Ladung im Zentrum, deren Eigenenergie unendlich wird. Als Alternative kann man die physikalisch relevante Bindungsenergie nutzen, nämlich folgende Wechselwirkungsenergie basierend auf $Phi(r)$, wobei bei $Phi(0)$ das Potential der Punktladung in der Mitte entfernt werden muss:
$ W_B = q * Phi'(0) = q * q/(epsilon_0 * 4pi) * (3/(2*R) - 0^2/(2*R^3)) = (3*q^2)/(epsilon_0 * 8pi * R) $

=== Kräfteüberlagerung Ladungen

Berechnen Sie die potentielle Energie von drei Ladungen $Q_1$, $Q_2$ und $Q_3$, die sich im Abstand $r_12$, $r_13$, bzw. $r_23$ befinden. Geben sie die Gesamtkraft auf die Ladung $Q_3$ an und zeichnen sie schematisch die Überlagerung der Kräfte zur Gesamtkraft auf die Ladung $Q_3$.

#line(length: 100%)

Die potentielle Energie des Systems ergibt sich als Summe der paarweisen Wechselwirkungsenergien:
$ E_"pot" = W = W_12 + W_13 + W_23 = 1/(4pi * epsilon_0) * (Q_1 * Q_2)/r_12 + 1/(4pi * epsilon_0) * (Q_1 * Q_3)/r_13 + 1/(4pi * epsilon_0) * (Q_2 * Q_3)/r_23 $
$ = 1/(4pi * epsilon_0) * ((Q_1 * Q_2)/r_12 + (Q_1 * Q_3)/r_13 + (Q_2 * Q_3)/r_23) $

Dabei entspricht $W$ der Arbeit, die aufgewendet werden muss, um die drei Ladungen aus dem Unendlichen in die gegebene Konfiguration zu bringen.

Die Gesamtkraft auf $Q_3$ ergibt sich durch Superposition der Coulomb-Kräfte von $Q_1$ und $Q_2$:
$ arrow(F)_3 = arrow(F)_13 + arrow(F)_23 + ... =  Q_3/(4pi * epsilon_0) * sum (Q_i * (arrow(r)_3 - arrow(r)_i))/(|arrow(r)_3 - arrow(r)_i|^3) $
$ arrow(F)_3 = Q_3/(4pi * epsilon_0) * (Q_1 * (arrow(r)_3 - arrow(r)_1))/(|arrow(r)_3 - arrow(r)_1|^3) + Q_3/(4pi * epsilon_0) * (Q_2 * (arrow(r)_3 - arrow(r)_2))/(|arrow(r)_3 - arrow(r)_2|^3) = Q_3/(4pi * epsilon_0) * (Q_1/r_13^2 * hat(r)_13 + Q_2/r_23^2 * hat(r)_23) $

Die Gesamtkraft ergibt sich geometrisch als Vektorsumme:
#image("assets/fragenkatalog/coulombkraft_ueberlagerung.svg")

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

=== Elektrisches Feld eines Rings <efeld_duenner_ring>

Ein Ring aus dünnem Draht mit Radius $R$ ist homogen geladen mit Linienladung $lambda$.
+ Berechnen Sie das elektrische Feld entlang der Symmetrieachse ($z$-Achse).
+ Besprechen Sie explizit die Symmetriebedingungen für das Feld.
+ Berechnen Sie zwei ersten Terme der Taylorreihe in $1/z$ in der Entwicklung $E(1/z)$ für $z>>R$.

#line(length: 100%)

a) Für ein Punkt $P$ auf der Symmetrieachse ($z$-Achse) heben sich die zu der Symmetrieachse senkrechte Komponenten auf, übrig bleibt nur die Komponente in $z$-Richtung. Die Gesamtladung des Stabes sei $Q$, somit ist die Ladung pro Längeneinheit $lambda = Q/L$. Für ein beliebig kleines Stück des Rings mit Ladung $dif Q$ lässt sich das elektrische Feld als das einer Punktladung annehmen, d.h. für das elektrische Feld entlang der $z$-Achse gilt:
$ dif E_z = 1/(4pi * epsilon_0 * r^2) * dif Q * cos(theta) $

Der Winkel $theta$ wird von der $z$-Achse und dem Richtungsvektor $arrow(r)$ vom Punkt $P$ zum kleinen Linienstück des Rings eingeschlossen, wobei $r$ mit dem Satz des Pythagoras als $r^2 = R^2 + z^2$ beschrieben werden kann, d.h.:
$ dif E_z = 1/(4pi * epsilon_0 * r^2) * dif Q * z/r = 1/(4pi * epsilon_0) * (z * dif Q)/(R^2 + z^2)^(3/2) $
$ arrow.double E_z = 1/(4pi * epsilon_0) * integral (z)/(R^2 + z^2)^(3/2) dif Q = 1/(4pi * epsilon_0) * (z)/(R^2 + z^2)^(3/2) * integral dif Q $
$ arrow.double arrow(E)(z) = (z*Q)/(4pi * epsilon_0 * (R^2 + z^2)^(3/2)) * hat(e)_z = (z*lambda*L)/(4pi * epsilon_0 * (R^2 + z^2)^(3/2)) * hat(e)_z $

b) Für eine zylindrische Feldkonfiguration:
- Es gibt eine Spiegelsymmetrie entlang der $z$-Achse für gegenüberliegende Ladungen, d.h. $E_r = 0$
- Es gibt eine Rotationssymmetrie entlang der $z$-Achse, d.h. $E_phi = 0$
Diese Symmetrien zusammen rechtfertigen den Ansatz $arrow(E) = E_z (z) hat(z)$ auf der Symmetrieachse.

c) Für $z >> R$ entwickelt man $E(z)$ in Potenzen von $1/z$:
$ E(z) = (z * Q)/(4pi * epsilon_0 * (R^2 + z^2)^(3/2)) = Q/(4pi * epsilon_0 * z^2) * 1/(1 + R^2/z^2)^(3/2) $

Mit der Taylorreihe $(1 + u)^(-3/2) = 1 - 3/2 u + 15/8 u^2 - ...$ für $|u| < 1$ und $u = R^2/z^2$:
$ E(z) = Q/(4pi * epsilon_0) * 1/z^2 * (1 - 3/2 * R^2/z^2 + ...) $

Die ersten zwei Terme der Entwicklung in $1/z$ lauten damit:
$ E(z) approx Q/(4pi * epsilon_0) * (1/z)^2 - (3 * Q * R^2)/(8pi * epsilon_0) * (1/z)^4 + ... $

Der führende Term $~ 1/z^2$ entspricht dem Feld einer Punktladung im Ursprung, was für $z >> R$ physikalisch zu erwarten ist, denn der Ring erscheint aus großer Entfernung wie eine Punktladung.

=== Zwei Ladungen als Dipol

Zwei Ladungen befinden sich auf der ($x,y$) Ebene: Erste Ladung $Q$, Koordinaten $vec(0, a)$; Zweite Ladung $-Q$, Koordinaten $vec(0, -a)$.
+ Berechnen Sie das elektrische Feld entlang der x-Achse:
  + Graphisch (Amplitude und Richtung) 
  + Koordinatenweise
+ Berechnen Sie das Potential dieses Dipols entlang der $y$-Achse in der Näherung $|y|>> a$. (Ersten von Null abweichenden Term in der Reihenentwicklung in $1/y$).

#line(length: 100%)

a) 1) So ca.
#image("assets/fragenkatalog/ladungen_als_dipol.svg")

2) Durch das Superpositionsprinzip lässt sich das elektrische Feld im Punkt $arrow(r)$ mit folgender Formel darstellen:
$ arrow(E)(arrow(r)) = Q_1/(4pi * epsilon_0) * (arrow(r) - arrow(r)_1)/(|arrow(r) - arrow(r)_1|^3) + Q_2/(4pi * epsilon_0) * (arrow(r) - arrow(r)_2)/(|arrow(r) - arrow(r)_2|^3) + ... $
$ arrow(E)(arrow(r)) = Q/(4pi * epsilon_0) * (arrow(r) - vec(0,a))/(|arrow(r) - vec(0,a)|^3) - Q/(4pi * epsilon_0) * (arrow(r) - vec(0,-a))/(|arrow(r) - vec(0,-a)|^3) $

Für einzelne Punkte entlang der $x$-Achse gilt somit:
$ arrow(E)(vec(x,0)) = Q/(4pi * epsilon_0) * vec(x,-a)/((sqrt(x^2 + a^2))^3) - Q/(4pi * epsilon_0) * vec(x,a)/((sqrt(x^2 + a^2))^3) $
$ = Q/(4pi * epsilon_0 * (x^2 + a^2)^(3/2)) * vec(x - x, -a - a) = Q/(2pi * epsilon_0 * (x^2 + a^2)^(3/2)) * vec(0, -a) $

b) Das Potential entlang der $y$-Achse ergibt sich durch Superposition der Potentiale beider Ladungen. Für einen Punkt $vec(0, y)$ mit $y > 0$ gilt:
$ Phi(vec(0,y)) = Q/(4pi * epsilon_0) * 1/abs(y-a) - Q/(4pi * epsilon_0) * 1/abs(y+a) = Q/(4pi * epsilon_0) * (1/(y-a) - 1/(y+a)) $

Für $|y| >> a$ entwickelt man die beiden Terme in $1/y$:
$ 1/(y - a) = 1/y * 1/(1 - a/y) approx 1/y * (1 + a/y + a^2/y^2 + ...) $
$ 1/(y + a) = 1/y * 1/(1 + a/y) approx 1/y * (1 - a/y + a^2/y^2 - ...) $

Die Differenz liefert:
$ 1/(y-a) - 1/(y+a) approx 1/y * (2 * a/y + ...) = (2*a)/y^2 + ... $

Der konstante Term ($~1/y^0$) und der lineare Term ($~1/y$) heben sich auf. Der erste von Null abweichende Term ist somit:
$ Phi(vec(0,y)) approx Q/(4pi * epsilon_0) * (2*a)/y^2 = (2 * Q * a)/(4pi * epsilon_0 * y^2) = p/(4pi * epsilon_0 * y^2) $

wobei $p = 2 * Q * a$ das Dipolmoment bezeichnet. Das Potential fällt entlang der $y$-Achse (der Dipolachse) wie $~1/y^2$ ab, schneller als das $~1/y$-Potential einer einzelnen Punktladung.

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

Elektrostatisches Feld eines geladenen Rings (Flächenladungsdichte $sigma$; alternativ: Raumladungsdichte $rho$; Linienladungsdichte $lambda$) mit Innenradius $R_1$ und Außenradius $R_2$ in der $x,y$-Ebene konzentrisch um den Ursprung:

+ Skizzieren Sie die Anordnung.
+ Wie groß ist das elektrische Feld im Ursprung?
+ Berechnen Sie das elektrische Feld in einem Abstand h entlang der $z$-Achse.

#line(length: 100%)

a) (In der Skizze hab ich versucht, den Ring als 3D-Objekt darzustellen, er ist aber eig. 2D)
#image("assets/efeld_geladener_ring.svg")

b) Im Ursprung heben sich die elektrostatischen Kräfte der Ladungen rund um den Ring aufgrund der Symmetrie auf, also gilt $arrow(E)(0,0,0) = 0$.

c) (Identisch zu @efeld_duenner_ring aber mit Integration für Fläche)

Für ein Punkt $P$ auf der Symmetrieachse ($z$-Achse) heben sich die zu der Symmetrieachse senkrechte Komponenten auf, übrig bleibt nur die Komponente in $z$-Richtung. Für ein beliebig kleines Stück des Rings mit Ladung $dif Q = lambda * dif L = sigma * dif A$ lässt sich das elektrische Feld als das einer Punktladung annehmen, d.h. für das elektrische Feld entlang der $z$-Achse gilt:
$ dif E_z = 1/(4pi * epsilon_0 * r^2) * dif Q * cos(theta) $

Der Winkel $theta$ wird von der $z$-Achse und dem Richtungsvektor $arrow(r)$ vom Punkt $P$ zum kleinen Linienstück des Rings eingeschlossen, wobei $r$ mit dem Satz des Pythagoras als $r^2 = R^2 + h^2$ beschrieben werden kann, d.h.:
$ dif E_z = 1/(4pi * epsilon_0 * r^2) * dif Q * h/r = 1/(4pi * epsilon_0) * (h * sigma * dif A)/(R^2 + h^2)^(3/2) = 1/(4pi * epsilon_0) * (h * sigma * 2pi * R * dif R)/(R^2 + h^2)^(3/2) $

Integration über alle Kreisringe von $R_1$ bis $R_2$:
$ E_z (h) = (h * sigma)/(2 * epsilon_0) * integral_(R_1)^(R_2) r/(R^2 + h^2)^(3/2) dif R $

Mit $u = R^2 + h^2$:
$ E_z (h) = (h * sigma)/(2 * epsilon_0) * integral_(R_1)^(R_2) r/(u)^(3/2) (dif u)/(2 * r) = (h * sigma)/(4 * epsilon_0) * -2/(sqrt(u)) = (h * sigma)/(2 * epsilon_0) * [-1/sqrt(R^2 + h^2)]_(R_1)^(R_2) $
$ arrow.double arrow(E)(h) = (h * sigma)/(2 * epsilon_0) * (1/sqrt(R_1^2 + h^2) - 1/sqrt(R_2^2 + h^2)) * hat(e)_z $

=== Zylinderkondensator <zylinderkondensator>

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

#image("assets/fragenkatalog/elek_feld_platte.svg")

#line(length: 100%)

(Ich nehme an, dass sich die Platte unendlich in der $x y$-Ebene ausdent und die Dicke $d$ auf der $z$-Achse liegt, sodass der Koordiantenursprung $d/2$ von der Plattenkante entfernt ist)

Aufgrund der Symmetrie bleiben immer nur die $z$-Komponenten des elek. Feldes bzw. des Potentials übrig.

a) Für das elektrische Feld im Inneren ($abs(z) < d/2$) kann das Gaußsche Gesetz mit einer Pillbox der Querschnittsfläche $A$, die von $-z$ bis $+z$ reicht, verwendet werden:
$ integral.cont arrow(E) dif arrow(A) = Q/epsilon_0 = (rho * 2 * z * A)/epsilon_0 $
$ 2 * E(z) * A = (rho * 2 * z * A)/epsilon_0 arrow.double arrow(E)(z) = (rho * z)/epsilon_0 * hat(e)_z $

Außerhalb ($abs(z) > d/2$) umfasst die Gaußfläche die gesamte Platte:
$ integral.cont arrow(E) dif arrow(A) = Q/epsilon_0 = (rho * dif A)/epsilon_0 $
$ 2 * E(z) * A = (rho * dif A)/epsilon_0 arrow.double E(z) = (rho * d)/(2 * epsilon_0) $
Mit Vorzeichen entsprechend der Seite der Platte:
$ arrow.double arrow(E)(z) = (rho * d)/(2*epsilon_0) * "sgn"(z) * hat(e)_z $

b) Das Potential erhält man aus $E_z = -(dif Phi)/(dif z)$ integriert (mit Bedingung $Phi(0) = 0$), zuerst für den Innenraum:
$ Phi(z) = -integral_0^z (rho * z')/epsilon_0 dif z' = -rho/epsilon_0 * integral_0^z z' dif z' = -(rho * z^2)/(2 * epsilon_0) $

Für Außerhalb der Platte muss zunächst der Potentialwert an der Oberfläche berechnet werden (weil sonst müsste man ein uneigentliches Integral rechnen):
$ Phi(d/2) = -(rho * (d/2)^2)/(2 * epsilon_0) = -(rho * d^2)/(8 * epsilon_0) $

Für $z > d/2$ gilt nun:
$ Phi_a (z) = Phi_i (d/2) - integral_(d/2)^z (rho * d)/(2*epsilon_0) dif z' = -(rho * d^2)/(8 * epsilon_0) - (rho * d)/(2 * epsilon_0) * (z - d/2) $
$ arrow.double Phi(z) = (rho * d^2)/(8 * epsilon_0) - (rho * d)/(2 * epsilon_0) * abs(z) $

c) Wörtliche Beschreibung der Skizze: In der Mitte der Platte ist das E-Feld null, innerhalb des Platte hat es einen linearen Anstieg mit $z$, außerhalb ist es konstant. Das Potential ist in der Mitte der Platte maximal, innerhalb der Platte hat es eine parabolischen Abnahme, danach außerhalb eine lineare Abnahme.

d) Die Symmetriebedingungen sind:
- Translationssymmetrie in $x$- und $y$-Richtung
- Rotationssymmetrie um die $z$-Achse
- Spiegelsymmetrie bzgl. der Ebene um $z=0$

=== Elektrisches Feld dreier paralleler Platten

Drei zueinander parallele große dünne Ebenen tragen die Oberflächenladungen wie abgebildet. Berechnen Sie und zeichnen Sie das elektrische Feld und das Potential (Potential nur zeichnen) im gesamten Raum. (zur Herleitung nur Coulomb + Gauss Gesetze erlaubt)

#image("assets/fragenkatalog/drei_platten.png")

#line(length: 100%)

(Ich nehme an, dass die Platten nichtleitend sind, weil sie laut Angabe eine Oberflächenladung haben)

Das elektrische Feld der Platten lässt sich mit dem Gauß'schen Gesetz berechnen:
$ integral.cont arrow(E) dif arrow(A) = Q/epsilon_0 $
$ underbrace(E*A, "linke Fläche") + underbrace(E*A, "rechte Fläche") = (sigma * A)/epsilon_0 arrow.double E = sigma/(2*epsilon_0) $

Die Felder der drei Platten werden in jedem Bereich vektoriell addiert:
#table(
  columns: 5,
  align: horizon,
  inset: 8pt,
  table.header(
    [*Bereich*],
    [*Platte $-sigma$ bei $-d$*],
    [*Platte $+sigma$ bei $0$*],
    [*Platte $-sigma$ bei $+d$*],
    [*Total*]
  ),
  [$x < -d$], [$+sigma/(2 * epsilon_0)$], [$-sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$],
  [$-d < x < 0$], [$-sigma/(2 * epsilon_0)$], [$-sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$], [$-sigma/(2 * epsilon_0)$],
  [$0 < x < d$], [$-sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$],
  [$x > d$], [$-sigma/(2 * epsilon_0)$], [$+sigma/(2 * epsilon_0)$], [$-sigma/(2 * epsilon_0)$], [$-sigma/(2 * epsilon_0)$],
)

Das Potential erhält man aus $E_x = -(dif Phi)/(dif x)$ integriert:
$ Phi(x) := cases(
  -(sigma * (x + 2*d))/(2 * epsilon_0) & quad x < -d,
  (sigma * x)/(2 * epsilon_0) & quad -d < x < 0,
  -(sigma * x)/(2 * epsilon_0) & quad 0 < x < d,
  (sigma * (x - 2*d))/(2 * epsilon_0) & quad x > d,
) $

D.h. das lokale Maximum $Phi = 0$ liegt auf der mittleren Platte, die lokalen Minima auf den äußeren Platten.

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

a) Die isoliert aufgehängte Metallkugel kann als Kondensator mit der Kapazität $C=Q/U$ betrachtet werden. Um die Kapazität der Metallkugel zu berechnen, muss vom elektrischen Feld aus das Potential berechnet werden:
$ E(r) = 1/(4pi * epsilon_0) * Q/r^2 $
$ Phi(r) = - integral E(r) = - Q/(4pi * epsilon_0) * integral 1/r^2 = Q/(4pi * epsilon_0 * r) $

Wenn die Potentialdifferenz zur Umgebung $U_0$ beträgt, gilt $Phi(R) = U_0$. Somit gilt für die Kapazität der Metallkugel
$ C = Q/U = Q/(Q/(4pi * epsilon_0 * R)) = 4pi * epsilon_0 * R $

Wenn man nun das Aufladen der Metallkugel auf die Potentialdifferenz $U_0$ allgemein betrachtet, braucht man folgende Ladung:
$ Q = C * U = 4pi * epsilon_0 * R * U_0 $

b) Die Kapazität der kleineren Kugel ist die Hälfte der größeren:
$ C = Q/U = Q/(Q/(4pi * epsilon_0 * R/2)) = 4pi * epsilon_0 * R/2 $

Wenn die beiden Kugeln verbunden werden, gleichen sich ihre Potentiale an ($Phi_1 = Phi_2$). Die Gesamtladung bleibt erhalten:
$ Q_1 + Q_2 = Q = 4pi * epsilon_0 * R * U_0 $

Bedingung gleicher Potentiale:
$ Phi_1 = Phi_2 arrow.double Q_1/(4pi * epsilon_0 * R) = Q_2/(4pi * epsilon_0 * R/2) arrow.double Q_1/R = Q_2/(R/2) arrow.double Q_1 = 2 Q_2 $

Einsetzen in die Ladungserhaltung:
$ 2 * Q_2 + Q_2 = 4pi * epsilon_0 * R * U_0 arrow.double Q_2 = (4pi * epsilon_0 * R * U_0)/3 $
$ Q_1 = 2 * Q_2 = (8pi * epsilon_0 * R * U_0)/3 $

Somit sind die Potentiale der Kugel nach dem Verbinden folgende:
$ Phi_1 = Q_1/(4pi * epsilon_0 * R) = ((8pi * epsilon_0 * R * U_0)/3)/(4pi * epsilon_0 * R) = (2 U_0)/3 $
$ Phi_2 = Q_2/(4pi * epsilon_0 * R/2) = ((4pi * epsilon_0 * R * U_0)/3)/(4pi * epsilon_0 * R/2) = (2 U_0)/3 $

Die Potentiale sind somit (wie zuvor erwähnt) aufgrund des Ladungsaustauschs zwischen den Kugeln bis zu einem Ladungsgleichgewicht gleich.

=== Gleichgewicht im elektrischen Feld

Warum ist ein statisches elektrisches Feld nicht in der Lage, ein geladenes Teilchen in einem stabilen Gleichgewicht zu halten?

#line(length: 100%)

Stabiles Gleichgewicht erfordert, dass das Potential an der Gleichgewichtsposition $arrow(r)_0$ ein lokales Minimum (für positive Ladung) besitzt, d.h.:
$ (partial^2 Phi)/(partial x^2) + (partial^2 Phi)/(partial y^2) + (partial^2 Phi)/(partial z^2) > 0 $

Im ladungsfreien Raum muss das elektrostatische Potential jedoch die Laplace-Gleichung erfüllen:
$ Delta Phi = (partial^2 Phi)/(partial x^2) + (partial^2 Phi)/(partial y^2) + (partial^2 Phi)/(partial z^2) = 0 $

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

(Ich habe die folgende Aufgabe komplett von der KI machen lassen weil... ja)

*Potential von Dipol 1:* Das Coulomb-Potential der zwei Ladungen $plus.minus q_1$ im Abstand $l_1$
(mit $p_1 = q_1 l_1$) ergibt für $r >> l_1$ das bekannte Dipolpotential:
$ Phi_1(arrow(r)) = 1/(4pi epsilon_0) (arrow(p)_1 dot hat(r))/r^2
                  = 1/(4pi epsilon_0) (p_1 cos theta)/r^2
                  = p_1/(4pi epsilon_0) z/r^3 $

*Energie von Dipol 2 im Feld von Dipol 1:* Die potentielle Energie der Ladungen $plus.minus q_2$
von Dipol 2 an der Position $arrow(R) = d hat(x)$ lautet (mit $arrow(r)_plus.minus = d hat(x) plus.minus l_2/2 hat(n)$):
$ U = q_2 [Phi_1(arrow(r)_+) - Phi_1(arrow(r)_-)]
    approx q_2 l_2 hat(n) dot nabla Phi_1 |_(d hat(x))
    = arrow(p)_2 dot nabla Phi_1 |_(d hat(x)) $

*Gradient des Dipolpotentials* an der Stelle $(d, 0, 0)$:
$ partial/(partial x) (z/r^3)|_((d,0,0)) = z dot (-3x/r^5)|_((d,0,0)) = 0 $
$ partial/(partial z) (z/r^3)|_((d,0,0)) = 1/r^3|_((d,0,0)) = 1/d^3 $

Damit ist $nabla Phi_1|_(d hat(x)) = p_1/(4pi epsilon_0 d^3) hat(z)$, und die potentielle Energie ist:
$ U = arrow(p)_2 dot nabla Phi_1|_(d hat(x)) = p_1/(4pi epsilon_0 d^3) (arrow(p)_2 dot hat(z)
          = (p_1 p_2 cos alpha)/(4pi epsilon_0 d^3)) $

wobei $alpha$ der Winkel zwischen $arrow(p)_2$ und der $z$-Achse ist.

*Physikalische Interpretation:* Dipol 1 erzeugt auf der $x$-Achse (senkrecht zu $arrow(p)_1$)
ein Feld *ausschließlich in* $-hat(z)$-Richtung. Nur die $z$-Komponente von $arrow(p)_2$ koppelt daran.

*Extrema:*

- *Minimum* ($U_"min" = -p_1 p_2 \/ (4pi epsilon_0 d^3)$): $alpha = pi$, d.h. $arrow(p)_2 parallel -hat(z)$
  (antiparallel zu $arrow(p)_1$). Die Dipole zeigen in entgegengesetzte Richtungen.

- *Maximum* ($U_"max" = +p_1 p_2 \/ (4pi epsilon_0 d^3)$): $alpha = 0$, d.h. $arrow(p)_2 parallel +hat(z)$
  (parallel zu $arrow(p)_1$). Die Dipole zeigen in dieselbe Richtung.

- *Neutralfall* ($U = 0$): $alpha = pi/2$, d.h. $arrow(p)_2 perp hat(z)$, also $arrow(p)_2$ in der $x y$-Ebene.

=== Elektrisches Potential eines Dipols entlang den Achsen

Ein elektrischer Dipol mit $p parallel z$-Achse befindet sich im Koordinatenursprung. Ausgehend vom Coulomb Gesetz leiten Sie das elektrische Potenzial dieses Dipols entlang der:
+ $X$-Achse
+ $Y$-Achse
+ $Z$-Achse

#line(length: 100%)

Ein elektrischer Dipol besteht aus zwei Ladungen $+q$ bei $z = +d/2$ und $-q$ bei $z = -d/2$, mit Dipolmoment $p = q * d parallel z$-Achse.

Das Potential ergibt sich durch Superposition der beiden Punktladungen:
$ Phi(r) = q/(4pi * epsilon_0) * (1/r_+ - 1/r_-) $

wobei $r_+$ und $r_-$ die Abstände von $+q$ bzw. $-q$ zum Aufpunkt sind.

a) Aufpunkt $P = (x, 0, 0)$

$ r_+ = sqrt(x^2 + (d/2)^2), quad r_- = sqrt(x^2 + (d/2)^2) $

Da beide Ladungen den gleichen Abstand zum Aufpunkt haben:
$ r_+ = r_- arrow.double Phi(x, 0, 0) = q/(4pi epsilon_0) * (1/r_+ - 1/r_-) = 0 $

Das Potential verschwindet auf der gesamten $x$-Achse, d.h. sie liegt in der Äquatorialebene des Dipols.

b) Aufpunkt $P = (0, y, 0)$

Aus Symmetriegründen gilt dasselbe wie auf der $x$-Achse:
$ r_+ = sqrt(y^2 + (d/2)^2) = r_- arrow.double Phi(0,y,0) = 0 $

c) Aufpunkt $P = (0, 0, z)$ mit $z > 0$

$ r_+ = abs(z - d/2), quad r_- = abs(z + d/2) $

$ Phi(0,0,z) = q/(4pi * epsilon_0) * (1/(z - d/2) - 1/(z + d/2)) = q/(4pi * epsilon_0) * ((z + d/2) - (z - d/2))/((z - d/2)(z + d/2)) = q/(4pi * epsilon_0) * d/(z^2 - d^2/4) $
$ = p / (4pi * epsilon_0 * (z^2 - d^2/4)) $

== Dielektrika; Atomare Grundlagen; Elektrostatik in der Natur und Technik

=== Rest-Widerstand eines Dielektrikums

Ein realer Plattenkondensator (dielektrische Konstante des Dielektrikums $epsilon$) wird bis zu einer Spannung $U$ geladen und von der Batterie getrennt. Nach einer Zeit $tau$ wird am Kondensator nur die Hälfte der Spannung gemessen. Berechnen Sie den spezifischen Rest-Widerstand des Dielektrikums. Mit kurzer Herleitung, Ladungsverluste über die Kontakte vernachlässigen.

#line(length: 100%)

Ein realer Plattenkondensator wird durch das Dielektrikum modelliert als idealer Kondensator $C$ parallel zu einem Widerstand $R$ (Rest-Widerstand des Dielektrikums).

Nach dem Trennen von der Batterie entlädt sich der Kondensator über seinen eigenen Rest-Widerstand. Die Spannung folgt dem bekannten Exponentialgesetz:
$ U(t) = U_0 * exp(-t/(R * C)) $

Mit der Bedingung $U(tau) = U_0/2$:
$ U_0/2 = U_0 * exp(-tau/(R * C)) arrow.double 1/2 = exp(-tau/(R * C)) $
$ ln(2) = tau/(R * C) arrow.double R = tau/(C * ln(2)) $
wobei für $C$ bei einem Plattenkondensator $C = epsilon * epsilon_0 * A/d$ gilt. Somit gilt für den Rest-Widerstand:

$ R = tau/(epsilon * epsilon_0 * A/d * ln(2)) = tau/(epsilon * epsilon_0 * ln(2)) * d/A = rho_s * d/A $
wobei $rho_s$ der gesuchte spezifische Widerstand ist.

=== Herleitung Formel Parallel- und Serien-Schaltung von Kondensatoren

Leiten Sie explizit die Formel für die Parallel- und Serien-Schaltung von Kondensatoren her.

#line(length: 100%)

Schaltet man mehrere Kondensatoren parallel, so herrscht an allen Kondensatoren dieselbe Spannung (sonst würde Ladung fließen, bis die Spannungen ausgeglichen sind). Die Ladungen addieren sich, sodass nach $Q = C*U$ auch für die Kapazitäten gilt:
$ C = sum_i C_i $

Die Kapazität von hintereinander geschalteten Kondensatoren lässt sich aus der Relation $U = integral arrow(E) dif s$ erkennen. Bei gleicher Feldstärke $arrow(E)$ in den Kondensatoren wird beim Hintereinanderschalten die Spannung größer. Bei gleicher Gesamtladung $Q$ muss dann gelten:
$ U = sum_i U_i = sum_i Q/C_i = Q * C arrow.double 1/C = sum_i 1/C_i $

Alternativ kann man die Formeln auch mithilfe der Formel $C = epsilon_0 * A/d$ herleiten: Bei der Parallelschaltung addiert man die Flächen, bei der Reihenschaltung die Abstände.

=== Parallel geschaltete Kondensatoren, einer mit Dielektrikum

Zwei parallel geschalteten Kondensatoren werden von der Batterie getrennt und in einen Kondensator ($C_2$) wird ein Dielektrikum mit $epsilon = 3$ eingebracht (ohne Luftspalt).
+ Bestimmen sie 
  + die Spannung an den beiden Kondensatoren,
  + die Ladung auf jedem Kondensator und 
  + die gespeicherte Gesamtenergie nachdem das Dielektrikum vollständig eingebracht worden ist.
+ Einbringen des Dielektrikums ($epsilon = 3$) in einen der beiden parallel geschalteten Kondensatoren bei angeschlossener Batterie ($10"V"$). Bestimmen sie 
  + die Ladung auf jedem Kondensator, 
  + die Gesamtenergie.
Diskutieren sie die unterschiedlichen Energien von a) und b).

#line(length: 100%)

a) 1) Bei parallel geschalteten Komponenten bleibt die Spannung gleich, d.h. $U = U_(C 1) = U_(C 2)$.

2) Für die Ladung eines Kondensators gilt $Q = C * U$, wobei sich $C$ durch das Einbringen eines Dielektrikums verändert:
$ C_1 = epsilon_0 * A/d, quad C_2 = epsilon * epsilon_0 * A/d = 3 * epsilon_0 * A/d = 3 * C_1 $

Bevor die Batterie getrennt worden ist und ohne Dielektrikum $C_1 = C_2 = C$ galt, war die Gesamtladung
$ Q_"ges" = Q_1 + Q_2 = C_1 * U_0 + C_2 ' * U_0 = 2 * C * U_0 $

Da die Kondensatoren parallel geschaltet sind, liegt an beiden die gleiche Spannung $U$:
$ Q_1 = C_1 * U = C * U, quad Q_2 = C_2 ' * U = 3 * C_1 * U = 3 * C * U $
$ arrow.double C * U + 3C * U = 2 * C * U_0 arrow.double U = U_0/2 = 5"V" $
$ arrow.double Q_1 = C * U_0/2, quad Q_2 = 3 * C * U_0/2 $

3) Die Gesamtenergie lässt sich mit der Formel $W = 1/2 * C * U^2$ berechnen (Herleitung siehe @zylinderkondensator_dielektrikum (b)):
$ W = 1/2 * (C_1 + C_2 ') * U^2 = 1/2 * 4 * C * (U_0/2)^2 = C * U_0^2/2 = 1/2 * C * 100 "J" $

b) 1) Wenn die $10"V"$-Batterie angeschlossen bleibt, währen das Dielektrikum eingebracht wird, bleibt die Spannung konstant bei $U_0 = U = 10"V"$. D.h. für die Ladungen gilt jetzt:
$ Q_1 = C_1 * U_0 = C * U_0, quad Q_2 = C_2 ' * U_0 = 3 * C_1 * U_0 = 3 * C * U_0 $

2) Die Gesamtenergie hat sich auch verändert:
$ W = 1/2 * C * U_0^2 + 1/2 * 3 * C * U_0^2 = 2 * C * U_0^2 = 2 * C * 100 "J" $

Bei Fall (a) nimmt die Gesamtenergie ab, denn die fehlende Energie wird als mechanische Arbeit freigesetzt. Das Dielektrikum wird vom elektrischen Feld aktiv hineingezogen.

Bei Fall (b) nimmt die Gesamtenergie zu, weil die "unendliche" Quelle, also die Batterie, die Kondensatoren wie bei Fall (a) auflädt, bis ihre Kapazität vollständig gefüllt ist. Da sich die Kapazität durch das Einbringen des Dielektrikums vergrößert hat, hat sich jetzt auch die Gesamtenergie vergrößert.

=== Beziehungen dielektrische Verschiebungsdichte und elektrisches Feld <brechung_efeld>

+ Aus welchen Beziehungen ergibt sich die Stetigkeit der Tangential- bzw. der Normalkomponenten von $arrow(D)$ und $arrow(E)$? (Schematische Zeichnung)
+ welche Komponenten sind stetig?
+ Leiten sie die Brechung von $arrow(D)$ und $arrow(E)$ an einer Grenzfläche von zwei Materialien mit $epsilon_1 > epsilon_2$ her.

#line(length: 100%)

a) Wir denken uns eine Integration $integral.cont arrow(E) dif arrow(s)$ entlang dem rechteckigen Weg ABCD wie in der Abbildung gezeigt. Die Dicke $d$ dieses Rechtecks sei vernachlässigbar klein, sodass praktisch nur noch der "Hinweg" AB im Vakuum und der "Rückweg" CD im Dielektrikum übrig bleiben. Wegen
$ integral_A^B arrow(E)^"Vak"_parallel dif arrow(s)_1 + integral_C^D arrow(E)^"Diel"_parallel dif arrow(s)_2 = integral.cont arrow(E) dif arrow(s) = 0 $
und $dif arrow(s)_1 = - dif arrow(s)_2$ folgt:
$ arrow(E)^"Vak"_parallel = arrow(E)^"Diel"_parallel $

#image("assets/fragenkatalog/dielektrikum_brechung_parallel.png")

b)
#table(
  columns: 4,
  align: horizon,
  inset: 8pt,
  table.header(
    [*Feldgröße*],
    [*Komponente*],
    [*Stetig?*],
    [*Bedingung*]
  ),
  [$arrow(E)$], [Tangential/Parallel], [Ja], [Immer],
  [$arrow(E)$], [Normal], [Nein], [Sprung um $epsilon_1/epsilon_2$],
  [$arrow(D)$], [Tangential/Parallel], [Nein], [Sprung um $epsilon_2/epsilon_1$],
  [$arrow(D)$], [Normal], [Ja], [keine freien Flächenladungen]
)

c) Trifft der $arrow(E)$-Vektor unter dem Winkel $alpha$ aus dem ersten Material ($epsilon_1$) auf die Grenzfläche auf, so bildet er im zweiten Material ($epsilon_2$) einen Winkel $beta$ mit der Grenzflächennormalen, für den wegen $epsilon_1 * E^"Vak"_perp = epsilon_2 * E^"Diel"_perp $ gilt:
$ tan(beta) = epsilon_1 * (E^"Diel"_parallel)/(E^"Diel"_perp) = epsilon_2 * (E^"Vak"_parallel)/(E^"Vak"_perp) = epsilon_2/epsilon_1 * tan(alpha) arrow.double tan(alpha)/tan(beta) = epsilon_1/epsilon_2 $

Daraus ergibt sich mit $arrow(D) = epsilon * epsilon_0 * arrow(E)$:
$ arrow(D)^"Vak"_parallel = epsilon_1/epsilon_2 * arrow(D)^"Diel"_parallel $

=== Zylinderkondensator mit Dielektrikum <zylinderkondensator_dielektrikum>

+ Berechnen Sie die Kapazität eines Zylinderkondensators mit dem Innenradius $R_1$ und Außenradius $R_2$. Der Kondensator ist vollständig mit einem Dielektrikum ausgefüllt (dielektrische Konstante $epsilon$).
+ Leiten Sie die Formel für die Energie dieses Kondensators als Funktion von $Q$ (Ladung) und $U$ (Spannung)
+ Wie hoch ist der Wert der dielektrischen Konstante eines Metalls aus Sicht der Elektrostatik (Begründung!)?

#line(length: 100%)

a) Für die Kapazität eines Kondensators mit einem Dielektrikum gilt $C = epsilon * Q/U$. Um auf das Potential im Zwischenbereich ($R_1 < r < R_2$) zu kommen, lässt sich zuerst das elektrische Feld mit dem Satz von Gauß berechnen:
$ integral.cont arrow(E) dif arrow(A) = Q_"in"/epsilon_0 arrow.double E(r) = Q/(2pi * r * l * epsilon_0) $

Für das Potential kann das elektrische Feld integriert werden:
$ U = Phi(r) = - integral_(R_2)^(R_1) E(r) dif r = - integral_(R_2)^(R_1) Q/(2pi * r * l * epsilon_0) dif r = -Q/(2pi * l * epsilon_0) integral_(R_2)^(R_1) 1/r dif r $
$ -Q/(2pi * l * epsilon_0) * (ln(R_1) - ln(R_2)) = Q/(2pi * l * epsilon_0) * ln(R_2/R_1) $

Eingesetzt in die Formel für die Kapazität:
$ C = epsilon * Q/U = epsilon * Q/(Q/(2pi * l * epsilon_0) * ln(R_2/R_1)) = (2pi * l * epsilon * epsilon_0)/ln(R_2/R_1) $

b) Die Energie wird durch langsames Aufladen von $q = 0$ auf $q = Q$ gewonnen jedes Ladungsinkrement $dif q$ muss gegen die bereits vorhandene Spannung $U=Q/C$ verschoben werden:
$ dif W = U * dif q = q/C dif q $
$ W = integral_0^Q q/C dif q = 1/C * Q^2/2 = Q^2/(2*C) $

Mit $Q = C * U$ lässt sich das folgend umschreiben:
$ W = Q^2/(2*C) = 1/2 * Q * U = 1/2 * C * U^2 $

c) Aus der Sicht der Elektrostatik ist die dielektrischen Konstante eines Metalls unendlich groß, da im Inneren kein elektrisches Feld existiert.
$ arrow(D) = epsilon * epsilon_0 * arrow(E) arrow.double epsilon = D/(epsilon_0 * E) = D/(epsilon_0 * 0) arrow infinity $

=== Elektrisches Feld eines unendlichen, dielektrischen Stabes

Ein unendlich langer dielektrischer Stab (Dielektrizitätskonstante $epsilon$) mit Radius $R$ trägt eine Oberflächenladung $sigma$ [$"C"/"m"^2$]. Berechnen Sie das elektrische Feld und das Potential:
+ im Innenraum
+ im Außenraum
+ Skizzieren Sie das Feld und das Potential
+ Diskutieren Sie die Symmetriebedingungen für die Feldkonfiguration

#line(length: 100%)

a) Wenn im Innenraum ($r < R$) das Gaußsche Gesetz (in Zylinderanordnung wegen Symmetrie) für die Berechnung des elektrischen Feldes angewendet wird, sind keine Ladung eingeschlossen (weil nur welche an der Oberfläche) und somit gilt:
$ integral arrow(E) dif arrow(A) = Q/(epsilon * epsilon_0) = 0/(epsilon * epsilon_0) arrow.double arrow(E) = 0 $

Das Potential ist somit im Innenraum beliebig aber konstant, denn das elektrische Feld ändert sich nicht (immer 0).

b) Im Außenraum ($r > R$) gilt für die vom Gauß-Zylinder eingeschlossene Ladung:
$ Q = sigma * underbrace(2pi * R * L, "Zylindermantel") $

Somit folgt für das elektrische Feld:
$ integral arrow(E) dif arrow(A) = (sigma * 2pi * R * L)/epsilon_0 $
$ E * 2pi * r * L * hat(e)_r = (sigma * 2pi * R * L)/epsilon_0 arrow.double arrow(E)(r) = (sigma * R)/(epsilon_0 * r) * hat(e)_r $

Und für das Potential mit der Bedingung $Phi(R) = 0$ gilt:
$ Phi(r) = -integral_R^r E dif r' = -integral_R^r (sigma * R)/(epsilon_0 * r') dif r' = -(sigma * R)/(epsilon_0) * integral_R^r 1/r' dif r' $
$ = -(sigma * R)/(epsilon_0) * (ln(r) - ln(R)) = (sigma * R)/(epsilon_0) * (ln(R) - ln(r)) = (sigma * R)/(epsilon_0) * ln(R/r) $

c) Wörtliche Beschreibung der Skizze: Das E-Feld ist von $0$ bis $R$ null, bei $R$ springt es auf $sigma/epsilon_0$ und danach fällt es proportional zu $1/r$ ab. Das Potential bleibt von $0$ bis $R$ konstant ($Phi = 0$), außen ist es negativ und nimmt proportional zu $ln(R/r)$ ab.

d) Der dielektrische Stab besitzt eine Translations- sowie eine Rotationssymmetrie entlang der $z$-Achse, was uns erlaubt, die Gaußsche Fläche zur Berechnung des E-Felds als koaxialen Zylinder anzunehmen und kommen somit drauf, dass das E-Feld (wegen der Symmetrie) nur von $r$ abhängt.

=== Dielektrische Kugel mit eingebrachter Ladung

In der Mitte einer dielektrischen Kugel (Radius $R_0$, diel. Konstante $epsilon$) befindet sich eine "externe" Ladung $Q$. (d.h. vor dem Einbringen der Ladung war die Kugel ungeladen). Finden Sie und zeichnen Sie das elektrische Feld und das Potential im gesamten Raum.

#line(length: 100%)

Da die freie Ladung $Q$ im Zentrum liegt und das System Kugelsymmetrie besitzt, gilt für die dielektrische Verschiebung:
$ integral.cont arrow(D) dif arrow(A) = Q_"frei" arrow.double D(r) * 4pi * r^2 = Q arrow.double arrow(D) = Q/(4pi * r^2) * hat(r) $

Mit $arrow(D) = epsilon * epsilon_0 * arrow(E)$ im Inneren bzw. $arrow(D) = epsilon_0 * arrow(E)$ außen gilt somit für das elektrische Feld im Innenraum ($r < R_0$):
$ arrow(E)(r) = 1/(epsilon * epsilon_0) * Q/(4pi * r^2) * hat(r) $

Im Außenraum ($r > R_0$) fehlt einfach die dielektrische Konstante $epsilon$:
$ arrow(E)(r) = 1/(epsilon_0) * Q/(4pi * r^2) * hat(r) $

D.h. das Feld springt an der Grenzfläche $r = R_0$ um den Faktor $epsilon$.

Da das Potential im Innenraum von dem im Außenraum abhängt, sollte zuerst das im Außenraum ($r > R_0$) mit der Randbedingung $Phi(infinity) = 0$ berechnet werden:
$ Phi(r) = -integral_infinity^r E_"out" (r') dif r' = -integral_infinity^r Q/(4pi * epsilon_0 * r'^2) dif r' = Q/(4pi * epsilon_0 * r) $

Für das Potential im Innenraum ($r < R_0$) muss das Integral an der Grenzfläche $R_0$ aufgeteilt werden, da $E$ dort springt:
$ Phi(r) = -integral_infinity^(R_0) E_"out" (r') dif r' - integral_(R_0)^r E_"in" (r') dif r' = Q/(4pi * epsilon_0 * R_0) - integral_(R_0)^r Q/(4pi * epsilon * epsilon_0 * r'^2) dif r' $
$ = Q/(4pi * epsilon_0 * R_0) - Q/(4pi * epsilon * epsilon_0) * [-1/r']_(R_0)^r = Q/(4pi * epsilon_0 * R_0) + Q/(4pi * epsilon * epsilon_0) * (1/r - 1/R_0) $
$ = Q/(4pi * epsilon_0) * (1/R_0 * (1 - 1/epsilon) + 1/(epsilon * r)) $


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

Unter dem Einfluss des elektrischen Feldes $E$ erfahren Ladungsträger mit der Ladung $q$ und der Masse $m$ eine zusätzliche Kraft
$ arrow(F) = q * arrow(E) $
welche zu einer Beschleunigung $arrow(a) = arrow(F)/m$ führt. Während der Zeit $tau_s = tau/overline(v)$ nach dem letzten Stoß erhalten sie daher eine Zusatzgeschwindigkeit
$ Delta arrow(v) = a * tau_s = F/m * tau/overline(v) $
die aber im Allgemeinen sehr kleine ist gegenüber ihrer Geschwindigkeit $arrow(v)$ und auch klein ist gegen die Änderung $Delta arrow(v)_i = arrow(v)_i - arrow(v)_(i-1)$ beim $i$-ten Stoß. Mit der mittleren Zeit $chevron.l tau_s chevron.r$ nach dem letzten Stoß (= halbe mittlere Zeit zwischen zwei Stößen) erhält man dann die mittlere Zusatzgeschwindigkeit $chevron.l Delta v chevron.r = (F/m) * chevron.l tau_s chevron.r$. Ohne äußeres Feld ist $chevron.l Delta arrow(v) chevron.r = arrow(0)$.

Diese mittlere Zusatzgeschwindigkeit
$ arrow(v)_D = chevron.l Delta arrow(v) chevron.r $
heißt Driftgeschwindigkeit. Sie führt bei positiven Ladungen zu einem Ladungstransport in Feldrichtung (bei negativen Ladungen entgegengesetzt zur Feldrichtung) mit einer Stromdichte
$ j = n * q * arrow(v)_D = rho_"el" * arrow(v)_D $

Aus den obigen Formeln erhält man mit $arrow(F) = q * arrow(E)$ und $arrow(v)_D = chevron.l Delta arrow(v) chevron.r$:
$ j = (n * q^2 * tau/overline(v))/m * arrow(E) = sigma_"el" * arrow(E) $
wobei $sigma_"el"$ die elektrische Leitfähigkeit ist.

=== Gesamtwiderstand von geometrischen Widerstandsnetzwerken

Bestimmen Sie den Gesamtwiderstand $R$ zwischen A und C (A und B) des Netzwerks aus
Einzelwiderständen $R_0$. (Genauso für Induktivitäten $L_0$ / Kapazitäten $C_0$ oder andere Anordnungen: Ikosaeder, Würfel, etc.)

#grid(
  columns: (auto, auto, auto),
  rows: (10em),
  align: center,
  gutter: 6em,
  image("assets/fragenkatalog/widerstandsnetzwerk_1.png"),
  image("assets/fragenkatalog/widerstandsnetzwerk_2.png"),
  image("assets/fragenkatalog/widerstandsnetzwerk_3.png"),
)

#line(length: 100%)

Für alle Aufgaben mit geometrischen Widerstandsnetzwerken ist es meist nützlich, die Stern-Dreieck-Transformation zu kennen:
#image("assets/fragenkatalog/Stern-Dreieck-Transformation.png", width: 80%)

Für die Dreieck-Stern-Transformation sind zur Bestimmung der Ersatzwiderstände folgende Berechnungen notwendig:
$ R_a = (R_(a c) * R_(a b))/(R_(a c) + R_(a b) + R_(b c)), quad R_b = (R_(a b) * R_(b c))/(R_(a c) + R_(a b) + R_(b c)), quad R_c = (R_(a c) * R_(b c))/(R_(a c) + R_(a b) + R_(b c)) $

Für die Stern-Dreieck-Transformation sind zur Bestimmung der Ersatzwiderstände folgende Berechnungen notwendig:
$ R_(a c) = (R_a * R_b + R_b * R_c + R_c * R_a)/R_b, quad R_(a b) = (R_a * R_b + R_b * R_c + R_c * R_a)/R_c, $
$ R_(b c) = (R_a * R_b + R_b * R_c + R_c * R_a)/R_a $

Um den Gesamtwiderstand für das Gitter-Widerstandsnetzwerk (linke Abbildung) zwischen den Knoten A und B auszurechnen, kann die Spiegelsymmetrie entlang der horizontalen Mittellinie ausgenutzt werden. Es fließt kein Strom entlang der Mittelreihe, da alle Knoten dort auf gleichem Potential liegen, d.h. die Knoten können zu einem Knoten zusammengefasst werden. Somit zerfällt das Netzwerk in zwei identische Hälften, die abwechselnd durch das Zusammenfassen von seriellen/parallen Ecken zu einem Gesamtwiderstand zusammengefasst werden können:
#image("assets/fragenkatalog/scuffed_widerstandsnetzwerk.png")

Um im Gitter-Widerstandsnetzwerk den Gesamtwiderstand zwischen den Knoten A und C zu berechnen, kann die Dreieck-Stern-Transformation verwendet werden:
#grid(
  columns: (auto, auto),
  rows: (11em),
  align: center,
  gutter: 6em,
  image("assets/fragenkatalog/scuffed_widerstandsnetzwerk_2.jpg"),
  image("assets/fragenkatalog/scuffed_widerstandsnetzwerk_3.jpg")
)

Mit der Spiegelsymmetrie von den Punkten D und E lässt sich wieder sagen, dass diese auf gleich Potential liegen und zwischen ihnen kein Strom fließt. Somit lassen sich D und E wieder zu einem Knoten in der Mitte zusammenfassen, anschließend kann wie oben das verbleibende Widerstandsnetzwerke mit einer Kombination von seriellen/parallelen Widerständen zu einem Gesamtwiderstand zusammenfassen.

Beim Würfel dagegen lassen sich nach gleicher "Distanz" vom Punkt A bzw. B die Knoten mit idealen Leitern verbinden, da an diesen Knoten das gleiche Potential liegt und somit kein Strom zwischen den Leitern fließen würde. Diese Leiter zeigen, dass die Widerstände jeweils immer parallel zueinander sind, was nun folgende Rechnung erlaubt:
$ R_"ges" = (R*R*R)/(R+R+R) + (R*R*R*R*R*R)/(R+R+R+R+R+R) + (R*R*R)/(R+R+R) = R/3 + R/6 + R/3 = 5/6 * R $

Das gleiche funktioniert ebenfalls beim Ikosaeder, wobei hier jedoch bereits Verbindungen zwischen den Punkten mit gleichem Potential existieren. Da durch diese jedoch kein Strom fließt, können sie auch als ideale Leiter angenommen werden (weils kein Unterschied macht), was die Schaltung wie die vom Würfel auf drei in Serie geschalteten parallelen Teile aufteilt:
$ R_"ges" = R/5 + R/10 + R/5 = R/2 $

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

a) die Menge der statischen Ladung, die sich im Kabel befindet (Dielektrizitätskonstante des Dielektrikum $epsilon$, Formeln aus Formelsammlung sind nicht erlaubt)

In diesem Experiment wird gleichzeitig ein (extrem geringer) Strom I gemessen. Berechnen Sie:

b) Spezifischen Widerstand des Dielektrikums.

#image("assets/fragenkatalog/koaxialkabel.png")

#line(length: 100%)

a) Im Zwischenbereich ($R_1 < r < R_2$) lässt sich das elektrische Feld mit dem Satz von Gauß berechnen:
$ integral.cont arrow(E) dif arrow(A) = Q_"in"/epsilon arrow.double E(r) = Q/(2pi * r * l * epsilon) $

Das Potential zwischen $R_1$ und $R_2$ lässt sich über die Integration des elektrischen Feldes bekommen:
$ U = Phi = - integral_(R_2)^(R_1) E(r) dif r = - integral_(R_2)^(R_1) Q/(2pi * r * l * epsilon) dif r = -Q/(2pi * l * epsilon) integral_(R_2)^(R_1) 1/r dif r $
$ -Q/(2pi * l * epsilon) * (ln(R_1) - ln(R_2)) = -Q/(2pi * l * epsilon) * ln(R_1/R_2) = Q/(2pi * l * epsilon) * ln(R_2/R_1) $

Umgeformt auf die (statische) Ladung $Q$:
$ U = Q/(2pi * l * epsilon) * ln(R_2/R_1) arrow.double Q = (U * 2pi * l * epsilon)/ln(R_2/R_1) $

b) Der gemessene Strom $I$ ist ein Leckstrom durch das Dielektrikum von Innen- nach Außenleiter. Somit gilt für die Stromdichte im Dielektrikum:
$ J(r) = E(r)/rho = (U/(r * ln(R_2/R_1)))/rho = U/(rho * r * ln(R_2/R_1)) $

Der Gesamtstrom und somit der spezifische Innenwiderstand von innen nach außen (durch eine Zylinderfläche bei $R_1 < r < R_2$) ist somit:
$ I = J(r) * 2pi * r * l = (U * 2pi * r * l)/(rho * r * ln(R_2/R_1)) = (U * 2pi * l)/(rho * ln(R_2/R_1)) arrow.double rho = (U * 2pi * l)/(I * ln(R_2/R_1)) $

= Statische Magnetfelder

== Magnetfeld, Fluss; Magnetfeld stationäre Ströme

=== Vektorpotential

Geben Sie die Definition des Vektorpotentials. Wie kann man das Vektorpotential aus gegebenen Verteilung der Stromdichte berechnen? (Herleitung der Integralgleichung)

#line(length: 100%)

(Definition in Bezug auf Magnetfelder):

Da $"div"(arrow(B)) = 0$ gilt, kann man eine vektorielle Feldgröße $arrow(A)(r)$ durch die Relation $arrow(B) = "rot"(arrow(A))$ definieren, die das Vektorpotential des Magnetfeldes $arrow(B)(arrow(r))$ heißt. Dadurch wird automatisch $"div"(arrow(B)) = 0$ erfüllt, weil immer gilt:
$ "div"(arrow(B)) = nabla dot (nabla times A) = 0 $

Durch die Definitionsgleichung $arrow(B) = "rot"(arrow(A))$ ist das Vektorpotential $arrow(A)(arrow(r))$ noch nicht völlig festgelegt, weil z.B. auch ein anderes Vektorpotential
$ arrow(A)' = arrow(A) + "grad"(f) $
mit einer beliebigen skalaren Ortsfunktion $f(arrow(r))$ wegen $"rot"("grad"(f)) = arrow(0)$ auch genügt, um die Gleichung zu erfüllen, d.h. es ergibt sich das gleiche Magnetfeld $arrow(B)$. Man muss daher noch eine Zusatzbedingung (Eichbedingung) an $arrow(A)$ stellen:
$ "div"(arrow(A)) = 0 quad "(Coulomb-Eichung)" $

Um das (magnetische) Vektorpotential aus einer gegebenen Verteilung der Stromdichte zu berechnen, braucht man folgende Relationen:
$ "rot"(arrow(B)) = mu_0 * arrow(j), quad arrow(B) = "rot"(arrow(A)), quad nabla times (nabla times arrow(A)) = "grad"("div"(arrow(A))) - "div"("grad"(arrow(A))) $

Einsetzen:
$ nabla times arrow(B) = mu_0 * arrow(j) = "grad"("div"(arrow(A))) - "div"("grad"(arrow(A))) $

Mit der Coulomb-Eichung ($"div"(arrow(A)) = 0$) und $"div"("grad"(arrow(A))) = Delta arrow(A)$ erhält man nun:
$ mu_0 * arrow(j) = "grad"(0) - Delta arrow(A) arrow.double Delta arrow(A) = -mu_0 * arrow(j) $

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

Das Magnetfeld im Inneren der vom Strom $I$ durchflossenen Spule mit $N$ Windungen ist praktisch homogen und das im Außenraum ist demgegenüber vernachlässigbar klein, wenn der Durchmesser der Spule mit $n$ Windungen pro $m$ klein gegenüber ihrer Länge $L$ ist. Wir integrieren auf dem in der Abbildung unten gestrichelt eingezeichneten Wege. Da nur die Strecke im Inneren einen merklichen Beitrag liefert (auf den Strecken $overline(A C)$ und $overline(D B)$ ist $arrow(B) perp dif arrow(s)$, und außen kann der Integrationsweg beliebig weit von der Spule entfernt gewählt werden, wo B sehr klein wird), erhalten wir:
$ integral.cont arrow(B) dif arrow(s) approx integral^A_B B dif s = B * L = N * mu_0 * I arrow.double B = (N * mu_0 * I)/L $

#image("assets/fragenkatalog/magnetfeld_mittelpunkt_spule.png")

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

Für eine dreieckige Stromschleife kann entweder mit Winkelfunktionen gearbeitet werden (welche mMn recht schnell unübersichtlich werden) oder man kann durch eine geschickte Wahl des Koordinatensystems und der Ausnutzung der Symmetrie die dreieckige Stromschleife wie die quadratische berechnen.

#image("assets/fragenkatalog/dreieck_stromschleife.svg")

Man erkennt an der obigen Abbildung, dass die $x$-Achse genau mit der rechten Stromleitung mitgeht, somit gilt wieder $dif arrow(s) = dif x * hat(x)$. Auf der $y$-Achse ist der Abstand vom Mittelpunkt zur Stromleitung somit stets $r = h/3$ (Innkreisradius vom gleichseitigen Dreieck), wobei $h$ folgend berechnet werden kann:
$ h = sqrt(a^2 - (a/2)^2) = (4*a^2)/4 - a^2/4 = sqrt(3)/2 * a arrow.double r = sqrt(3)/6 * a $

Für den Ortsvektor zum Mittelpunkt gilt nun:
$ arrow(r) = vec(-x, -r, 0) arrow.double dif arrow(s) times arrow(r) = vec(dif x, 0, 0) times vec(-x, -r, 0) = vec(0, 0, -r * dif x) $

In das Biot-Savart-Gesetz einsetzen (für Magnetfeld in $z$-Richtung, da sonst alles in $arrow(r)$ null ist):
$ B_Z = - mu_0/(4pi) * I * integral_(-a/2)^(a/2) (-r * dif x)/(x^2 + r^2)^(3/2) = mu_0/(4pi) * I * r * integral_(-a/2)^(a/2) 1/(x^2 + r^2)^(3/2) dif x $

Mit $u = r$:
$ integral 1/((x^2 + u^2)^(3/2)) dif x = x/(u^2 * sqrt(x^2 + u^2)) arrow.double B_Z = mu_0/(4pi) * I * r * lr(x/(r^2 * sqrt(x^2 + r^2))|)^(a/2)_(-a/2) $
$ = mu_0/(4pi) * I * r * ((a/2)/(r^2 * sqrt((a/2)^2 + r^2)) - (-a/2)/(r^2 * sqrt((-a/2)^2 + r^2))) $
$ = mu_0/(4pi) * I * a/(sqrt(3)/6 * a * sqrt(a^2/4 + (sqrt(3)/6 * a)^2)) = mu_0/(4pi) * I/(sqrt(3)/6) * 1/sqrt(a^2/4 + (3*a^2)/36) = mu_0/(4pi) * I/(sqrt(3)/6) * 1/(sqrt(12/36) * a) $
$ = (6 * sqrt(3) * mu_0 * I)/(4pi * sqrt(3) * a) = (3*mu_0*I)/(2pi * a) $

Da sich das Gesamtfeld in der Mitte symmetrisch aus den drei Seiten zusammensetzt, kann einfach mal $3$ multipliziert werden:
$ arrow(B)(vec(0,0,0)) = 3 * vec(0, 0, (3*mu_0*I)/(2pi * a)) = vec(0, 0, (9*mu_0*I)/(2pi * a)) $

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

Wenn der innere Zylinder den Radius $r_1$ und der äußere den Radius $r_2$ hat und beide die Länge $l$ haben, dann ist das Potential entlang der Oberfläche des inneren Zylinders
$ Phi(r_1) = -Q/(2pi * l * epsilon_0) * ln(r_1/r_2) = Q/(2pi * l * epsilon_0) * ln(r_2/r_1) $
(Herleitung der Formel siehe @zylinderkondensator)

Für die Kapazität eines Kondensators gilt $Q = C * U arrow.double C = Q/U$:
$ C = Q/Phi(r_1) = Q/(Q/(2pi * l * epsilon_0) * ln(r_2/r_1)) = (2pi * l * epsilon_0)/(ln(r_2/r_1)) $
Die Kapazität pro Längeneinheit eines Koaxialkondensators beträgt somit:
$ C/l = (2pi * epsilon_0)/ln(r_2/r_1) $

Die Ladung pro Längeneinheit (Linienladungsdichte) bei Potentialdifferenz $U$ ist dann:
$ lambda = C/l * U = (2pi * epsilon_0)/ln(r_2/r_1) * U $

Die Flächenladungsdichte auf dem inneren Zylinder ($r_1$):
$ sigma = lambda/(2pi * r_1) = ((2pi * epsilon_0)/ln(r_2/r_1) * U)/(2pi * r_1) = (epsilon_0 * U)/(r_1 * ln(r_2/r_1)) $

Da die Ladung rotiert, kann diese als Flächenstromdichte aufgefasst werden. Der rotierende innere Zylinder trägt die Oberflächenladung $sigma$ mit Umfangsgeschwindigkeit $v = omega * r_1$. Dies entspricht einer Flächenstromdichte (Strom pro Längeneinheit in $z$-Richtung):
$ J_s = sigma * v = sigma * omega * r_1 = (epsilon_0 * U * omega)/ln(r_2/r_1) $

Der äußere Zylinder ruht, er trägt zwar Ladung $-sigma$, d.h. er erzeugt aber keinen Strom.

Das Magnetfeld lässt sich für einen Zylinder sehr einfach mit der Flächenstromdichte $J_s$ berechnen. Die Ampere-Schleife schließt den Strom $J_s$ pro Längeneinheit ein, somit gilt $B = mu_0 * J_s$. Im Innenraum des kleinen Zylinders ($r < r_1$) ist das Magnetfeld somit homogen und axial:
$ arrow(B) = mu_0 * J_s * hat(z) = (mu_0 * epsilon_0 * U * omega)/ln(r_2/r_1) * hat(z) $

Zwischen den Zylindern ($r_1 < r < r_2$) gilt $arrow(B) = arrow(0)$, denn wenn die Zylinder wie laut Angabe "lang", also quasi unendlich lang sind, bleibt das Magnetfeld im Inneren des kleineren Zylinders "gefangen". Und weil der äußere Zylinder sich nicht dreht, induziert er kein extra Magnetfeld, wodurch außerhalb der zwei Zylinder ($r > r_2$) ebenfalls $arrow(B) = arrow(0)$ gilt.

=== Induzierte Spannung rotierender Stab im Magnetfeld

Ein Stab der Länge $L$ rotiert mit der Winkelgeschwindigkeit $omega$ um eines seiner Enden in einer Ebene senkrecht zum Magnetfeld $B$. Welche Spannung wird zwischen den Stabenden induziert?

#line(length: 100%)

Ein Ladungsträger im rotierenden Stab erfährt die Lorentzkraft $arrow(F) = q * (arrow(v) times arrow(B))$. Ein Stabelement $dif r$ im Abstand $r$ vom Drehpunkt bewegt sich mit der Bahngeschwindigkeit $v = omega * r$ senkrecht zum Stab, und da $arrow(B)$ senkrecht auf die Rotationsebene steht ist die Kraftkomponente entlang des Stabes somit $F_r = q * omega * r * B$. Das entspricht folgender induzierten Feldstärke pro Element:
$ F_r/q dif r = omega * r * B dif r $

Integriert über die Stablänge:
$ U = integral^L_0 omega * r * B dif r = (omega * L^2 * B)/2 $

=== Magnetfeld einer kreisförmigen Leiterschleife <mfeld_kreis_leiterschleife>

Berechnen sie das Magnetfeld einer kreisförmigen Leiterschleife mit dem Biot-Savartschen Gesetz im Mittelpunkt der Leiterschleife und entlang einer Symmetrieachse ($z$-Achse); zeichnen sie schematisch den Feldverlauf.

#line(length: 100%)

Das Biot-Savart-Gesetz im Demtröder:
$ arrow(B)(arrow(r)_1) = - mu_0/(4pi) * I * integral (hat(e)_12 times dif arrow(s))/r^2_12 = - mu_0/(4pi) * I * integral (dif arrow(s) times arrow(r)_12)/r^3_12 $

Liegt die Stromschleife in der $x,y$-Ebene, so hat nach dem Biot-Savart-Gesetz das Magnetfeld in der Schleifenebene nur eine $z$-Komponente, deren Betrag im Aufpunkt $P_1(x,y,0)$ wegen $|hat(e)_12 times dif arrow(s)| = sin(phi) dif s$ den Wert
$ B_Z = mu_0/(4pi) * I * integral.cont sin(phi)/(r^2_12) dif s $
hat. Im Mittelpunkt des Kreises ist $r_12 = R$ und $phi = pi/2$, sodass man dort erhält:
$ B_Z = (mu_0 * I)/(2 * R) $

Auf der Symmetrieachse erhalten wir aus dem Biot-Savart-Gesetz den Beitrag $dif arrow(B)$ des Wegelements $dif s$ zum Magnetfeld $arrow(B)$:
$ dif arrow(B) = - mu_0/(4pi) * I * (arrow(r) times dif arrow(s))/r^3 $

Bei der Integration über alle Wegelemente des Kreises mitteln sich die Komponenten $dif B_perp = dif B * sin(alpha)$ senkrecht zur Symmetrieachse zu null. Es bleibt nur die Parallelkomponente $dif B_parallel = dif B * cos(alpha)$, die bei der Integration wegen $|arrow(r) times dif arrow(s)| = R/cos(alpha) dif s$ ergibt:
$ B_parallel = B_Z = integral abs(dif B_parallel) = integral abs(dif B) * cos(alpha) $

Einsetzen von $dif arrow(B)$ liefert:
$ B_Z (z) = (mu_0 * I)/(4pi * r^3) * integral.cont R * dif s = (mu_0 * I * R)/(4pi * r^3) * 2pi * R = (mu_0 * I * R^2)/(2 * (z^2 + R^2)^(3/2) $

#image("assets/fragenkatalog/kreis_stromschleife.png")

#image("assets/fragenkatalog/feldverlauf_kreis_stromschleife.png")

=== Magnetfeld zweier zueinander parallelen Stromleitungen

Zwei zueinander parallele unendlich lange Stromleitungen tragen gleichen Strom $I$ (siehe Abb.).
+ Berechnen Sie das magnetische Feld entlang der $x$-Achse $(x,0,0)$ und der $y$-Achse $(0,y,0)$
+ Berechnen Sie den ersten nicht-verschwindenden Term der Taylor-Entwicklung beider Formeln für $1/x,1/y << 1/d$

#image("assets/fragenkatalog/parallele_stromleitungen.svg")

#line(length: 100%)

a) Die Magnetfeldlinien um einen vom Strom $I$ durchflossenen Draht sind konzentrische Kreise, auf denen jeweils $abs(arrow(B) (arrow(r))) = "const"$ gilt, d.h.:
$ integral.cont arrow(B) * dif arrow(s) = integral^(2pi)_0 r * B * dif phi = r * B(r) * 2pi = mu_0 * I arrow.double B(r) = (mu_0 * I)/(2pi * r) $

Da der Strom in die gleiche Richtung fließt, sind die Magnetfelder im Mittelpunkt zwischen den Leitungen entgegengesetzt. Man kann sie mit Addition bzw. Subtraktion für die $x$-Achse zusammenfügen, wobei sie immer in Richtung von $hat(y)$ zeigen:
$ arrow(B)(x) = (mu_0 * I)/(2pi * (d+x))*hat(y) - (mu_0 * I)/(2pi * (d-x))*hat(y) = (mu_0 * I)/(2pi) * (1/(d-x) - 1/(d+x))*hat(y) $
$ = (mu_0 * I)/(2pi) * (d - x - d - x)/(d^2 - x^2)*hat(y) = -(mu_0 * I * x)/(pi * (d^2 - x^2))*hat(y) $

Für die $y$-Achse gilt das gleiche, aber diesmal sind beide Leiter immer gleich weit entfernt. Es kommt auch noch eine $hat(x)$-Komponente hinzu:
$ arrow(B)(y) = (mu_0 * I)/(2pi * sqrt(d^2+x^2))*vec(-y, -d, 0) + (mu_0 * I)/(2pi * sqrt(d^2+x^2))*vec(-y, +d, 0) = -(mu_0 * I * y)/(pi * sqrt(d^2+x^2))*hat(x) $

=== Kraft zwischen zwei zueinander parallelen Stromleitungen

Zwei zueinander parallele unendlich lange Stromleitungen tragen gleichen Strom $I$ und befinden sich im Abstand $d$ voneinander. Berechnen Sie explizit die die Kraft zwischen beiden Leitungen.

#line(length: 100%)

Die Kraft auf eine Ladung $dif q = rho * A * dif L$, die mit der Driftgeschwindigkeit $arrow(v)_D$ durch den Leiter 1 mit Querschnitt $A$ und Länge $dif L$ im Magnetfeld $arrow(B)$ des Leiters 2 fließt, ist die Lorentzkraft:
$ dif arrow(F) = dif q * (arrow(v)_D times arrow(B)) = I_1 * (dif arrow(L) times arrow(B)) $

Die Magnetfeldlinien um einen vom Strom $I$ durchflossenen Draht sind konzentrische Kreise, auf denen jeweils $abs(arrow(B) (arrow(r))) = "const"$ gilt, d.h.:
$ integral.cont arrow(B) * dif arrow(s) = integral^(2pi)_0 r * B * dif phi = r * B(r) * 2pi = mu_0 * I arrow.double B(r) = (mu_0 * I)/(2pi * r) $

Das Magnetfeld des Drahtes 2 ist somit
$ arrow(B) = (mu_0 * I)/(2pi * r) * hat(e)_phi $
wobei $hat(e)_phi$ der Einheitsvektor der Tangente an einen Kreis um den Draht ist. Bei parallelen Drähten in $z$-Richtung gilt: $arrow(B) perp arrow(v)_D$. Der Betrag pro Kraft pro Einheit Drahtlänge $L$ ist dann bei einem Abstand $r = d$ zwischen den Drähten folgender:
$ F/L = I * (mu_0 * I)/(2pi * d) = (mu_0 * I^2)/(2pi * d) $

=== Magnetfeld eines langen Zylinders

Ein langer magnetischer Zylinder (Symmetrieachse $z$, Permeabilität $mu$) trägt im Volumen einen Kreisstrom mit der variablen Stromdichte $j(r) = alpha * r$ [$"A"/"m"^2$], siehe Bild. Hier ist $r$ der Abstand von der $z$-Achse. Berechnen Sie das Magnetfeld im gesamten Raum.

#image("assets/fragenkatalog/magnetischer_zylinder.png")

#line(length: 100%)

Sei $R$ der Radius des Zylinders. Die Stromdichte $j(r) = alpha * r$ ist rotationssymmetrisch, daher gilt für die Feldstärke des Magnetfelds ebenfalls aus Symmetriegründen:
$ arrow(H) = H(r) * hat(phi) $

$arrow(H)$ lässt sich später mit dem Ampereschen Gesetz berechnen, zuerst muss jedoch noch der Strom $I(r)$ berechnet werden:
$ I(r) = integral.cont arrow(H) dif arrow(l) = H(r) * 2pi r $

Im Innenraum ($r < R$) gilt für den Strom und die magnetische Feldstärke:
$ I(r) = integral_0^r j(r') * 2pi * r' dif r' = 2pi * alpha * integral_0^r r'^2 dif r' = 2pi * alpha * r^3/3 $
$ arrow.double H(r) * 2pi * r = 2pi * alpha * r^3/3 arrow.double arrow(H) = (alpha * r^2)/3 * hat(phi) $

Im Außenraum ($r > R$):
$ I(r) = 2pi * alpha * integral_0^R r'^2 dif r' = 2pi * alpha * R^3/3 $
$ arrow.double H(r) * 2pi * r = 2pi * alpha * R^3/3 arrow.double arrow(H) = (alpha * R^3)/(3 * r) * hat(phi) $

Um von der Feldstärke $arrow(H)$ auf die Flussdichte $arrow(B)$ zu kommen, müssen $mu_0$ und $mu$ hinzumultipliziert werden, wobei im inneren des magnetischen Zylinders $mu_r = mu$ gilt (laut Angabe), außerhalb gilt $mu_r = 1$.

Im Innenraum ($r < R$):
$ arrow(B) = mu * mu_0 * (alpha * r^2)/3 * hat(phi) $

Im Außenraum ($r > R$):
$ arrow(B) = mu_0 * (alpha * R^3)/(3 * r) * hat(phi) $

=== Magnetfeld einer langen Spule

Eine lange Spule ist homogen zwischen Innenradius $R_i$ und Außenradius $R_a$ mit Draht gewickelt und wird mit konstantem Strom $I$ betrieben. Die Drahtdichte ist $sigma$ [Drähte/m²]. Das Innere des Zylinders ($r < R_i$) ist außerdem mit Material mit magnetischer Permeabilität $mu$ gefüllt. Berechnen Sie das magnetische Feld im gesamten Raum (innen-, zwischen-, außen-).

#image("assets/fragenkatalog/magnetfeld_lange_spule.png")

#line(length: 100%)

(Ich nehme an, dass die Drähte horizontal/azimuthal verlaufen und daher das Feld wie bei allen anderen Spulenbeispielen axial ist, d.h. $arrow(B) = B(r) * hat(z)$)

Da das Feld axial ist, verwendet kann ein rechteckiger Amperescher Weg in der $r z$-Ebene mit der Höhe $L$ verwendet werden. Eine Seite bei Radius $r$, die andere bei $r -> infinity$ (wo $H = 0$).

$ integral.cont arrow(H) dif arrow(l) = H(r) * L = I $

Die eingeschlossene Stromstärke $I$ ergibt sich aus den Drähten zwischen $r$ und $infinity$ mit Dichte $sigma$ und Strom $I$ pro Draht. Da Drähte nur zwischen $R_i$ und $R_a$ existieren, sind für den Innenraum ($r < R_i$) alle Drähte der Wicklung eingeschlossen:
$ H(r) * L = sigma * I * (R_a - R_i) * L arrow.double H = sigma * I * (R_a - R_i) $

Für den Kern gilt $arrow(B) = mu * mu_0 * arrow(H)$, also:
$ arrow(B) = mu * mu_0 * sigma * I * (R_a - R_i) * hat(z) $

Im Wicklungsbereich ($R_i lt.eq r lt.eq R_a$) sind nur die Drähte von $r$ bis $R_a$ eingeschlossen:
$ H(r) * L = sigma * I * (R_a - r) * L arrow.double H(r) = sigma * I * (R_a - r) $

Im Gegensatz zum Kern gibts im Wicklungsbereich kein Füllmaterial, d.h. $mu = 1$, somit gilt $arrow(B) = mu_0 * arrow(H)$:
$ arrow(B) = mu_0 * sigma * I * (R_a - r) * hat(z) $

Im Außenraum ($r > R_a$) sind keine Drähte eingeschlossen ($I = 0$), d.h.:
$ arrow(B) = arrow(0) $

=== Magnetfeld antiparalleler Ströme in Zylinderschalen

Eine idealisierte Induktivität bestehe aus zwei sehr langen, dünnen konzentrischen Zylinderschalen mit den Radien $r_1$ und $r_2$ sowie der Höhe $h$. Der innere Zylinder sei vom Strom $I_1$ durchflossen, der äußere von $I_2$. Beide Ströme seien gleich groß, $I_2$ zeige in die Papierebene, $I_1$ zeige aus der Papierebene (siehe Skizze). Die Ströme sind gleichmäßig über die Zylinderwände verteilt.
+ Berechnen Sie das magnetische Feld dieses Systems. Zeichnen Sie die Richtung des Magnetfeldes in der Skizze ein.
+ Berechnen Sie die Induktivität des Systems

#image("assets/fragenkatalog/magnetfeld_zylinderschalen.png")

#line(length: 100%)

a) Mit dem Ampereschen Gesetz lässt sich das Magnetfeld sehr einfach berechnen. Im Bereich innerhalb des inneren Zylinders ($r < r_1$) gilt für die Ampere-Schleife:
$ integral arrow(B) dif arrow(l) = mu_0 * 0 arrow.double B(r) = 0 $

Es ist kein Strom eingeschlossen ($I = 0$), d.h. das Magnetfeld ist ebenfalls null.

Im Zwischenbereich zwischen den Zylindern $r_1 < r < r_2$ umfasst die Schleife nur den Strom des inneren Zylinders, d.h.
$ integral arrow(B) dif arrow(l) = mu_0 * I_1 arrow.double B(r) = (mu_0 * I_1)/(2pi * r) $
Die Feldlinien verlaufen konzentrisch um die Achse. Ihre Richtung ergibt sich aus der rechten-Hand-Regel.

Laut Angabe gilt $I_2 = -I_1$, d.h. im Bereich ausserhalb des äußeren Zylinders wird $I_1$ sowie $-I_1$ eingeschlossen, was zu folgendem Magnetfeld führt:
$ integral arrow(B) dif arrow(l) = mu_0 * (I_1 - I_1) arrow.double B(r) = 0 $

b) Die magnetische Energie lautet
$ W = 1/(2 * mu_0) * integral B^2 dif V $

Da das Feld nur zwischen $r_1$ und $r_2$ existiert, wird das Volumenelement eines Zylindermantels ($dif V = 2pi * r * h dif r$) verwendet. Eingesetzt in die Formel für die magnetische Energie:
$ W = 1/(2 * mu_0) * integral_(r_1)^(r_2) ((mu_0 * I_1)/(2pi * r))^2 * 2pi * r * h dif r = 1/(2 * mu_0) * (mu_0^2 * I_1^2)/(4pi^2) * 2pi * h * integral_(r_1)^(r_2) 1/r^2 * r dif r $
$ = (mu_0 * I_1^2 * h)/(4pi) * integral_(r_1)^(r_2) 1/r dif r = (mu_0 * I_1^2 * h)/(4pi) * (ln(r_2) - ln(r_1)) = (mu_0 * I_1^2 * h)/(4pi) * ln(r_2/r_1) $

Das Verhältnis der Induktivität zur magnetischen Energie ist folgend definiert:
$ W = (L * I^2)/2 arrow.double L = (2*W)/I^2 $
$ L = (2 * (mu_0 * I^2 * h)/(4pi) * ln(r_2/r_1))/(I^2) = (mu_0 * h)/(2pi) * ln(r_2/r_1) $

=== Gegeninduktivität zweier runder Stromschleifen

Berechnen Sie die Gegeninduktivität zweier runder Stromschleifen (Radien: $R_1$ und $R_2$) im großen Abstand ($z >> R_(1,2)$) voneinander. Beide Schleifen sind symmetrisch senkrecht zur z-Achse ausgerichtet.

#line(length: 100%)

Die Gegeninduktivität $M$ ist definiert über den magnetischen Fluss $Phi_2$, den ein Strom $I_1$ in Schleife 1 durch Schleife 2 erzeugt:
$ M = Phi_2 / I_1 $

Das Magnetfeld einer Stromschleife mit Radius $R$, Strom $I$ und im Ursprung zentriert ergibt sich aus dem Biot-Savart-Gesetz entlang der $z$-Achse zu (Herleitung siehe @mfeld_kreis_leiterschleife):
$ B_Z (z) = (mu_0 * I * R^2)/(2 * (z^2 + R^2)^(3/2) $

Für großen Abstand $z >> R_1$ vereinfacht sich der Nenner:
$ (R_1^2 + z^2)^(3/2) = z^3 (1 + R_1^2/z^2)^(3/2) approx z^3 $

Die Formel für das Magnetfeld lautet somit:
$ B_Z (z) approx (mu_0 * I * R^2)/(2 * z^3) $

Da $z >> R_2$, ist das Feld $B_Z$ über die Fläche von Schleife 2 näherungsweise konstant. Wenn die obige Formel für das Magnetfeld einer Leiterschleife auf die Schleife 1 mit Strom $I_1$ und Radius $R_1$ angewendet wird, beträgt der Fluss durch Schleife 2:
$ Phi_2 = B_Z (z) * pi * R_2^2 = (mu_0 * I_1 * R_1^2)/(2 * z^3) * pi * R_2^2 = (mu_0 * pi * I_1 * R_1^2 * R_2^2)/(2 * z^3) $

Eingesetzt in die Formel für die Gegeninduktivität ergibt das:
$ M = Phi_2/I_1 = ((mu_0 * pi * I_1 * R_1^2 * R_2^2)/(2 * z^3))/I_1 = (mu_0 * pi * R_1^2 * R_2^2)/(2 * z^3) $

=== Induktivität einer Doppelleitung

Berechnen Sie die Induktivität einer Doppelleitung (Abstand $d$, Radien $R$, Ströme antiparallel) unter der Annahme, dass das Magnetfeld im Inneren der Leitungen vernachlässigt werden kann. (Welche Stromverteilung ist dazu notwendig?)

#line(length: 100%)

Die Magnetfeldlinien um einen vom Strom $I$ durchflossenen Draht sind konzentrische Kreise, auf denen jeweils $abs(arrow(B) (arrow(r))) = "const"$ gilt, d.h.:
$ integral.cont arrow(B) * dif arrow(s) = integral^(2pi)_0 r * B * dif phi = r * B(r) * 2pi = mu_0 * I arrow.double B(r) = (mu_0 * I)/(2pi * r) $

Wenn die Leitungen in $z$-Richtung laufen, liegt das magnetische Feld in der $x,y$-Ebene. Auf der Verbindungslinie zwischen den beiden Drähten, die wir als $x$-Achse wählen, gilt für den Betrag außerhalb der Drähte:
$ B(x) = (mu_0 * I)/(2pi * (d/2 + x)) + (mu_0 * I)/(2pi * (d/2 - x)) = (mu_0 * I)/(2pi) * (1/(d/2 + x) + 1/(d/2 - x)) $

Wenn das Magnetfeld im Inneren der Leitungen vernachlässigt wird (wie in der Angabe erlaubt), lässt sich der magnetische Fluss durch ein Stück der Doppelleitung mit der Länge $l$ durch die Fläche $A = d * l$ in der $x,z$-Ebene folgend berechnen:
$ Phi = l * integral^(d/2 - R)_(-d/2 + R) (mu_0 * I)/(2pi) * (1/(d/2 + x) + 1/(d/2 - x)) dif x $
$ = l * (mu_0 * I)/(2pi) * (integral^(d/2 - R)_(-d/2 + R) 1/(d/2 + x) dif x + integral^(d/2 - R)_(-d/2 + R) 1/(d/2 - x) dif x) $
$ = l * (mu_0 * I)/(2pi) * (ln(abs(d/2 + d/2 - R)) - ln(abs(d/2 - d/2 + R)) - (ln(abs(d/2 - d/2 + R)) - ln(abs(d/2 + d/2 - R)))) $
$ = l * (mu_0 * I)/(2pi) * (ln((d-R)^2) - ln(R^2)) = (mu_0 * I * l)/pi * (ln(d-R) - ln(R)) = (mu_0 * I * l)/pi * ln((d-R)/R) $

Damit wird der Selbstinduktionskoeffizient
$ L = Phi/l = (mu_0 * I)/pi * ln((d-R)/R) $

Das Magnetfeld im Leiterinneren verschwindet genau dann, wenn der Strom ausschließlich auf der Oberfläche fließt (Oberflächenstrom). Das ist der Grenzfall des Skineffekts bei hohen Frequenzen.

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

Für einen magnetischen Dipol (Stromschleife) gilt das magnetische Dipolmoment $arrow(p)_m$:
$ arrow(p)_m = I * arrow(A) $

Bringt man eine solche stromdurchflossene Leiterschleife in ein äußeres Magnetfeld, so bewirken die auftretenden Lorentzkräfte ein Drehmoment auf den Dipol, das am Beispiel einer rechteckigen Spule (allgemein) berechnet werden kann.

Auf die beiden gegenüberliegenden Leiterstücke $a$ der Rechteckschleife mit der Fläche $A = a*b$ wirkt die Lorentzkraft
$ arrow(F) = a * I * (hat(e)_a times arrow(B)) $
wobei $hat(e)_a$ ein Einheitsvektor in Richtung von $a$ ist und $I * hat(e)_a$ die technische Stromrichtung. Die Kraft auf die Leiterstücke $b$ wird durch die Aufhängung aufgefangen. Die Kraft $arrow(F)$ bewirkt somit folgendes Drehmoment:
$ arrow(D) = 2 * b/2 * (hat(e)_b times arrow(F)) = a * b * I * (hat(e)_b times hat(e)_a) times arrow(B) = I * arrow(A) times arrow(B) = arrow(p)_m times arrow(B) $

=== Konstante kin. Energie Teilchen im Magnetfeld

Zeigen Sie, dass die kinetische Energie eines Teilchens im Magnetfeld konstant bleibt. Aus welchen Beziehungen ergibt sich die Stetigkeit bzw. Unstetigkeit der entsprechenden Komponenten von $arrow(B)$ und $arrow(H)$ (bzw. $arrow(D)$ und $arrow(E)$) an Grenzflächen? Leiten sie das Brechungsgesetz für das elektrische und magnetische Feld ab.

#line(length: 100%)

Die kinetische Energie eines Teilchens im Magnetfeld ist konstant, weil die Lorentzkraft immer senkrecht zum Geschwindigkeitsvektor des Teilchens steht, wodurch keine Arbeit am Teilchen verrichtet wird ($W = integral F * dif s = 0$).

Für die Brechungsgesetze siehe @brechung_efeld und @brechung_mfeld

=== Brechungsgesetz Magnetfeld <brechung_mfeld>

Leiten sie das Brechungsgesetz für $arrow(B)$ und $arrow(H)$ an einer Grenzfläche von zwei Materialien mit $mu_1 > mu_2$ ab; welche Komponenten sind stetig und welche sind unstetig.? (Schematische Zeichnung) Wie lauten die analogen Beziehungen in der Elektrostatik?

#line(length: 100%)

Wir denken uns eine Integration $integral.cont arrow(H) dif arrow(s)$ entlang dem rechteckigen Weg ABCD wie in der Abbildung bei @brechung_efeld gezeigt. Die Dicke $d$ dieses Rechtecks sei vernachlässigbar klein, sodass praktisch nur noch der "Hinweg" AB im ersten Medium und der "Rückweg" CD im zweiten Medium übrig bleiben. Wegen
$ integral_A^B arrow(H)_parallel^1 dif arrow(s)_1 + integral_C^D arrow(H)_parallel^2 dif arrow(s)_2 = integral.cont arrow(H) dif arrow(s) = I $
und für den Fall ohne Oberflächenströme ($I = 0$) mit $dif arrow(s)_1 = - dif arrow(s)_2$ folgt:
$ arrow(H)_parallel^1 = arrow(H)_parallel^2 $

Für die Normalkomponente betrachten wir einen kleinen Zylinder über der Grenzfläche. Aus
$ integral.cont arrow(B) dif arrow(A) = 0 $
folgt wegen verschwindend kleiner Mantelfläche:
$ arrow(B)_perp^1 = arrow(B)_perp^2 $

#table(
columns: 4,
align: horizon,
inset: 8pt,
table.header(
[Feldgröße],
[Komponente],
[Stetig?],
[Bedingung]
),
[$arrow(H)$], [Tangential/Parallel], [Ja], [keine Oberflächenströme],
[$arrow(H)$], [Normal], [Nein], [Sprung um $mu_2/mu_1$],
[$arrow(B)$], [Tangential/Parallel], [Nein], [Sprung um $mu_1/mu_2$],
[$arrow(B)$], [Normal], [Ja], [Immer wegen $"div"(arrow(B))=0$]
)

Trifft der $arrow(H)$-Vektor unter dem Winkel $alpha$ aus dem ersten Material ($mu_1$) auf die Grenzfläche auf, so bildet er im zweiten Material ($mu_2$) einen Winkel $beta$ mit der Grenzflächennormalen, für den wegen $mu_1 * H_perp^1 = mu_2 * H_perp^2$ gilt:

$ tan(beta) = (H_parallel^2)/(H_perp^2) = mu_2/mu_1 * (H_parallel^1)/(H_perp^1) = mu_2/mu_1 * tan(alpha) arrow.double tan(alpha)/tan(beta) = mu_1/mu_2 $

Daraus ergibt sich mit
$ arrow(B) = mu * mu_0 * arrow(H) $

für die Tangentialkomponenten:
$ arrow(B)_parallel^1 = mu_1/mu_2 * arrow(B)_parallel^2 $

Die Feldlinien werden daher beim Übergang in ein Material mit kleinerer Permeabilität ($mu_2 < mu_1$) von der Flächennormalen weg gebrochen.

Analoge Beziehungen in der Elektrostatik:

#table(
columns: 3,
align: horizon,
inset: 8pt,
table.header(
[Magnetostatik],
[Elektrostatik],
[Bedeutung]
),
[$"div"(arrow(B)) = 0$], [$"div"(arrow(D)) = rho_f$], [Normalkomponente stetig bei fehlenden Quellen],
[$"rot"(arrow(H)) = arrow(J)$], [$"rot"(arrow(E)) = 0$], [Tangentialkomponente stetig ohne Quellen],
[$arrow(B) = mu * mu_0 * arrow(H)$], [$arrow(D) = epsilon * epsilon_0 * arrow(E)$], [Materialgleichung]
)

=== Ladung fliegt durch Kondensator

Eine Ladung $q$ fliegt horizontal in einen Kondensator der Breite $L$ und mit vertikalen elektrischen Feld (siehe Bild). Berechnen Sie die Auslenkung dieser Ladung beim Austritt aus dem Kondensator.

#image("assets/fragenkatalog/fliegende_ladung_kondensator.png")

#line(length: 100%)

Innerhalb des Kondensators wirkt auf die Ladung folgende Kraft bzw. Beschleunigung:
$ arrow(F) = m * arrow(a) = q * arrow(E) arrow.double arrow(a) = (q * arrow(E))/m $

Die Beschleunigung wirkt nur in die vertikale Richtung, d.h. folgende Bewegungsgleichungen gelten bei einer Anfangsgeschwindigkeit von $arrow(v)_0 = vec(v_x,0)$:
$ x(t) = v_x * t $ 
$ y(t) = 1/2 * a * t^2 = 1/2 * (q * E)/m * t^2 $

Die Zeit $T$, die die Ladung zum Durchqueren des Kondensators benötigt:
$ L = v_x * T arrow.double T = L/v_0 $

Eingesetzt in die Bewegungsgleichung $y(t)$:
$ y(T) = 1/2 * (q * E)/m * T^2 = 1/2 * (q * E)/m * (L/v_0)^2 $

=== Bewegungsgleichungen geladenes Teilchen

+ Geben Sie die Bewegungsgleichungen eines geladenen Teilchens in gleichzeitigen elektrischen $arrow(E) = (0,0,E_0)$ und magnetischen Feldern $arrow(B) = (0,0,B_0)$ an, wenn das Teilchen die Anfangsgeschwindigkeit $arrow(v) = (v_0, v_0, v_0)$ hat.
+ Berechnen Sie die Geschwindigkeit des Teilchens unter Berücksichtigung der Anfangsbedingungen.

#line(length: 100%)

a) Auf das geladene Teilchen wirkt die Lorentzkraft $arrow(F) = q*(arrow(E) + arrow(v) times arrow(B))$:
$ arrow(F) = m*arrow(a) = q*(arrow(E) + arrow(v) times arrow(B)) = q*(vec(0,0,E_0) + vec(v_x, v_y, v_z,) times vec(0,0,B_0)) = q*vec(v_y * B_0, -v_x * B_0, E_0) $

Aufgeteilt auf die einzelnen Komponenten ergeben sich folgende Bewegungsgleichungen:
$ dot(v)_x = q/m * v_y * B_0 $
$ dot(v)_y = -q/m * v_x * B_0 $
$ dot(v)_z = q/m * E_0 $

b) Es gilt die Anfangsbedingung $arrow(v)(0) = (v_0,v_0,v_0)$. Leider sind die $x$- und $y$-Komponenten miteinander gekoppelt, was das Berechnen der Geschwindigkeiten erschwierigt. Es kann jedoch folgender komplexer Trick angewendet werden:
$ w(t) = v_x (t) + i * v_y (t) $
$ arrow.double dot(w) = dot(v)_x + i*dot(v)_y = q/m * v_y * B_0 - i * q/m * v_x * B_0 = -i * q/m * B_0 *underbrace((v_x + i*v_y), w(t)) $
$ dot(w) = -i * q/m * B_0 * w arrow.double w(t) = w(0) * exp(-i * q/m * B_0 * t) $
$ w(0) = v_0 + i * v_0 = v_0 * (1+i) $

Zur Vereinfachung der Notation kann die Zyklotronfrequenz $omega = q/m * B_0$ verwendet werden. Nun für die einzelnen Geschwindigkeitskomponenten einfach mit $exp(-i * omega * t) = cos(omega * t) - i * sin(omega * t)$ ausmultiplizieren:
$ w(t) = v_0 * (1+i) * (cos(omega t) - i * sin(omega t)) = v_0 * (underbrace((cos(omega t) + sin(omega t)), v_x (t)) - i*underbrace((cos(omega t) - sin(omega t)), v_y (t))) $

Die $z$-Komponente der Geschwindigkeit ist entkoppelt und somit einfach durch Integration berechenbar:
$ dot(v)_z = q/m * E_0 arrow.double v_z (t) = v_0 + q/m * E_0 * t $
$ arrow.double arrow(v)(t) = vec(v_0*(cos(omega t) + sin(omega t)), v_0*(cos(omega t) - sin(omega t)), v_0 + q/m * E_0 * t) $

=== Bewegungsgleichungen geladenes Teilchen (2)

+ Geben Sie die Bewegungsgleichungen eines geladenen Teilchens im magnetischen Feld $arrow(B) = (0,B,B)$ an, wenn das Teilchen die Anfangsgeschwindigkeit $arrow(v) = (v_0, 0, 0)$ hat.
+ Finden Sie allgemeine Lösung der Bewegungsgleichungen (nur Geschwindigkeiten).
+ Berechnen Sie die Geschwindigkeit des Teilchens unter Berücksichtigung der Anfangsbedingungen.

#line(length: 100%)

a) Auf das geladene Teilchen wirkt die Lorentzkraft $arrow(F) = q*(arrow(E) + arrow(v) times arrow(B))$:
$ arrow(F) = m*arrow(a) = q*(arrow(E) + arrow(v) times arrow(B)) = q*(vec(0,0,0) + vec(v_x, v_y, v_z,) times vec(0,B,B)) = q*vec(v_y * B - v_z * B, -v_x * B, v_x * B) $

Aufgeteilt auf die einzelnen Komponenten ergeben sich folgende Bewegungsgleichungen:
$ dot(v)_x = q/m * B * (v_y - v_z) $
$ dot(v)_y = -q/m * v_x * B $
$ dot(v)_z = q/m * v_x * B $

b) Die einzelnen Geschwindigkeitskomponenten sind miteinander gekoppelt, was das Berechnen der Geschwindigkeiten erschwierigt. Es kann jedoch beobachtet werden, dass $dot(v)_y + dot(v)_z = 0$ gilt, also:
$ v_y + v_z = C_1 = "const" $

Die Entkopplung kann nun mittels $u := v_y - v_z$ durchgeführt werden:
$ dot(u) = dot(v)_y - dot(v)_z = -q/m * v_x * B - q/m * v_x * B = -2 * q/m * v_x * B $

Zusammen mit $dot(v)_x = q/m * B * u$ und zur Vereinfachung der Notation die Zyklotronfrequenz $omega = q/m * B_0$ ergibt die Differentiation folgendes:
$ dot.double(v) = omega * dot(u) = -2 * omega^2 * v_x arrow.double dot.double(v)_x + 2 * omega^2 * v_x 0 = 0 $

Die effektive Kreisfrequenz ist $tilde(omega) = sqrt(2) * omega$. Damit:
$ v_x (t) = C_2 * cos(tilde(omega) t) + C_3 * sin(tilde(omega) t) $
$ u = dot(v)_x/omega = 1/omega * dif/(dif t)(C_2 * cos(tilde(omega) t) + C_3 * sin(tilde(omega) t)) = sqrt(2)*(-C_2 * sin(tilde(omega) t) + C_3 * cos(tilde(omega) t)) $

Mit $v_y = (C_1 + u)/2$ und $v_z = (C_1 - u)/2$:
$ v_y (t) = C_1/2 + sqrt(2)/2 * (-C_2 * sin(tilde(omega) t) + C_3 * cos(tilde(omega) t)) $
$ v_z (t) = C_1/2 - sqrt(2)/2 * (-C_2 * sin(tilde(omega) t) + C_3 * cos(tilde(omega) t)) $

c) Es gilt die Anfangsbedingung $arrow(v)(0) = (0,0,v_0)$. Eingesetzt für die einzelnen Geschwindigkeitskomponenten ergibt sich folgendes:
$ v_x (0) = C_2 * cos(0) + C_3 * sin(0) = v_0 arrow.double C_2 = v_0 $
$ v_y (0) = C_1/2 + sqrt(2)/2 * (-C_2 * sin(0) + C_3 * cos(0)) = v_0 arrow.double C_1/2 + sqrt(2)/2 * C_3 = v_0 $
$ v_z (0) = C_1/2 - sqrt(2)/2 * (-C_2 * sin(0) + C_3 * cos(0)) = v_0 arrow.double C_1/2 - sqrt(2)/2 * C_3 = v_0 $

Wenn man nun $v_y (0)$ und $v_z (0)$ in einem Gleichungssystem zusammenaddiert, kommt man auf $C_1 = 0$ und durch das Einsetzen von $C_1$ auf $C_3 = 0$.
$ arrow(v)(t) = vec(v_0 * cos(sqrt(2) omega t), -v_0/sqrt(2) * sin(sqrt(2) omega t), v_0/sqrt(2) * sin(sqrt(2) omega t)) $

=== Magnetfeld torusförmiger Eisenkern

Ein torusförmiger Eisenkern (magnetische Permeabilität $mu$) mit dem mittleren Durchmesser $d$ und dem Luftspalt $s$ ist gleichmäßig mit $N$ Windungen bewickelt. Wie groß ist das Magnetische Feld im Spalt wenn durch die Windungen ein Strom $I$ fließt? (Detaillierte Berechnung)

#image("assets/fragenkatalog/torus_eisenkern.png")

#line(length: 100%)

Amperesches Gesetz: Das Linienintegral des Magnetfelds entlang einer geschlossenen Kurve ist gleich der magnetischen Feldkonstante multipliziert mit dem eingeschlossenen Strom. Da es sich hier um eine Spule handelt, muss $N$ für die Windungszahl hinzumultipliziert werden:
$ integral.cont arrow(B) dif arrow(l) = mu_0 * N * I arrow.double integral.cont arrow(H) dif arrow(s) = N * I $

Wenn man das Linienintegral für die torusförmige Spule auflöst:
$ H_"Kern" * pi * d + H_"Luft" * s = N * I arrow.double B_"Kern"/mu * pi * d + B_"Luft" * s = mu_0 * N * I $

B bleibt an der Grenzfläche zwischen Eisenkern und Luftspalt stetig:
$ B_"Luft" * ((pi * d)/mu + s) = mu_0 * N * I arrow.double B_"Luft" = (mu_0 * N * I)/((pi * d)/mu + s) $

=== Drehende Scheibe im Magnetfeld

Eine Aluminiumscheibe dreht sich im Magnetfeld ($arrow(B)$) mit Winkelgeschwindigkeit $omega$ (siehe Bild). Zwischen Kontakten im Abstand $r_1$ und $r_2$ wird Spannung gemessen. Berechnen Sie diese Spannung.

#image("assets/fragenkatalog/drehende_scheibe_magnetfeld.png")

#line(length: 100%)

Auf die Elektronen innerhalb der leitenden Aluminiumscheibe wirkt die Lorentzkraft:
$ arrow(F) = q * (arrow(v) times arrow(B)) $

Ein Elektron im Abstand $r$ von der Achse bewegt sich (tangential) mit folgender Geschwindigkeit, somit wirkt die Lorentzkraft radial:
$ arrow(v) = omega * r * hat(phi) $
$ arrow.double arrow(F) = -e * (omega * r * hat(phi) times B * hat(z)) = -e * omega * r * B * (hat(phi) times hat(z)) $
$ = -e * omega * r * B * (-hat(r)) = e * omega * r * B * hat(r) $

Durch die Bewegung der Elektronen entsteht ein Ladungsüberschuss, die negativen Ladungen sind am Rand, die positiven im Zentrum. Diese getrennten Ladungen bauen ein elektrisches Feld, das der Lorentzkraft entgegenwirkt. Im Gleichgewicht kompensiert das aufgebaute elektrische Feld die Lorentzkraft:
$ q * arrow(E)_"eff" = -arrow(F) arrow.double -e * arrow(E)_"eff" = -e * omega * r * B * hat(r) $
$ arrow.double E_"eff" (r) = omega * r * B $

Nun kann die Spannung zwischen den zwei Kontakten berechnet werden:
$ U = integral^(r_1)_(r_2) E_"eff" (r) dif r = integral^(r_1)_(r_2) omega * r * B dif r = omega * B * integral^(r_1)_(r_2) r dif r = 1/2 * omega * B * (r_1^2 - r_2^2) $

=== Magnetfeld eines langen rotierenden Zylinders

Ein langer homogen geladener Zylinder ($R$ - Radius, $rho$ - Ladungsdichte) dreht sich um seine Achse mit konstanter Winkelgeschwindigkeit $omega$ (siehe Skizze). Berechnen Sie das magnetische Feld entlang der $z$-Achse.

#image("assets/fragenkatalog/magnetischer_drehender_zylinder.png")

#line(length: 100%)

Man betrachte eine dünne Zylinderschale bei Radius $r$ mit Dicke $dif r$. Die Ladung pro Längeneinheit dieser Schale beträgt:
$ dif lambda = rho * 2pi * r * dif r $

Die Umlaufzeit ist $T = (2pi)/omega$, damit ist der Strom pro Längeneinheit (Flächenstromdichte):
$ dif K = (dif lambda) / T = (rho * 2pi * r * dif r * omega)/(2pi) = rho * omega * r * dif r $

Jede solche Schale entspricht einem unendlich langen Solenoid mit Flächenstromdichte $dif K$. Für einen unendlichen Solenoid gilt:
$ arrow(B)_"Sol" = cases(mu_0 * K * hat(z) & quad r' < r, arrow(0) & quad r' > r) $

Der Beitrag der Schale zum Feld auf der $z$-Achse (d.h. bei $r' = 0$, also stets im Inneren) ist:
$ dif arrow(B) = mu_0 * dif K * hat(z) = mu_0 * rho * omega * r * dif r * hat(z) $

Durch Integration über alle Schalen von $0$ bis $R$ erhält man das Gesamtfeld:
$ arrow(B) = integral_0^R mu_0 * rho * omega * r * dif r * hat(z)
           = mu_0 * rho * omega * hat(z) * [r^2/2]_0^R $

$ arrow(B) = 1/2 * mu_0 * rho * omega * R^2 * hat(z) $

=== Halleffekt

Beschreiben Sie den Hall Effekt (schematische Zeichnung, Rechnung), welche mikroskopische Größen können mit dem Halleffekt bestimmt werden?

#line(length: 100%)

Schematische Zeichnung (aus den Folien):
#image("assets/fragenkatalog/hall_effekt.png")

Der Halleffekt ist, das wenn ein Leiter in einem Magnetfeld mit einem Strom durchflossen wird, quer zur Stromrichtung ein Spannungsabfall gemessen werden kann (Hallspannung).

Dieser Spannungsabfall entsteht, weil das Magnetfeld durch die Lorentzkraft die Ladungsträger im Leiter ablenkt:
$ F_"lor" = -q * v * B $

Die Ladungsteiler häufen sich somit jeweils an beiden Seiten an (je nach Ladung). Diese getrennten Ladungen bauen ein elektrisches Feld, das der Lorentzkraft entgegenwirkt. Im Gleichgewicht kompensiert das aufgebaute elektrische Feld die Lorentzkraft:
$ F_"lor" = F_"el" arrow.double -q * v * B = E * q $

Wenn der Leiter nun eine Breite von $b$ hat, wird entsteht durch das elektrische Feld folgender Spannungsabfall:
$ U_H = integral arrow(E) dif arrow(s) = E * b $

Bei einer Ladungsträgergeschwindigkeit von $v = I/(A*n*q)$, wobei A der Probenquerschnitt ($b*d$), $n$ die Ladungsträgerdichte und $q$ die Ladung ist, lässt sich die Hallspannung folgend umformulieren:
$ U_H = -(B*I)/(n*q*d) = -R_H * (B*I)/d $

Hierbei ist $R_H = 1/(n*q)$ die materialabhängige Hall-Konstante.

Mit dem Halleffekt können z.B. die Ladungsträgerdichte ermittelt und die Leitfähigkeit eines Halbleiters untersucht werden.

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

Zeichnen Sie die Magnetisierungskurven, $M(B)$, eines Para- Dia- und Ferromagneten sowie eines Supraleiters. Was ist ein Supraleiter?

#line(length: 100%)

(Im Demtröder gibts nur eine $M(H)$-Kurve, da aber $B$ proportional zu $H$ ist weil $B = mu_0 * mu * H_0$ gilt ist es eig. egal, ob die $x$-Achse mit $H$ oder $B$ beschriftet ist)

#image("assets/fragenkatalog/magnetisierungskurve.png")

Supraleiter sind Materialien, die elektrischen Strom völlig ohne Widerstand und somit ohne Energieverlust leiten. Zudem verdrängen sie (unterhalb einer bestimmten Temperatur) Magnetfelder, wodurch Magnete stabil über ihnen schweben können.

#image("assets/fragenkatalog/magnetisierungskurve_supraleiter.png")

=== Parallele Elektronenstrahlen

Zwei Elektronenstrahlen (lineare Ladungdichte $lambda$ [$"C"/"m"$], Abstand $r$) bewegen sich parallel zueinander mit konstanter Geschwindigkeit $v$.
+ Berechnen Sie elektrische und magnetische Kraft zwischen den Strahlen (pro Längeneinheit).
+ Vergleichen Sie die beiden Kräfte ($F_E/F_M$ = ?)
+ Berechnen Sie die beiden Kräfte im Bezugsystem, das sich mit gleicher Geschwindigkeit $v$ bewegt. Erklären Sie den Unterschied zu Fall a).

#image("assets/fragenkatalog/parallele_elektronenstrahlen.png")

#line(length: 100%)

a) Die elektrische bzw. Coulombkraft zwischen den Ladungen in den Strahlen ist abstoßend, da sie die gleiche Ladung haben, und berechnet sich mit dem Satz von Gauß:
$ Q/epsilon_0 = (lambda*L)/epsilon_0 = integral.cont_A arrow(E) dif arrow(A) = E * 2pi * r * L $
$ arrow.double E(r) = (lambda * L)/(epsilon_0 * 2pi * r * L) = lambda/(epsilon_0 * 2pi * r) arrow.double F_E/L = lambda * E = lambda^2/(epsilon_0 * 2pi * r) $

Da die Elektronenstrahlen Ströme $I = (q*v)/l = lambda*v$ darstellen, induzieren sie um sich herum ein Magnetfeld. Dieses lässt sich mit dem Ampereschen Gesetz berechnen:
$ integral.cont arrow(B) * dif arrow(s) = integral^(2pi)_0 r * B * dif phi = r * B(r) * 2pi = mu_0 * I arrow.double B(r) = (mu_0 * I)/(2pi * r) = (mu_0 * lambda * v)/(2pi * r) $ 

Somit gilt für die Lorentzkraft auf das zweite Teilchen (diese ist anziehend, weil Parallelströme ziehen sich an):
$ F_M/L = (q * v * B)/L = (lambda * L * v * B)/L = lambda * v * (mu_0 * lambda * v)/(2pi * r) = (mu_0 * lambda^2 * v^2)/(2pi * r) $

b)
$ (F_E/L)/(F_M/L) = (lambda^2/(epsilon_0 * 2pi * r))/((mu_0 * lambda^2 * v^2)/(2pi * r)) = (lambda^2 * 2pi * r)/(epsilon_0 * 2pi * r * mu_0 * lambda^2 * v^2) = 1/(epsilon_0 * mu_0 * v^2) = c^2/v^2 $

Da stets $c > v$ gilt, gilt somit $F_E > F_M$, d.h. die Nettokraft ist immer abstoßend. Für $c >> v$ ist die Magnetkraft vernachlässigbar.

c) Wenn sich das Bezugssystem mit den bewegten Ladungen mitbewegt, stehen diese im Bezugssystem still, d.h. $v = 0$. Somit fließt aber kein Strom, was dazu führt, dass auch kein Magnetfeld induziert wird, d.h. $B = 0$ bzw. $F_M = 0$. Es herrscht aber immer noch die gleiche Nettokraft, was Paradox klingt, die Auflösung liefert aber die spezielle Relativitätstheorie. Kräfte transformieren sich zwischen Inertialsystemen. Die relativistische Krafttransformation ($F_perp ' = gamma * F_perp$ für Querkräfte) ergibt (wobei $gamma = (1 - v^2/c^2)^(-1/2)$) wobei auch die Längenkontraktion für die Ladungsdichte $lambda' = lambda/gamma$ in Betracht gezogen werden muss:
$ F_E ' = gamma * (F_E - F_M) = gamma * F_E * (1 - v^2/c^2) = gamma * 1/gamma^2 * F_E = F_E/gamma $

=== Parallel bewegende geladene Teilchen

Zwei geladene Teilchen (Ladung $q$, Abstand $d$) bewegen sich parallel zueinander mit konstanter Geschwindigkeit $v$.
+ Berechnen Sie elektrische und magnetische Kraft zwischen den Teilchen.
+ Vergleichen Sie die beiden Kräfte ($F_E/F_M$ = ?)
+ Berechnen Sie die beiden Kräfte im Bezugsystem, dass sich mit gleicher Geschwindigkeit $v$ bewegt. Erklären Sie den Unterschied zu Fall a).

#line(length: 100%)

a) Die elektrische bzw. Coulombkraft zwischen den Teilchen ist abstoßend, da sie die gleiche Ladung haben, und berechnet sich mit der bekannten Formel:
$ arrow(F)_E = 1/(4pi * epsilon_0) * (q^2)/d^2 $

Da die bewegten Ladungen Ströme $I = (q*v)/l$ darstellen, induzieren sie um sich herum ein Magnetfeld. Dieses entspricht ca. dem Magnetfeld um eine unendlich dünne Stromleitung, wobei nur eine Punktladung existiert und somit die Symmetrie der Ladungen in einem geraden Leiter nicht existiert, was zur Halbierung des Magnetfelds führt:
$ integral.cont arrow(B) * dif arrow(s) = integral^(2pi)_0 d * B * dif phi = d * B(d) * 2pi = mu_0 * I arrow.double B(d) = 1/2 * (mu_0 * I)/(2pi * d) = (mu_0 * q * v)/(4pi * d^2) $ 

Somit gilt für die Lorentzkraft auf das zweite Teilchen (diese ist anziehend, weil Parallelströme ziehen sich an):
$ F_M = q * v * B = q * v * (mu_0 * q * v)/(4pi * d^2) = (mu_0 * q^2 * v^2)/(4pi * d^2) $

b)
$ F_E/F_M = (1/(4pi * epsilon_0) * (q^2)/d^2)/((mu_0 * q^2 * v^2)/(4pi * d^2)) = (q^2 * 4pi * d^2)/(4pi * epsilon_0 * d^2 * mu_0 * q^2 * v^2) = 1/(epsilon_0 * mu_0 * v^2) = c^2/v^2 $

Da stets $c > v$ gilt, gilt somit $F_E > F_M$, d.h. die Nettokraft ist immer abstoßend. Für $c >> v$ ist die Magnetkraft vernachlässigbar.

c) Wenn sich das Bezugssystem mit den bewegten Ladungen mitbewegt, stehen diese im Bezugssystem still, d.h. $v = 0$. Somit fließt aber kein Strom, was dazu führt, dass auch kein Magnetfeld induziert wird, d.h. $B = 0$ bzw. $F_M = 0$. Es herrscht aber immer noch die gleiche Nettokraft, was Paradox klingt, die Auflösung liefert aber die spezielle Relativitätstheorie. Kräfte transformieren sich zwischen Inertialsystemen. Die relativistische Krafttransformation ($F_perp ' = gamma * F_perp$ für Querkräfte) ergibt (wobei $gamma = (1 - v^2/c^2)^(-1/2)$):
$ F_E ' = gamma * (F_E - F_M) = gamma * F_E * (1 - v^2/c^2) = gamma * 1/gamma^2 * F_E = F_E/gamma $

=== Magnetfeld planparalleler Ebenen

Zwei planparallele Ebenen befinden sich im Abstand $2d$ voneinander und tragen Stromdichten $+I$ [$"A"/"m"$] und $-I$ [$"A"/"m"$] parallel zu der $y$-Achse (siehe Bild).
+ Begründen Sie die Symmetrie und die Richtung des Magnetfeldes
+ Berechnen Sie das magnetische Feld im gesamten Raum.

#image("assets/fragenkatalog/magnetfeld_ebenen.png")

#line(length: 100%)

(Ich nehme an, dass die Ebenen unendlich ausgedehnt sind und WIESO würde man $I$ für StromDICHTE verwenden?!)

a) Da die beiden Ebenen unendlich ausgedehnt sind, hängen die Feldgrößen nicht von den Koordinaten $x$ und $y$ ab. Der Strom fließt in $plus.minus y$-Richtung. Nach der Rechte-Hand-Regel erzeugt ein Strom in $+y$-Richtung ein Magnetfeld, das in der $x z$-Ebene kreisförmig um den Leiter verläuft, d.h. das Feld zeigt an jedem Ort in $z$-Richtung.

b) Um das Magnetfeld der Ebenen zu berechnen kann das Amperesche Gesetz mit einem rechteckigen Weg (mit Breite $L$) und das Superpositionsprinzip genutzt werden:
$ integral arrow(B) dif arrow(l) = mu_0 * (I * L) $
$ arrow.double B * L - (-B) * L = mu_0 * I * L arrow.double B = (mu_0 * I)/2 $
(wobei $I$ hier tatsächlich eine Stromstärke (A) und nicht StromDICHTE (A/m) ist)

Zwischen den zwei Ebenen ($-d < z < d$) addieren sich die zwei Magnetfelder konstruktiv und werden zu $arrow(B) = -mu_0 * I * hat(z)$. Ausserhalb ($z > +d$ bzw. $z < -d$) löschen sie sich gegenseitig aus, was zu $arrow(B) = arrow(0)$ führt.

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

a) Der Strom lässt sich durch die induzierte Spannung (Induktionsgesetz) und dem Ohmschen Gesetz berechnen. Der magnetische Fluss ist in diesem Fall
$ Phi = integral arrow(B) dif arrow(A) = B * A = B * l * x(t) $

Somit gilt nach dem Induktionsgesetz:
$ U = abs((dif Phi)/(dif t)) = B * l * (dif x)/(dif t) = B * l * v arrow.double I = (B * l * v)/R  $

b) Die elektrische Leistung am Widerstand ("Joulesche Wärme") ist $P_J = I^2 * R$, einsetzen:
$ P_J = ((B * l * v)/R)^2 * R = (B^2 * l^2 * v^2)/R $

c) Die Kraft auf eine Ladung $dif q$ im Bügel, der durch sich durch das Magnetfeld bewegt, ist die Lorentzkraft:
$ dif arrow(F) = dif q * (arrow(v) times arrow(B)) = I * (dif arrow(L) times arrow(B)) arrow.double arrow(F) = I * arrow(l) times arrow(B) $
Der Strom im bewegten Bügel fließt nach oben, das Feld zeigt in die Ebene. Mit der Rechte-Hand-Regel ergibt sich eine Kraft nach links, also entgegen der Bewegung. Somit kann jetzt mit dem Betrag gerechnet werden:
$ F = I * l * B = (B * l * v)/R * l * B = (B^2 * l^2 * v)/R $

Die Kraft wirkt als Bremskraft, d.h.:
$ arrow(F) = -(B^2 * l^2 * v)/R * hat(e)_x $

d) Für die mechanische Leistung gilt $P_"mech" = F * v$, einsetzen:
$ P_"mech" = (B^2 * l^2 * v)/R * v = (B^2 * l^2 * v^2)/R * v $

e) Die Ergebnis für die am Widerstand erzeugte Joulsche Wärme und die mechanische Leistung für die konstante Bewegung des Bügel sind ident:
$ (B^2 * l^2 * v^2)/R = (B^2 * l^2 * v^2)/R arrow.double P_J =  P_"mech" $

Die gesamte mechanische Arbeit, die zum Ziehen des Bügels aufgebracht wird, wird in elektrische Energie umgewandelt und anschließend vollständig als Wärme im Widerstand dissipiert. Es gilt die Energieerhaltung.

=== Rotierende quadratische Spule

In einem homogenen Magnetfeld $B$ befindet sich eine quadratische Spule der Seitenlänge $a$ und der Windungszahl $N$. Die Spule dreht sich mit der Winkelgeschwindigkeit $omega$ um eine Achse, die senkrecht zum Feld steht und parallel zu einer Seite des Quadrates durch die Spulenmitte läuft. Welche Stromstärke fließt in der Spule, die den Widerstand $R$ hat?

#line(length: 100%)

Skizze (Seitenlänge $L$ mit $a$ ersetzen):
#image("assets/fragenkatalog/rotierende_quad_spule.png")

Der magnetische Fluss $Phi$, der beim Winkel $phi$ der Leiterschleife zum Magnetfeld $B$ durch eine Leiterschleife geht, lässt sich mit einem Flächenintegral berechnen:
$ Phi = integral arrow(B) dif arrow(A) = B * A * cos(phi) $

Zu einem bestimmten Zeitpunkt $t$ ist der Winkel $phi = omega * t$, d.h.:
$ Phi(t) = B * A * cos(omega * t) $

Die induzierte Spannung in einer Leiterschleife bzw. Spule mit $N$ Windungen ist laut Faradayschem Induktionsgesetz folgende:
$ U(t) = -N * (dif Phi)/(dif t) = -N * B * A * omega * -sin(omega * t) = N * B * A * omega * sin(omega * t) $

Mit dem Ohmschen Gesetz $U = R * I$ kommt man auf die Stromstärke:
$ U(t) = R * I(t) arrow.double I(t) = U(t)/R = (N * B * A * omega * sin(omega * t))/R $

=== Bewegender Stab im Magnetfeld

Ein metallischer Stab bewegt sich im Magnetfeld (siehe Bild). Berechnen Sie die Spannungsdifferenz an den Enden des Stabes.

#image("assets/fragenkatalog/bewegender_stab_magnetfeld.png")

#line(length: 100%)

Der magnetische Fluss $Phi$, der durch eine Leiterschleife senkrecht zum Magnetfeld $B$ geht, lässt sich mit einem Flächenintegral berechnen:
$ Phi = integral arrow(B) dif arrow(A) $

Die induzierte Spannung in einer Leiterschleife bzw. Spule mit $N$ Windungen ist laut Faradayschem Induktionsgesetz folgende, wobei für einen Stab $N=1$ gilt:
$ U(t) = -N * (dif Phi)/(dif t) = -(dif Phi)/(dif t) $
Das Magnetfeld ist homogen und ändert sich mit $t$ nicht, die vom Stab übertrichene Strecke jedoch schon:
$ U(t) = -dif/(dif t) (arrow(B) * dif arrow(A)) = -arrow(B) * (dif arrow(A))/(dif t) = -arrow(B) * (d * sin(theta) * dif s)/(dif t) = -arrow(B) * d * sin(theta) * arrow(v) $
$ abs(U(t)) = abs(-arrow(B) * d * sin(theta) * arrow(v)) = B * d * sin(theta) * v $

=== Messung Störfeld

Zur Messung eines von der Netzspannung (Frequenz $f = 50 "Hz"$) herführenden Magnetischen Störfeldes befindet sich eine Spule der Fläche $A$ und Windungszahl $N$ an dem zu untersuchenden Ort. Durch Verändern der Orientierung der Spule im Raum findet man diejenige Richtung heraus, bei der die induzierte Wechselspannung ihren größten gemessenen Effektivwert $U_0$ hat. Welchen Wert hat die Amplitude der magnetischen Feldstärke $H_0$?

#line(length: 100%)

Der magnetische Fluss $Phi$, der beim Winkel $phi$ der Leiterschleife zum Magnetfeld $B$ durch eine Leiterschleife geht, lässt sich mit einem Flächenintegral berechnen:
$ Phi = integral arrow(B) dif arrow(A) = B_0 * A * cos(2pi * f * t) $

Die induzierte Spannung in einer Leiterschleife bzw. Spule mit $N$ Windungen ist laut Faradayschem Induktionsgesetz folgende:
$ U(t) = -N * (dif Phi)/(dif t) = -N * B_0 * A * 2pi * f * -sin(2pi * f * t) $
$ = N * B_0 * A * 2pi * f * sin(2pi * f * t) $

Die induzierte Spannung ist maximal, wenn die Spulenfläche parallel zum Magnetischen Störfeld $B$ ausgerichtet ist. In diesem Fall ist die Spitzenamplitude und der gemessene Effektiwert folgender:
$ U_"max" = N * B_0 * A * 2pi * f arrow.double U_0 = (N * B_0 * A * 2pi * f)/sqrt(2) $

Mit $B_0 = mu_0 * H_0$ auflösen:
$ B_0 = (U_0 * sqrt(2))/(2pi * f * N * A) arrow.double H_0 = (U_0 * sqrt(2))/(mu_0 * 2pi * f * N * A) $

=== Koaxiale Spulen

Innerhalb einer langen großen Spule der Länge $l$ und Radius $R_1$ mit $N_1$ Windungen befindet sich eine kurze kleine Messspule mit dem Radius $R_2 < R_1$ mit $N_2$ Windungen. Die Achsen der Spulen sind parallel angeordnet. Die Große Spule wird mit einer Spannung $U_0 * exp(i omega t)$ betrieben. Finden Sie die Spannung an der Messspule. (Randeffekte vernachlässigen)

#image("assets/fragenkatalog/koaxiale_spulen.png")

#line(length: 100%)

Die äußere Spule ist "lang", somit hat sie im Inneren ein homogenes Magnetfeld, welches mit folgender Formel (für ideale, lange Spulen) berechnet werden kann:
$ B(t) = mu_0 * N_1/l * I(t) $

Um nun das Magnetfeld mit dieser Formel zu berechnen, fehlt uns der Strom, denn es ist nur die Spannung $U(t) = U_0 * exp(i * omega * t)$ gegeben. Der Strom lässt sich jedoch über die Induktivität $L$ der Spule berechnen:
$ L = (N * Phi)/I $
$ Phi = integral arrow(B) dif arrow(A) = B * pi * R_1^2 = mu_0 * N_1/l * I(t) * pi * R_1^2 $
$ arrow.double L_1 = (N_1 * mu_0 * N_1/l * I(t) * pi * R_1^2)/I(t) = (N_1^2 * mu_0 * pi * R_1^2)/l $

Mit der Impedanz der Spule lässt sich eine zwei Formel für die Spannung aufstellen und somit den Strom $I_1$ berechnen:
$ U = Z_L * I_1 = i * omega * L_1 * I_1 $
$ U_0 * exp(i * omega * t) = i * omega * L_1 * I_1 arrow.double I_1 = (U_0 * exp(i * omega * t))/(i * omega * L_1) $

Eingesetzt in die Formel für das Magnetfeld der großen Spule:
$ B(t) = mu_0 * N_1/l * I(t) = mu_0 * N_1/l * (U_0 * exp(i * omega * t))/(i * omega * L_1) = mu_0 * N_1/l * (U_0 * exp(i * omega * t))/(i * omega * (N_1^2 * mu_0 * pi * R_1^2)/l) $
$ arrow.double B(t) = (U_0 * exp(i * omega * t))/(i * omega * N_1 * pi * R_1^2) $

Da $R_2 < R_1$ gilt, liegt die Messspule vollständig im homogenen Feld der großen Spule. Der Fluss durch die Messspule berechnet sich folgend:
$ Phi = integral arrow(B) dif arrow(A) = B * pi * R_2^2 = (U_0 * exp(i * omega * t))/(i * omega * N_1 * pi * R_1^2) * pi * R_2^2 = (U_0 * exp(i * omega * t) * R_2^2)/(i * omega * N_1 * R_1^2) $

Nach dem Faradayschem Induktionsgesetz gilt:
$ U_2(t) = -N_2 * (dif Phi)/(dif t) = -N_2 * (U_0 * i * omega * exp(i * omega * t) * R_2^2)/(i * omega * N_1 * R_1^2) = - (N_2 * R_2^2)/(N_1 * R_1^2) * U_0 * exp(i * omega * t) $

=== Koaxiale Spulen (2)

Eine lange Spule der Länge $l$, Radius $R_1$ und mit $N_1$ Windungen befindet sich innerhalb einer kurzen Spule mit dem Radius $R_2$ und mit $N_2$ Windungen. Die Achsen der Spulen sind parallel angeordnet (Bild). Die Spule $R_1$ wird mit linear ansteigender Spannung $U_1 = X * t$ betrieben. Berechnen Sie:
+ Magnetisches Feld in der Spule $R_1$.
+ An der Spule $R_2$ gemessene Spannung

#image("assets/fragenkatalog/koaxiale_spulen_2.png")

#line(length: 100%)

a) Die innere Spule ist "lang", somit hat sie im Inneren ein homogenes Magnetfeld, welches mit folgender Formel (für ideale, lange Spulen) berechnet werden kann:
$ B(t) = mu_0 * N_1/l * I(t) $

Um nun das Magnetfeld mit dieser Formel zu berechnen, fehlt uns der Strom, denn es ist nur die Spannung $U_1(t) = X * t$ gegeben. Der Strom lässt sich jedoch über die Induktivität $L$ der Spule berechnen:
$ L = (N * Phi)/I $
$ Phi = integral arrow(B) dif arrow(A) = B * pi * R_1^2 = mu_0 * N_1/l * I(t) * pi * R_1^2 $
$ arrow.double L_1 = (N_1 * mu_0 * N_1/l * I(t) * pi * R_1^2)/I(t) = (N_1^2 * mu_0 * pi * R_1^2)/l $

Mit der allgemeinen Induktorgleichung lässt sich eine zwei Formel für die Spannung aufstellen und somit den Strom $I_1$ berechnen:
$ U_1 = L_1 * (dif I_1)/(dif t) $
$ X * t = L_1 * (dif I_1)/(dif t) arrow.double (dif I_1)/(dif t) = (X * t)/L_1 $
$ arrow.double I_1(t) = integral (X * t)/L_1 dif t = X/L_1 * integral t dif t = X/(2*L_1) * t^2 + C $

Wenn man von der Anfangsbedingung $I(0) = 0$ ausgeht, dann verschwindet die Konstante:
$ I_1(t) = X/(2*L_1) * t^2 $

Eingesetzt in die Formel für das Magnetfeld der langen Spule:
$ B(t) = mu_0 * N_1/l * I_1(t) = mu_0 * N_1/l * X/(2*L_1) * t^2 = mu_0 * N_1/l * X/(2*((N_1^2 * mu_0 * pi * R_1^2)/l)) * t^2 $
$ arrow.double B(t) = (X * t^2)/(2 * N_1 * pi * R_1^2) $

b) Da $R_1 < R_2$ gilt, liegt die Messspule nicht vollständig im homogenen Feld der großen Spule. Da die innere Spule jedoch lang ist, kann dessen äußeres Magnetfeld aufgrund seiner Schwäche ignoriert werden und smit durchsetzt das Feld nur die Querschnittsfläche der inneren Spule. Der Fluss durch die Messspule berechnet sich folgend:
$ Phi = integral arrow(B) dif arrow(A) = B * pi * R_1^2 = (X * t^2)/(2 * N_1 * pi * R_1^2) * pi * R_1^2 = (X*t^2)/(2 * N_1) $

Nach dem Faradayschem Induktionsgesetz gilt:
$ U_2(t) = -N_2 * (dif Phi)/(dif t) = -N_2 * (X*t)/N_1 = -N_2/N_1 * U_1(t) $

=== Magnetfeld unendlicher zylindrischer Leiter

Ein unendlicher zylindrischer Leiter der Radius $R$ trägt den Strom der Dichte $j$ [$"A"/"m"^3$] entlang der $z$-Richtung (homogen verteilt, Bild). Der Zylinder ist außerdem magnetisch mit der Suszeptibilität $chi$. Berechnen Sie die magnetischen Felder $B, H$ im gesamten Raum.

#image("assets/fragenkatalog/magnetfeld_unendlicher_zyl.png")

#line(length: 100%)

Für $H$ zählen nur die freien Ströme, nicht die Magnetisierung, d.h. es kann einfach dem Ampereschen Gesetz berechnet werden:
$ integral.cont arrow(H) dif arrow(l) = I $

Im Inneren des Zylinders ($r < R$) beträgt der eingeschlossene freie Strom $I = j * (pi * r^2)$, was für $arrow(H)$ folgendes Ergebnis liefert:
$ integral.cont arrow(H) dif arrow(l) = j * (pi * r^2) $
$ arrow(H)(r) * 2pi * r = j * pi * r^2 * hat(e)_phi arrow.double arrow(H)(r) = (j * r)/2 * hat(e)_phi $

Außerhalb des Zylinders ($r > R$) kann identisch gerechnet werden, aber diesmal mit $I = j * pi * R^2$:
$ arrow(H)(r) * 2pi * r = j * pi * R^2 * hat(e)_phi arrow.double arrow(H)(r) = (j * R^2)/(2 * r) * hat(e)_phi $

Um nun $arrow(B)$ zu berechnen, muss die Magnetisierung beachtet werden. Für ein lineares Material gilt $arrow(M) = chi * arrow(H)$ und für die magnetische Flussdichte $arrow(B)$ somit:
$ arrow(B) = mu_0 * (arrow(H) + arrow(M)) = mu_0 * arrow(H) * (1 + chi) $

Innerhalb des Zylinders gilt somit:
$ arrow(B)(r) = mu_0 * (j*r)/2 * hat(e)_phi * (1 + chi) $

Außerhalb gibt es kein magnetisches Material, was zu $arrow(M) = 0$ und somit zum gleichen Ergebnis wie zuvor führt:
$ arrow(B)(r) = (j * R^2)/(2 * r) * hat(e)_phi $

=== Herleitung Wellengleichung

Ausgehend von den Maxwell Gleichungen leiten sie die Wellengleichung her in Vakuum / einem Dielektrikum / paramagnetischen Isolator / etc. …. den Skin-Effekt in einem Metall her, etc.

#line(length: 100%)

Die Maxwell Gleichungen sind folgende vier Gleichungen:
$ nabla dot arrow(E) = rho/epsilon_0, quad nabla dot arrow(B) = 0, quad nabla times arrow(E) = -(partial arrow(B))/(partial t), quad nabla times arrow(B) = mu_0 * (arrow(j) + epsilon_0 * (partial arrow(E))/(partial t)) $

Im Vakuum gibt es keine Ladungen (d.h. Ladungsdichte $rho = 0$) und auch keine Stromdichte ($arrow(j) = arrow(0)$). Wenn man nun die doppelte Rotation des Magnetfelds berechnet, lässt sich das mit der Grassmann-Identität folgend aufschreiben:
$ nabla times (nabla times arrow(B)) = nabla (nabla dot arrow(B)) - laplace arrow(B) $

Wenn man nun die Maxwell-Gleichungen einsetzt:
$ nabla times (mu_0 * (arrow(j) + epsilon_0 * (partial arrow(E))/(partial t))) = nabla (0) - laplace arrow(B) $
$ arrow.double laplace arrow(B) = -mu_0 * epsilon_0 * (nabla times (partial arrow(E))/(partial t)) = -partial/(partial t)(mu_0 * epsilon_0 * (nabla times arrow(E))) = -partial/(partial t)(mu_0 * epsilon_0 * (-(partial arrow(B))/(partial t))) $
$ arrow.double laplace arrow(B) = mu_0 * epsilon_0 * (partial^2 arrow(B))/(partial t^2) $
(Wellengleichung für E-Feld im Vakuum geht analog mit $nabla times (nabla times arrow(E))$)

Im (ladungsfreien) Dielektrikum gibt es wie im Vakuum keine Ladungen und es kann kein Strom fließen, somit gilt wieder $rho = 0$ und $arrow(j) = arrow(0)$. Die magnetischen und elektrischen Feldkonstanten müssen jedoch mit der Permittivität $epsilon$ bzw. Permeabilität $mu$ des Dielektrikums ersetzt werden. Wenn man nun (zur analogen Abwechslung) die doppelte Rotation des elektrischen Feldes berechnet, lässt sich das mit der Grassmann-Identität folgend aufschreiben:
$ nabla times (nabla times arrow(E)) = nabla (nabla dot arrow(E)) - laplace arrow(E) $

Wenn man nun die Maxwell-Gleichungen einsetzt:
$ nabla times (-(partial arrow(B))/(partial t)) = nabla (0) - laplace arrow(E) arrow.double -partial/(partial t)(nabla times arrow(B)) = -laplace arrow(E) $
$ arrow.double laplace arrow(E) = partial/(partial t)(mu * (arrow(j) + epsilon * (partial arrow(E))/(partial t))) = mu * epsilon * (partial^2 arrow(E))/(partial t^2) $
(geht auch wieder analog mit Magnetfeld)

In einem paramagnetischen Isolator ist es genau gleich wie zuvor, da kein Strom fließen kann, es gilt lediglich $mu = mu_r * mu_0$ mit $mu_r > 1$, d.h.:
$ laplace arrow(E) = mu_r * mu_0 * epsilon_0 * (partial^2 arrow(E))/(partial t^2) $

Die Wellengleichung in einem Leiter sieht anders aus, da hierbei $arrow(j) = sigma * arrow(E)$ gilt. Somit berechnet sich die WG für das E-Feld folgend:
$ nabla times (nabla times arrow(E)) = nabla (nabla dot arrow(E)) - laplace arrow(E) $
$ nabla times (-(partial arrow(B))/(partial t)) = nabla (0) - laplace arrow(E) arrow.double -partial/(partial t)(nabla times arrow(B)) = -laplace arrow(E) $
$ arrow.double laplace arrow(E) = partial/(partial t)(mu * (arrow(j) + epsilon * (partial arrow(E))/(partial t))) = mu * (partial arrow(j))/(partial t) + mu * epsilon * (partial^2 arrow(E))/(partial t^2) = mu * sigma * (partial arrow(E))/(partial t) + mu * epsilon * (partial^2 arrow(E))/(partial t^2) $
Dies ist die gedämpfte Wellengleichung im Leiter.

Die gedämpfte Wellengleichung im Leiter kann nun verwendet werden, um den Skin-Effekt auszurechnen. Man nehme als Ansatz eine Ebene Welle $arrow(E)(z,t) = arrow(E)_0 * exp(i omega t - gamma z)$ mit $gamma = alpha + i * beta$ und setzt diesen in die Wellengleichung im Leiter ein:
$ (partial^2)/(partial z^2)(arrow(E)_0 * exp(i omega t - gamma z))  = mu * sigma * (partial)/(partial t)(arrow(E)_0 * exp(i omega t - gamma z)) + mu * epsilon * (partial^2)/(partial t^2)(arrow(E)_0 * exp(i omega t - gamma z)) $
$ arrow(E)_0 * (-gamma)^2 * exp(i omega t - gamma z) = mu * sigma * arrow(E)_0 * i * omega * exp(i omega t - gamma z) + mu * epsilon * arrow(E)_0 * (i * omega)^2 * exp(i omega t - gamma z) $
$ gamma^2 = i * omega * mu * (sigma + epsilon * i * omega) $

Für einen guten Leiter gilt $sigma >> omega * epsilon$, d.h.:
$ gamma^2 approx i * omega * mu * sigma $
$ sqrt(i) = (1+i)/sqrt(2) arrow.double gamma = (1+i) * sqrt((omega * mu * sigma)/2) $

Das heißt es gilt für $alpha$ und $beta$:
$ alpha = beta = sqrt((omega * mu * sigma)/2) $

Die Eindringtiefe der elektromagnetischen Welle (auch Skintiefe genannt) ist $delta = 1/alpha$, somit gilt:
$ delta = 1/alpha = 1/sqrt((omega * mu * sigma)/2) = sqrt(2/(omega * mu * sigma)) $

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

a) #image("assets/fragenkatalog/high-voltage-transmission-preview.svg", width: 90%)

Laut $U_1/U_2 = N_1/N_2$ ist im linken Trafo die Spule des Kraftwerk-Netzes diejenige mit einer geringeren Windungszahl als die Spule des Hochspannungsnetzes. 
$ (10000"V")/(380000"V") = N_1 / N_2 arrow.double N_2 > N_1 $

Im rechten Trafo sind die Windungszahlen umgekehrt, da nun die Spule für das Hochspannungsnetz auf der anderen Seite ist.
$ (380000"V")/(230"V") = N_1 / N_2 arrow.double N_1 > N_2 $

b) Die Leistungsverluste sind umso kleiner je höher die Spannung ist:
$ Delta P_"Leit" = Delta U_"Leit" * I = R_"Leit" * I^2 $
$ P_"Über" = U_"Netz" * I $
$ arrow.double (Delta P_"Leit")/P_"Über" = (R_"Leit" * I^2)/(U_"Netz" * I) = (R_"Leit")/(U_"Netz")^2 * P_"Über" prop 1/(U_"Netz")^2 * P_"Über" $

c) $ (220 "kV")/(0.1 "kV"/"mm") = 2200 "mm" hat(=) 2.2 "m" $
Eine (unisolierte) Leitung müsste somit mindestens $2.2 "m"$ über dem Boden hängen, um keinen Überschlag zu verursachen.

Der Mindestabstand wird größer, wenn man Glas verwendet, aber nur, wenn Glas nur teilweise den Spalt zwischen Leitung und Boden füllt (z.B. als Isolator). Das ist weil, wenn man das durch die Leitung erzeugte elektrische Feld im homogenen Plattenkondesator-Modell mit $E=U/d$ betrachtet, sieht man, dass es nicht von $epsilon$ abhängt. Erst wenn Glas nur teilweise den Spalt füllt, muss immer noch $D_perp = "const"$ gelten, und somit:
$ epsilon_"Glas" * E_"Glas" = epsilon_"Luft" * E_"Luft" arrow.double E_"Luft" = epsilon_"Glas"/epsilon_"Luft" * E_"Glas" > E_"Glas" $ 

d) $ U_1/U_2 = N_1/N_2 arrow.double (220 "kV")/(220 "V") = 1000 $
Die Primärspule (Hochspannungsseite) hat 1000-mal mehr Windungen als die Sekundärspule.

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

a)
$ U(t) = U_R + U_L + U_C = R * I + L * dot(I) + 1/C * integral I dif t $

b) Wenn der Einschwingvorgang vernachlässigt werden kann, kann mit den Impedanzen der einzelnen Komponenten und dem ohmschen Gesetz gearbeitet werden:
$ Z_"ges" = Z_R + Z_L + Z_C = R + i * omega * L + 1/(i * omega * C) $
$ U(t) = Z_"ges" * I(t) arrow.double I(t) = (U(t))/Z_"ges" = (U_0 * e^(i omega t))/(R + i * omega * L + 1/(i * omega * C)) $

c) Um $phi$ und $U_0/I_0$ zu bestimmen, muss $Z_"ges"$ in die Form $|Z| * e^(i phi)$ gebracht werden:
$ U_0/I_0 = |Z_"ges"| = sqrt(R^2 + (omega * L - 1/(omega * C))^2) $

Der Phasenwinkel folgt aus dem Argument von $Z_"ges"$:
$ phi = arg(Z_"ges") = arctan((omega * L - 1/(omega * C))/R) $

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
$ dot(U) + R/L * U = 0 arrow.double U(t) = A * exp(-(R*t)/L) $

Anfangsbedingung bei $t = 0^+$: Die Induktivität verhindert einen sprungförmigen Stromanstieg, daher fließt der gesamte Strom zunächst durch $R$:
$ U(0^+) = I_0 * R arrow.double A = I_0 * R arrow.double U(t) = I_0 * R * exp(-(R*t)/L) $

Die Spannung klingt mit der Zeit exponentiell ab, für $t arrow infinity$ übernimmt die Spule den gesamten Strom, d.h. $U arrow 0$.

c) Zuerst kann der Schwingkreis zu einem Serienschwingkreis gemacht werden, um die Berechnung der Spannung bzw. ihrer Amplitude $A = U_0/I_0$ zu vereinfachen:
$ Z_"ges" = (Z_L * Z_R)/(Z_L + Z_R) = (i * omega * L * R)/(i * omega * L + R) $
$ arrow.double U_0/I_0 = |Z_"ges"| = sqrt((omega * L * R)^2)/sqrt(R^2 + (omega * L)^2) = (omega * L * R)/(sqrt(R^2 + omega^2 * L^2)) $

Für die relative Phase einfach den Imaginär- durch den Realteil von $Z_"ges"$ im Arcustangens rechnen:
$ Z_"ges" = (i * omega * L * R)/(i * omega * L + R) * (i * omega * L - R)/(i * omega * L - R) = (-omega^2*L^2*R - i*omega*L*R^2)/(-omega^2*L^2 - R^2) $
$ arrow.double phi = arctan(((-omega*L*R^2)/(-omega^2*L^2 - R^2))/((-omega^2*L^2*R)/(-omega^2*L^2 - R^2))) = arctan((omega * L * R^2)/(omega^2 * L^2 * R)) = arctan(R/(omega * L)) $

=== RL-Schwingkreis (2)

Ein RL Schwingkreis wird eine lange Zeit an eine Stromquelle $I_0$ angeschlossen (Schalter an). Zum Zeitpunkt $t=0$ wird dieser von der Quelle getrennt (Schalter aus).
+ Beschreiben Sie qualitativ die Ströme in R,L direkt vor ($t = 0^-$) und direkt nach dem Ausschalten ($t = 0^+$).
+ Stellen Sie die Zeitgleichung für die an der Spule gemessene Spannung $U_L (t>0)$ auf. (Herleitung!)
+ Finden Sie die Lösung dieser Gleichung unter Berücksichtigung der Anfangsbedingungen.
+ Wie hoch ist die am Widerstand erzeugte Gesamtwärme für $t>0$?

#image("assets/fragenkatalog/rl_schwingkreis.png")

#line(length: 100%)

a) Für $t = 0^-$ bzw. $t < 0$: Die Spule ist im stationären Gleichstromfall ein Kurzschluss, d.h. der gesamte Strom fließt durch die Spule.

Für $t = 0^+$: Spulenstrom kann nicht sprunghaft springen, d.h. der Strom durch die Spule bleibt zunächst $I_0$.

b) Da $L$ und $R$ parallel geschaltet sind, liegt an ihnen dieselbe Spannung $U(t)$, d.h.:
$ I(t) = I_L + I_R arrow.double I(0^+) = I_L + I_R = 0 arrow.double I_R = -I_L $
$ U(t) = U_L = U_R arrow.double L * dot(I)_L = R * I_R = -R * I_L $
$ arrow.double L * dot(I)_L = -R * I_L $

c) Die DGL lässt sich mit TdV lösen:
$ L * (dif I_L)/(dif t) = -R * I_L $
$ (dif I_L)/I_L = -R/L * dif t arrow.double integral 1/I_L dif I_L = -R/L * integral 1 dif t $
$ ln(abs(I_L)) = -R/L * t + c arrow.double I_L (t) = exp(-(R*t)/L) * c $

Mit der Anfangsbedingung $I_L (t=0^+) = I_0$ lässt sich die Konstante berechnen:
$ I_L (t=0^+) = exp(0) * c = I_0 arrow.double I_L (t) = exp(-(R*t)/L) * I_0 $

Für die Spannung an der Spule nun einfach in die Formel einsetzen:
$ U_L (t) = L * dot(I) = L * dif/(dif t)(exp(-(R*t)/L) * I_0) = -R * I_0 * exp(-(R*t)/L) $

d) Die Gesamtwärme lässt sich aus der Leistung im Widerstand berechnen:
$ P_R = I_R^2 * R = I_L^2 * R = exp(-(2*R*t)/L) * I_0^2 * R $
$ W = integral_0^infinity exp(-(2*R*t)/L) * I_0^2 * R dif t = I_0^2 * R * integral_0^infinity exp(-(2*R*t)/L) dif t $
$ = I_0^2 * R * -L/(2*R) * [exp(-(2*R*t)/L)]_0^infinity = (I_0^2 * L)/2 $

=== LC-Schwingkreis

Ein LC-Kreis wird lange Zeit mit konstanten Strom $I_0$ angetrieben (Schalter an). Bei $t=0$ wird der Strom unterbrochen (Schalter aus).
+ Wie hoch sind die Ströme und Spannungen am Kondensator und der Spule für $t = 0^+$
+ Berechnen Sie die Spannung am Kondensator für $t>0$.

#image("assets/fragenkatalog/lc_schwingkreis.png")

#line(length: 100%)

a) Da der Kreis für eine "lange" Zeit mit einer Stromquelle versorgt wird, befindet er sich im Gleichgewicht, d.h. durch den Kondensator fließt kein Strom bzw. keine Spannung ($(dif U) / (dif t) = 0$) und die Spule trägt den gesamten Strom:
$ U_C (0^+) = 0 $
$ I_L (0^+) = I_0 $

b) Nach dem Abschalten bilden $L$ und $C$ einen geschlossenen Schwingkreis. Die Maschenregel liefert:
$ U_L + U_C = 0 arrow.double L * (dif I)/(dif t) + U_C = 0 $

Mit $I = C * (dif U_C)/(dif t)$ folgt die Schwingungsgleichung:
$ L * (dif)/(dif t)(C * (dif U_C)/(dif t)) + U_C = 0 arrow.double L * C * (dif^2 U_C)/(dif t^2) + U_C = 0 $
$ arrow.double (dif^2 U_C)/(dif t^2) + underbrace(omega_0,1/sqrt(L * C))^2 U_C = 0 $

Diese Schwingungsgleichung lässt sich nun mit einem Ansatz und den in a) ermittelten Anfangsbedingungen lösen:
$ U_C (t) = A * cos(omega_0 * t) + B * sin(omega_0 * t) $

Da $U_C (0^+) = 0$ gilt, muss $A=0$ sein. Aus $I_L (0^+) = I_0$ und $I = C * (dif U_C)/(dif t)$ folgt:
$ I(0) = C * (dif U_C)/(dif t) = C * B * omega_0 * cos(omega_0 * t) = I_0 arrow.double B = I_0/(C * omega_0) = I_0/(C*1/sqrt(L * C)) = I_0 * sqrt(L/C) $

Eingesetzt in den Ansatz:
$ U_C (t) = I_0 * sqrt(L/C) * sin(omega_0 * t) $

=== LC-Schwingkreis (2)

+ Stellen Sie die Differentialgleichung für den LC Serienschwingkreis auf (Verluste können vernachlässigt werden).
+ Berechnen Sie den Strom $I(t>0)$ für folgende Spannung:
$ U(t) = cases(0 "if" t<0, U_0 "if" t gt.eq 0) $

#image("assets/fragenkatalog/lc_schwingkreis_2.png")

#line(length: 100%)

a) Die Gesamtspannung setzt sich aus den zwei Teilspannungen zusammen:
$ U(t) = U_C + U_L = 1/C * integral I dif t + L * dot(I) $

Um daraus die Differentialgleichung zu erhalten, einfach alles einmal differenziern. $U(t)$ wird in beiden Fällen ($0$ oder $U_0 = "konst"$) zu null.
$ arrow.double L * dot.double(I) + 1/C * I = 0 arrow.double dot.double(I) + underbrace(omega_0,1/sqrt(L*C))^2 * I = 0 $

b) Die DGL lässt sich mit dem allgemeinen Ansatz für eine Schwingungsgleichung lösen:
$ I(t) = A * cos(omega_0 * t) + B * sin(omega_0 * t) $

Für $t < 0$ war keine Spannung angelegt, der Kreis ist somit im Ruhezustand:
$ I (0^-) = 0 $
$ U_C (0^-) = 0 $

Da der Strom durch eine Spule nicht springen kann:
$ I(0^+) = 0 arrow.double A = 0 $

Die Maschenregel bei $t = 0^+$ liefert:
$ U_0 = U_L (0^+) + U_C (0^+) = L * dot(I)(0^+) + 0 arrow.double dot(I)(0^+) = U_0/L $
$ dif/(dif t)I(0^+) = B * omega_0 * cos(omega_0 * 0) = U_0/L arrow.double B = U_0 * omega_0 * L = U_0 * 1/sqrt(L*C)*L = U_0 * sqrt(C/L) $

Eingesetzt in den Ansatz:
$ I(t) = U_0 * sqrt(C/L) * sin(omega_0 * t) $

=== RC-Schwingkreis

+ Stellen Sie die Differentialgleichung für den abgebildeten RC Schwingkreis auf
+ Berechnen Sie den Einschaltvorgang $I(t gt.eq 0)$ für folgende Spannung:
  $ U(t) = cases(0 "if" t<0, U_0 "if" t gt.eq 0) $
+ Berechnen Sie den Strom für die Wechselspannung $U(t) = U_0 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/rc_schwingkreis.png")

#line(length: 100%)

a) Die Gesamtspannung setzt sich aus den zwei Teilspannungen zusammen:
$ U(t) = U_C + U_R = 1/C * integral I dif t + R * I $

Um daraus die Differentialgleichung zu erhalten, einfach alles einmal differenziern. $U(t)$ wird in beiden Fällen ($0$ oder $U_0 = "konst"$) zu null.
$ arrow.double R * dot(I) + 1/C * I = 0 arrow.double dot(I) + 1/(C*R) * I = 0 $

b) Die homogene DGL aus a) hat den Ansatz $I(t) = I_0 * e^(lambda t)$. Einsetzen liefert:
$ lambda + 1/(C * R) = 0 arrow.double lambda = -1/(C * R) $

Die allgemeine Lösung lautet damit:
$ I(t) = I_0 * exp(-t / (C * R)) $

Die Anfangsbedingung folgt aus dem Schaltkreis zum Zeitpunkt $t = 0^+$: Da der Kondensator zunächst ungeladen ist, gilt $U_C (0) = 0$, und die gesamte Spannung fällt am Widerstand ab:
$ U(0) = R * I(0) arrow.double I(0) = U_0 / R $

Der gesuchte Einschaltstrom (für $t gt.eq 0$) ist somit:
$ I(t) = U_0/R * exp(-t/(C*R)) $

c) Einschaltvorgang kann vernachlässigt werden, d.h. es kann mit Impedanzen gerechnet werden:
$ Z = Z_C + Z_R = 1/(i * omega * C) + R $
$ U(t) = Z * I(T) arrow.double I(t) = (U_0 * exp(i omega t))/(1/(i * omega * C) + R) = (U_0 * exp(i omega t) * i * omega * C)/(1 + R * i * omega * C) $

Der komplexe Vorfaktor enthält Betrag und Phasenverschiebung. Der Betrag des Stroms ist:
$ |I| = (U_0 * omega * C)/sqrt(1^2 + (R * omega * C)^2) $

=== RC-Schwingkreis (2)

+ Ein RC Schwingkreis ist an eine Stromquelle $I(t)$ angeschlossen. Stellen Sie die Zeitgleichung für die am Widerstand gemessene Spannung $U(t)$ auf.
+ Berechnen Sie den Einschaltvorgang $U(t gt.eq 0)$ für folgenden Strom:
  $ I(t) = cases(0 "if" t<0, I_0 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase der Spannung $U(t)$ für den Wechselstrom $I(t)= I_1 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/rc_schwingkreis_2.png")

#line(length: 100%)

a) Da $C$ und $R$ parallel geschaltet sind, liegt an ihnen dieselbe Spannung $U(t)$, d.h.:
$ I(t) = I_C + I_R = C * dot(U) + U/R $

Umgeformt auf eine DGL 1. Ordnung für $U$ ergibt das:
$ dot(U) + 1/(C * R) * U = I/C $

b) Zuerst die homogene Lösung der DGL berechnen:
$ dot(U) + 1/(C * R) * U = 0 arrow.double U_h (t) = exp(-t/(C*R)) * c $

Mit VdK auch die partikuläre Lösung berechnen:
$ dot(U)_h (t) = exp(-t/(C*R)) * c'(t) + exp(-t/(C*R)) * (-1/(C*R)) * c(t) $
$ arrow.double exp(-t/(C*R)) * c'(t) + exp(-t/(C*R)) * (-1/(C*R)) * c(t) + 1/(C*R) * exp(-t/(C*R)) * c(t) = I_0/C $
$ exp(-t/(C*R)) * c'(t) = I_0/C arrow.double c(t) = integral I_0/C * exp(t/(C*R)) dif t = I_0/C * C * R * exp(t/(C*R)) = I_0*R*exp(t/(C*R)) $
$ arrow.double U_p (t) = exp(-t/(C*R)) * I_0*R*exp(t/(C*R)) = I_0*R $

Damit lautet die allgemeine Lösung:
$ U(t) = U_h + U_p = exp(-t/(C * R)) * c + I_0 * R $

Mit der Anfangsbedingung $U(0) = 0$ (Kondensator ungeladen) lässt sich verbleibende Konstante berechnen:
$ 0 = exp(0) * c + I_0 * R arrow.double c = -I_0 * R $
$ arrow.double U(t) = exp(-t/(C * R)) * (-I_0 * R) + I_0 * R = I_0*R*(1 - exp(-t/(C * R))) $

c) Einschaltvorgang kann vernachlässigt werden, d.h. es kann mit Impedanzen gerechnet werden:
$ Z = (Z_C * Z_R)/(Z_C + Z_R) = (1/(i * omega * C) * R)/(1/(i * omega * C) + R) = (R/(i * omega * C))/((1 + R * i * omega * C)/(i * omega * C)) = R/(1 + R * i * omega * C) $

Das Amplitudenverhältnis ist der Betrag von $Z$:
$ U_0/I_1 = |Z| = R/sqrt(1 + R^2 * omega^2 * C^2) $

Die relative Phase ergibt sich aus dem Argument von $Z$:
$ phi = arg(Z) = -arctan(R * omega * C) $

=== RL-Schwingkreis (3)

+ Stellen Sie die Differentialgleichung für den abgebildeten RL Schwingkreis auf:
+ Berechnen Sie den Einschaltvorgang $I(t gt.eq 0)$ für folgende Spannung:
  $ U(t) = cases(0 "if" t<0, U_1 "if" t gt.eq 0) $
+ Berechnen Sie die Amplitude sowie die relative Phase des Stroms $I(t)$ für die Wechselspannung $U(t) = U_2 * exp(i omega t)$ (Einschaltvorgang vernachlässigen)

#image("assets/fragenkatalog/rl_schwingkreis_3.png")

#line(length: 100%)

a) Da $L$ und $R$ parallel geschaltet sind, liegt an ihnen dieselbe Spannung $U(t)$, sie haben aber unterschiedliche Ströme, d.h.:
$ I(t) = I_L + I_R = 1/L * integral U dif t + U/R arrow.double dot(I) = dot(U)/R + U/L $

b) Für $t gt.eq 0$ gilt $U(t) = U_1 = "const"$, somit ist $dot(U) = 0$:
$ dot(I) = U_1/L arrow.double I(t) = U_1/R + U_1/L * t $

c) Einschaltvorgang kann vernachlässigt werden, d.h. es kann mit Impedanzen gerechnet werden:
$ Z = (Z_L * Z_R)/(Z_L + Z_R) = (i * omega * L * R)/(i * omega * L + R) $

Das Amplitudenverhältnis ist der Betrag von $Z$:
$ U_2/I_0 = |Z| = (omega * L * R)/sqrt(omega^2 * L^2 + R^2) $

Die relative Phase ergibt sich aus dem Argument von $Z$:
$ phi = arg(Z) = arg(i * omega * L) - arg(R + i * omega * L) = pi/2 - arctan((omega * L)/R) = arctan(R/(omega * L)) $

=== Gemischter RLC-Schwingkreis (2)

Ein gemischter RLC-Schwingkreis (Bild) wird mit dem Wechsel-Strom $I(t) = I_0 * exp(i omega t)$ getrieben. Berechnen Sie die Spannung am Widerstand $U_R (t)$. (Einschaltvorgang vernachlässigen, Berechnung mit komplexen Zahlen).

#image("assets/fragenkatalog/gemischter_schwingkreis_2.png")

#line(length: 100%)

Da der Einschaltvorgang vernachlässigt werden kann, kann die Rechnung mit den Impedanzen der einzelnen Komponenten durchgeführt werden:
$ Z_"ges" = (Z_L * (Z_C + Z_R))/(Z_L + (Z_C + Z_R)) = (i * omega * L * (1/(i * omega * C) + R))/(i * omega * L + (1/(i * omega * C) + R)) = (i * omega * L * (-i/(omega * C) + R))/(i * omega * L + (-i/( omega * C) + R)) $
$ = (L/C + i * omega * L * R)/(R + i * (omega * L - 1/(omega * C))) $

Die Spannung bleibt in den zwei Zweigen gleich, d.h. $U(t) = U_L (t) = U_(C R) (t)$
$ U(t) = Z_"ges" * I(t) = (L/C + i * omega * L * R)/(R + i * (omega * L - 1/(omega * C))) * I_0 * e^(i omega t) $

Da $U_R$ im Zweig mit $Z_C + Z_R$ liegt, muss für den Spannungsabfall zuerst der Strom durch diesen Zweig berechnet werden:
$ I_(C R) = U(t)/(Z_C + Z_R) = (Z_"ges" * I(t))/(Z_C + Z_R) = (Z_L * (Z_C + Z_R))/((Z_L + Z_C + Z_R) * (Z_C + Z_R)) * I(t) = (Z_L)/(Z_L + Z_C + Z_R) * I(t) $

Die Spannung am Widerstand ist damit:
$ U_R (t) = R * I_(C R) = R * Z_L/(Z_L + Z_C + Z_R) * I(t) = (R * i * omega * L)/(R + i * (omega * L - 1/(omega * C))) * I_0 * e^(i omega t) $

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
