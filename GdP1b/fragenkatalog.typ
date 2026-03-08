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
    Diese Ausarbeitung des Fragenkatalogs zu GdP1b dient in erster Linie der Vorbereitung auf die VO-Prüfung durch stures Auswendiglernen. *Fehler vorbehalten.*

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
  title: [Grundlagen der Physik 1b],
  subtitle: [Ausarbeitung Fragenkatalog],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

= Festkörper und Hydrostatik

== Verformung fester Körper

+ Mit welchem Gesetz lässt sich die Verformung eines ideal elastischen Körpers beschreiben?
+ Skizzieren Sie allgemein ein Spannungs/Dehnungsdiagramm und beschreiben Sie die unterschiedlichen Bereiche der Verformung.
+ Was versteht man unter plastischer Verformung und einer elastischen Hysterese (Skizze)

#line(length: 100%)

a) Die Verformung ideal elastischer Körper ist ein reversibler Prozess, bei dem das Material nach Entlastung sofort und vollständig in seine ursprüngliche Form zurückkehrt. Dabei gilt das Hookesche Gesetz, wonach Spannung und Dehnung proportional zueinander sind.

b) 

== Spannungs-Dehnungsdiagramm

+ Skizzieren Sie allgemein das Spannungs-Dehnungsdiagramm eines realen Festkörpers und zeichnen Sie die Verformungsarbeit ein, die geleistet werden muss, um den Körper um $Delta epsilon$ zu dehnen.
+ Muss bei einem Spannungs-Stauchungszyklus eines realen Festkörpers Arbeit verrichtet werden?
+ Leiten Sie unter Verwendung des Hooke'schen Gesetzes die Deformationsarbeit bei einer relativen Ausdehnung $epsilon$ eines elastischen Quaders mit dem Querschnitt $q$ und der Anfangslänge $L$ ab!

#line(length: 100%)

TODO

== Verformung realer Festkörper

+ Skizzieren Sie allgemein das Spannungs-Dehnungsdiagramm eines realen Festkörpers und zeichnen Sie jene Bereiche ein in denen das Hooke'sche Gesetz gilt und in denen der Festkörper reversibel verformbar ist.
+ Wie lässt sich das Hooke'sche Gesetz mittels des Elastizitätsmoduls $E$ ausdrücken? Erklären Sie die vorkommenden Grössen.
+ Was versteht man unter der elastischen Hysterese (Skizze, Erläuterung) und wie groß ist die Deformationsarbeit bei einem Zug-Druck-Zyklus?

#line(length: 100%)

TODO

== Biegesteifigkeit

+ Welche Größe beeinflusst maßgeblich die Biegung eines Balkens mit über die gesamte Länge konstantem Querschnittsprofil?
+ Mit Hilfe welcher Größe wird die Biegung eines Balkens charakterisiert
+ Welche Durchbiegung ist größer: die eines beidseitig oder die eines einseitig eingespannten Balkens? Begründen Sie Ihre Antwort qualitativ.

#line(length: 100%)

TODO

== Hydrostatik und Auftrieb <hydrostatik_auftrieb>

+ Was versteht man unter dem hydrostatischen Paradoxon?
+ Wie kommt die Auftriebskraft zustande?
+ Ein Stück Kupfer ($rho = 9.0 g / "cm"^3$) der Masse $500"g"$ (WELCHES IN WASSER EINGETAUCHT IST) hänge an einer Federwaage. Welche Kraft zeigt Federwaage an? 

#line(length: 100%)

a) Der Schweredruck auf den Boden eines Gefäßes hängt nur von der Höhe $H$ der Flüssigkeit aber nicht von der Gestalt des Gefäßes, also u.a auch der Flüssigkeitsmenge, ab. Somit ist der Druck im Gefäß nicht proportial zur Füllmenge, was zu paradox-scheinenden Tatsachen führt.

Z.B. wenn einen allseitig geschlossenen Hohlwürfel ($V = 1"m"^3$) durch ein Loch in der Oberseite voll mit Wasser füllt, so wirkt auf den Boden ein Schweredruck von $0.1 "bar"$. Steckt man jetzt ein dünnes Steigrohr mit $1 "cm"^2$ Querschnitt in das Loch und füllt es bis $10 "m"$ Höhe mit Wasser ($Delta V = 1$ Liter), so steigt der Druck im Würfel um $1 "bar"$, also um das 10fache, obwohl das Gewicht der Flüssigkeit nur um $1 permille$ zugenommen
hat.

b) Die nach oben gerichtete Auftriebskraft ist entgegengesetzt gleich dem Gewicht des durch den Körper verdrängten Flüssigkeitsvolumens, d.h.:
$ arrow(F)_"A" = -arrow(g) * integral rho_"Fl" dif V = - arrow(G)_"Fl" $

Ist die Dichte $rho_"K"$ eines Körpers kleiner als die Dichte $rho_"Fl"$ der Flüssigkeit, so wird der Auftrieb $arrow(F)_"A"$ bei vollständigem Eintauchen größer als das Gewicht GK des Körpers. Der Körper schwimmt dann ohne äußere Krafteinwirkung und taucht dabei nur so weit in die Flüssigkeit ein, dass $arrow(G)_"K" = -arrow(F)_"A"$ wird.

c) Eine Federwaage zeigt standardmäßig die Gewichtskraft $F_"G" = m * g$ an. Da das Stück Kupfer jedoch in Wasser eingetaucht ist, wirkt ebenfalls die Auftriebskraft $F_"A" = rho_"Fl" * V * g$ gegen die Gewichtskraft. Für Wasser gilt $rho_"Fl" = 1000 "kg"/"m"^3 hat(=) 1 "g"/"cm"^3$ somit zeigt die Federwaage folgende Kraft an:
$ F = F_"G" - F_"A" = m*g - rho_"Fl" * V * g = m*g - rho_"Fl" * m/rho_"Ku" * g = m * g * (1 - rho_"Fl"/rho_"Ku") $
$ F = 0.5"kg" * 9.81"m"/"s"^2 - (1 - (1.0 "g"/"cm"^3)/(9.0 "g"/"cm"^3)) tilde.equiv 4.36N $

== Aggregatzustände

+ Was versteht man unter einem Aggregatzustand und welche Aggregatzustände gibt es?
+ Was ist der wesentliche Unterschied zwischen einem kristallinen Festkörper und einer Flüssigkeit? Wie lässt sich ein kristalliner Festkörper beschreiben?
+ Skizzieren Sie allgemein das Bindungspotential zwischen zwei Atomen im Abstand $r$. Wie können Sie mit Hilfe dieses Potentials die unterschiedlichen Aggregatzustände erklären

#line(length: 100%)

TODO

== Oberflächenenergie und Kapillarität

+ Begründen Sie, warum es an einer Flüssigkeitsoberfläche zum Auftreten der Oberflächenspannung $sigma$ kommt?
+ Berechnen Sie, für einen Randwinkel $phi$ an der Kontaktlinie Fest/Flüssig/Gas die Steighöhe $h$ einer Flüssigkeit (Dichte $rho$) in einer Röhre mit dem Radius $r$. Was passiert, wenn $phi$ größer als $90°$ wird?
+ Ein keilförmiges Gefäß wird mit der in (b) gegebenen Flüssigkeit gefüllt. Zeigen Sie, dass das Oberflächenprofil der Flüssigkeit $prop 1/x$ ist, wenn $x$ der Abstand vom Öffnungspunkt des Keiles ist (siehe Bild)

#line(length: 100%)

TODO

== Wechselwirkungspotential

+ Skizzieren Sie den Verlauf der potentiellen Energie $E_"pot"$ und der Kraft $arrow(F)$ zwischen zwei Atomen als Funktion des Abstandes $r$ (in einem Graph)
+ Formulieren Sie das Hooke'sche Gesetz verbal und mit Hilfe eines mathematischen Ausdrucks. Definieren Sie die von Ihnen verwendeten Größen?
+ In welchem Bereich von $E_"pot"$ und $arrow(F)$ ist das Hooke'sche Gesetz gültig.

#line(length: 100%)

TODO

== Hydrostatik und Auftrieb <hydro_presse>

+ Was ist das hydrostatische Paradoxon?
+ Beschreiben Sie die physikalische Grundlage und die Funktionsweise einer hydraulischen Presse (Formeln und Skizze).
+ Ein zylinderförmiger Körper (Dichte $rho_Z$) wird in eine Flüssigkeit (Dichte $rho_L$) getaucht. Berechnen Sie die resultierende Auftriebskraft.

#line(length: 100%)

a) Siehe @hydrostatik_auftrieb (a)

b) In zwei miteinander verbundenen Zylindern mit den Querschnitten $A_1$ und $A_2 >> A_1$ herrscht überall der gleiche Druck $p$. Mit einer Kraft $F_1 = p * A_1$ auf einen Stempel im schmalen Zylinder erreicht man eine wesentlich größere Kraft
$ F_2 = F_1 * A_2/A_1 $
auf das Werkstück. Die Hubwege $Delta x_i$ der Flüssigkeitsvolumina sind wegen $Delta V_1 = A_1 Delta x_1 = Delta V_2 = A_2 Delta x_2$ im Zylinder 1 wesentlich größer als in 2, d.h. $(Delta x_1)/(Delta x_2) = A_2/A_1$.

#image("assets/fragenkatalog/hydraulische_presse.png")

c) (Ich gehe hier davon aus, dass die Gravitationskraft in der Berechnung der Auftriebskraft berücksichtigt werden soll, weil dann "negativer" Auftrieb ersichtlich ist)

Die resultierende Auftriebskraft ergibt sich direkt aus dem archimedischen Prinzip:
$ F = F_"A" - F_"G" = rho_"L" * V_"verdrängt" * g - rho_Z * V_Z * g = rho_L * pi r^2 h_"eingetaucht" * g - rho_Z * pi r^2 h * g $
$ arrow.double F = pi r^2 * g * (rho_L * h_"eingetaucht" - rho_Z * h) $

D.h. wenn $rho_Z < rho_L$, dann schwimmt der Zylinder, im Gleichgewicht $rho_Z = rho_L$ "schwebt" er und bei $rho_Z > rho_L$ sinkt er ab.

== Schwimmen

+ Welche Bedingung muss die Dichte $rho_K$ eines Körpers erfüllen, damit er in einer Flüssigkeit (Dichte $rho_L$) schwimmt?
+ Berechnen Sie den Volumsanteil eines Holzblocks (Dichte $rho_K = 730 "kg"*"m"^(-3)$), der über der Wasseroberfläche liegt, siehe Abbildung. Die Dichte von Wasser ist $rho_L = 1000 "kg"*"cm"^(-3)$, die Dichte von Luft kann vernachlässigt werden.
+ Wie groß müsste die Dichte eines Materials sein, damit genau die Hälfte des Körpervolumens über der Wasseroberfläche liegt.

#line(length: 100%)

TODO

== Oberflächenenergie

+ Wie ist Oberflächenenergie definiert und warum tritt sie auf?
+ Zwei verschieden große Seifenblasen wurden durch Aufblasen bei geöffneten Ventilen 1 und 2 aber geschlossenem Ventil 3 erzeugt. Was passiert beim Schließen von 1 und 2 und Öffnen von 3 (siehe Abbildung)?
+ Was würde geschehen, wenn die Seifenblasen durch zwei gleiche aber verschieden aufgeblasene Luftballons ersetzt würden?
Begründen Sie Ihre Antworten für Punkte (b) und (c) nachvollziehbar.

#line(length: 100%)

TODO

== Oberflächenenergie und Randwinkel

+ Wie ist Oberflächenenergie definiert und warum tritt sie auf?
+ Berechnen Sie bei gegebenen Oberflächenenergien zwischen den Phasen fest (1), flüssig (2) und gasförmig (3), $rho_1,2$, $rho_1,3$, $rho_2,3$, den Randwinkel $phi$, den die Flüssigkeit mit der Festkörperoberfläche einschliesst. Welche Fälle können unterschieden werden?
+ Gibt man einen Tropfen Öl auf eine Wasseroberfläche, so wird er zu einer dünnen Schicht auseinandergezogen. Warum?

#line(length: 100%)

TODO

== Auftrieb und Hydrostatik

+ Was ist das hydrostatische Paradoxon?
+ Beschreiben Sie die physikalische Grundlage und die Funktionsweise einer hydraulischen Presse (Formeln und Skizze).
+ Wie groß muss die Masse eines Körpers auf der Oberfläche eines Eisbergs sein, damit er komplett ins Wasser eintaucht? Die Dichte des Meerwassers ist $1.05 "g"/"cm"^3$, die des Eises $0.95 "g"/"cm"^3$. Das Volumen des Eisbergs ist $106 "m"^3$.

#line(length: 100%)

a) Siehe @hydrostatik_auftrieb (a)

b) Siehe @hydro_presse (b)

c) Wenn der Eisberg komplett eingetaucht ist, hat er folgende Auftriebskraft:
$ F_A = rho_E * V_E * g =  $
TODO

== Hydrostatik

+ Was ist das hydrostatische Paradoxon?
+ Beschreiben Sie die physikalische Grundlage und die Funktionsweise einer hydraulischen Presse (Formeln und Skizze).
+ Berechnen Sie die Kraft $arrow(F)$, die auf die große Wand eines Aquariums mit der Länge $l = 1,2m$ und dem Füllstand $h = 0,5m$ (siehe Abbildung) wirkt.

#line(length: 100%)

a) Siehe @hydrostatik_auftrieb (a)

b) Siehe @hydro_presse (b)

c) Da der hydrostatische Druck mit der Tiefe linear zunimmt und die Wand senkrecht steht, kann der Betrag von $arrow(F)$ mit folgendem Integral des Drucks über die Fläche berechnet werden:
$ F = integral_0^h rho g y * l dif y = rho g l integral_0^h y dif y = rho g l * h^2/2 $
$ F = 1000 * 9.81 * 1.2 * 0.5^2/2 tilde.eq 1471.5"N" $

(Die Richtungskraft $arrow(F)$ kann dann durch die Multiplikation von $F$ mit dem Richtungsvektor der normal auf die Aquariumwand steht berechnet werden)

== Auftrieb, Dichte und Schwimmen

+ Ein zylinderförmiger Körper (Dichte $rho_Z$) wird in eine Flüssigkeit (Dichte $rho_L$) getaucht. Berechnen Sie die resultierende Auftriebskraft.
+ Welche Bedingung muss die Dichte $rho_K$ eines Körpers erfüllen, damit er in einer Flüssigkeit (Dichte $rho_L$) schwimmt?
+ Ein Floß mit einer Fläche von $3 times 3 "m"^2$ bestehe aus Holz der Dichte $0.6 "g"/"cm"^3$ und sei $10 "cm"$ dick. Wie viele Menschen mit einer Masse von je $70 "kg"$ können auf dem Floß stehen ohne dass es untergeht?

#line(length: 100%)

a) Siehe @hydro_presse (c)

b) Damit ein Körper in Flüssigkeit schwimmt, muss die Auftriebskraft im Gleichgewicht mit der Schwerkraft sein, d.h. $F_A = F_G$:
$ rho_L * V_"verdrängt" * g = rho_K * V_K * g $

Da $V_K gt.eq V_"verdrängt"$, gilt für die Dichte $rho_K lt.eq rho_L$.

c) Zuerst muss das Volumen des Floßes berechnet werden:
$ V = A*d = 9"m"^2 * 0.1"m" = 0.9"m"^3 $

Die max. Auftriebskraft wird erreicht, wenn das gesamte Floß im Wasser eingetaucht ist. Die für die Menschen verbleibende Tragfähigkeit berechnet sich dann durch den Abzug von der Eigenmasse des Floßes von dem durch die bei max. Auftriebskraft tragbare Gesamtmasse:
$ m_M = rho_W * V - rho_H * V = 1000 * 0.9 - 600 * 0.9 = 360"kg" $
$ n = floor (360"kg")/(70"kg") floor.r = 5 "Personen" $


= Fluiddynamik

== Viskose Flüssigkeiten

+ Was versteht man unter Viskosität einer Flüssigkeit?
+ Berechnen Sie die Grenzgeschwindigkeit $v$ einer Kugel mit dem Radius $r$, welche in einer Viskosen Flüssigkeit (Viskosität $eta$) absinkt. Wie ist aufgrund dieser Beziehung die Viskosität bei bekanntem $v$ berechenbar?
+ Kann es bei einer nicht-viskosen Flüssigkeit zu Turbulenz kommen? Begründen Sie Ihre Antwort.

#line(length: 100%)

a) Die Viskosität einer Flüssigkeit ist ein Maß für deren inneren Widerstand gegen Fließen oder Scherung. Sie gibt an, wie stark benachbarte Flüssigkeitsschichten aneinander haften und sich relativ zueinander bewegen können. Je höher die Viskosität einer Flüssigkeit, desto zähflüssiger ist sie.

b) c) TODO

== Bernoulli-Gleichung

+ Wie lautet die Bernoulli Gleichung?
+ Auf welchem Erhaltungssatz beruht sie?
+ Durch ein Rohr mit der Querschnittsfläche $S_1$, welches sich in der Mitte auf die Fläche $S_2$ verengt, ströme Wasser mit der Geschwindigkeit $v_1$ am Ein- bzw. Ausgang. Ein U-Rohr, welches teilweise mit Quecksilber (Dichte $rho$) gefüllt ist, verbindet den Abschnitt mit Fläche $S_2$ mit dem Abschnitt mit Fläche $S_1$. Geben Sie die Höhendifferenz $h$ im U-Rohr an.

#line(length: 100%)

a)
$ underbrace(p, "örtlicher Druck") + underbrace(1/2 * rho * v^2, "Schweredruck") + underbrace(rho * g * h, "dynamischer Druck") = "const" $
Bei einer idealen (inkompressiblen) Flüssigkeit ist $rho$ im gesamten Rohr konstant und deshalb (bei konstantem Rohrquerschnitt) auch $v$.

b) Die Bernoulli-Gleichung beruht auf dem Energieerhaltungssatz. TODO Formeln?

c) Für ein Venturi-Rohr mit einer mittigen Rohrverengung fällt der dynamische Druck in der Bernoulli-Gleichung weg. Es gilt ebenfalls die Kontinuitätsgleichung $S_1 * v_1 = S_2 * v_2$, d.h. $v_2 = v_1 * S_1/S_2$, somit ist die zugehörige Bernoulli-Gleichung folgende:
$ p_1 + 1/2 * rho_"W" * v_1^2 = p_2 + 1/2 * rho_"W" * (v_1 * S_1/S_2)^2 $ 

Um die Höhendifferenz $h$ im U-Rohr zu bestimmen ist der Druckunterschied zwischen den Rohren nötig, denn es gilt $Delta p = rho * g * Delta h$:
$ Delta p = p_1 - p_2 = 1/2 * rho_"W" * (v_2^2 - v_1^2) = 1/2 * rho_"W" * v_1^2 * ((S_1/S_2)^2 - 1) $
$ Delta p = rho * g * Delta h arrow.double Delta h = (Delta p)/(rho * g) = (1/2 * rho_"W" * v_1^2 * ((S_1/S_2)^2 - 1))/(rho * g) $

== Laminare Strömung

+ Skizzieren und erklären Sie das Geschwindigkeitsprofil einer laminaren Strömung durch ein Rohr? Geben Sie dessen mathematische Form an.
+ Leiten Sie aus dem Geschwindigkeitsprofil das Gesetz von Hagen-Poiseuille her
+ Was sind die Konsequenzen des Hagen-Poiseuille Gesetzes für Rohre unterschiedlicher Durchmesser?

#line(length: 100%)

a) TODO

b) Aus dem Geschwindigkeitsprofil kann entnommen werden, dass eine Druckdifferenz ($p_1 - p_2$) zwischen den Ebenen $z = 0$ und $z = L$ eines Kreiszylinders mit Radius $R$ eine stationäre Strömung aufrechterhalten wird. Aus Symmetriegründen kann die Strömungsgeschwindigkeit $v$ nur von der Entfernung $r$ von der Zylinderachse abhängen. Für einen koaxialen Teilzylinder mit Radius $r$ gilt, analog zu der Betrachtung im vorigen Abschnitt bei Gleichsetzung von Reibungskraft auf die Zylinderoberfläche und Nettodruckkraft auf die Stirnflächen:
$ -eta * 2 r pi * L (dif v)/(dif r) = r^2 pi * (p_1 - p_2) $

Die Integration über $r$ ergibt mit der Randbedingung $v(R) = 0$ für das Geschwindigkeitsfeld
$ v(r) = integral^R_r (p_1 - p_2)/(2 eta L) r dif r = (p_1 - p_2)/(4 eta L) * (R^2 - r^2) $

Die gesamte Flüssigkeitsmenge, die pro Zeiteinheit durch eine Fläche $z = "const"$ des im Geschwindigkeitsprofil gezeigten Hohlzylinders mit Radien zwischen $r$ und $r + dif r$ fließt, ist dann gemäß der obigen Gleichung:
$ dif/(dif t) (V(r)) = 2 pi r dif r * v = (2 pi r dif r * (p_1 - p_2) * (R^2 - r^2))/(4 eta L) $

Durch den gesamten Rohrquerschnitt fließt dann während der Zeit $t$ das Flüssigkeitsvolumen
$ V = t * integral^R_(r=0) 2 pi r * v dif r = (pi R^4 * (p_1 - p_2))/(8 eta L) * t = (pi R^4 * Delta p)/(8 eta L) * t $

Der Quotient $(Delta p)/L = (delta p)/(delta z)$ gibt das (lineare) Druckgefälle entlang des Rohres an. Für die pro Zeiteinheit durch das Rohr mit Radius $R$ strömende Flüssigkeitsmenge (Stromstärke $I = V/t$) erhält man dann das Hagen-Poiseuille-Gesetz:
$ I = (pi R^4)/(8 eta L) * Delta p = (pi R^4)/(8 eta) * (delta p)/(delta z) $

c) Der Gesamtstrom $I(R)$ ist durch den Term $R^4$ stark abhängig vom Radius bzw. Durchmesser des Rohrs. Bei einer kleinen Änderung des Rohrdurchmessers können daher große Schwankungen des Gesamtstroms auftreten.

== Euler-Gleichung

Die Euler-Gleichung sei in kartesischen Koordinatzen gegeben durch:
$ (dif arrow(v))/(dif t) = arrow(g) - 1/rho * arrow(nabla) p $

Die Schwerkraft zeige in negative $z$-Richtung.
+ Schreiben Sie die Euler-Gleichung komponentenweise an.
+ Leiten Sie daraus für eine die Bernoulli-Gleichung für eine in $x$-Richtung strömende Flüssigkeit mit beliebiger, zeitabhängiger Geschwindigkeit her.
+ Leiten Sie daraus die Formel für den hydrostatischen Druck einer ruhenden Flüssigkeitssäule in $z$-Richtung her.

#line(length: 100%)

TODO

== Strömungen und Drücke 

+ Wie lautet die Bernoulli Gleichung für eine Flüssigkeit in einer Röhre, die im Querschnitt und in der Höhe veränderlich ist? Erklären Sie alle vorkommenden Größen. Für welche Flüssigkeiten gilt die Gleichung?
+ Der Druck in einem Abschnitt einer horizontalen Röhre mit der Querschnittsfläche von $40 "cm"^2$ betrage $150 "kPa"$. Durch die Röhre fließe Wasser mit einem Volumenfluss von $2.8 "dm"^3/"s"$. Wie groß muss die Durchschnittsfläche an einem verengten Teil der Röhre sein, damit der Druck dort $140 "kPa"$ beträgt?

#line(length: 100%)

TODO

== Strömung in Viskosen Flüssigkeiten

+ Was versteht man unter Viskosität einer Flüssigkeit?
+ Berechnen Sie des Geschwindigkeitsprofil in einer Röhre des Radius $R$ und der Länge $L$ bei gegebener Viskosität $eta$, und daraus die Stärke des Volumensstroms $I = (dif V)/(dif t)$. Der Druck am Rohranfang sei $p_1$, am Rohrende sei er $p_2$.
+ Wie hängt der Volumensstrom dieser Flüssigkeit von $R$ ab? Welche Konsequenzen kann diese Abhängigkeit haben?

#line(length: 100%)

TODO

== Strömung in Röhren

+ Berechnen Sie des Geschwindigkeitsprofil in einer Röhre des Radius $R$ und der Länge $L$ bei gegebener Viskosität $eta$, und daraus die Stärke des Volumensstroms $I = (dif V)/(dif t)$. Der Druck am Rohranfang sei $p_1$, am Rohrende sei er $p_2$.
+ Wie hängt der Volumensstrom dieser Flüssigkeit von $R$ ab? Welche Konsequenzen kann diese Abhängigkeit haben?
+ Wie ändert sich der Volumensstrom bei konstantem Röhrendurchmesser, wenn sich die Temperatur der Flüssigkeit erhöht?

#line(length: 100%)

TODO

== Strömung inkompressibler, reibungsfreier Flüssigkeiten

+ Was versteht man unter der Kontinuitätsgleichung und wie kann man sie ableiten?
+ Zwei Rohre mit den Radien $r_1$ und $r_2$ werden von Wasser mit den Geschwindigkeiten $v_1$ bzw. $v_2$ durchströmt. Sie laufen zu einem Rohr zusammen, in dem das Wasser mit der Geschwindigkeit $v$ strömt. Gehen Sie von einer stationären, reibungsfreien Strömung aus und berechnen Sie den Radius $R$ des großen Rohrs.

#line(length: 100%)

TODO

== Strömungsleitwerte

+ Berechnen Sie Volumenstrom in einer Röhre des Radius $R$ und der Länge $L$ bei gegebener Viskosität $eta$, und daraus den Strömungsleitwert. Der Druck am Rohranfang sei $p_1$, am Rohrende sei er $p_2$.
+ Ein kreisrundes Rohr vorgegebener Länge und Querschnittsfläche wird in 10 parallel geschaltete, ebenfalls kreisrunde, untereinander gleiche Röhrchen gleicher Länge so aufgeteilt, dass sich die gesamte Querschnittsfläche nicht geändert hat. Um welchen Faktor steigt der Strömungswiderstand einer Flüssigkeit bei laminarer Strömung?

#line(length: 100%)

TODO

== Bernoulli-Gleichung (again)

+ Wie lautet die Bernoulli Gleichung?
+ Auf welchem Erhaltungssatz beruht sie?
+ Geben Sie eine Erklärung für folgenden Versuch: Ein Tischtennisball wird in einen Trichter gelegt. Bläst man in das Ausflussrohr des Trichters, fliegt der Ball auch bei starkem Blasen nicht aus dem Trichter heraus, er wird nur leicht angehoben (Abb. 1). Bläst man kräftig genug, kann man die Trichteröffnung sogar nach unten halten, ohne dass der Ball herausfällt (Abb. 2).

#figure(
    grid(
        columns: 2,
        gutter: 3em,
        image("assets/fragenkatalog/bernoulli_trichter_1.png"),
        image("assets/fragenkatalog/bernoulli_trichter_2.png"),
    ),
)

#line(length: 100%)

TODO

== Strömung und Aerodynamik

+ Was ist zur Entstehung von Wirbeln in einer Strömung nötig und welche Teilgebiete umfassen sie?
+ Wie ist der Strömungswiderstand definiert und aus welchen Beiträgen setzt er sich zusammen?
+ Warum fliegt ein angeschnittener Fußball einen Bogen? Zeigen Sie, in welche Richtung der in der Abbildung dargestellte Ball bei Windstille abgelenkt wird ($arrow(v)$ ist die Geschwindigkeit des Balles; überlegen Sie, in welche Richtung die Luft dann strömt). Wie nennt man diesen Effekt und wo findet er noch Anwendung?

#line(length: 100%)

TODO

== Wasserströmung

Wasser strömt mit $0,8 "m"/"s"$ durch ein Rohr mit dem Innendurchmesser von $10 "cm"$:
+ Wie groß ist der Volumenstrom und wie lange dauert es, bis $4000 "dm"^3$ Wasser durch das Rohr geströmt sind?
+ Mit welcher Geschwindigkeit strömt das Wasser wenn sich am Rohrende eine Düse von $2 "cm"$ Durchmesser befindet?
+ Um welchen Betrag ändert sich der statische Druck?

#line(length: 100%)

TODO


= Gase und Thermodynamik

== Barometrische Höhenformel und Auftrieb in Gasen <barometrische_hoehenformel>

+ Leiten Sie die barometrische Höhenformel ab.
+ In welche Höhe über dem Meeresspiegel ist der Luftdruck halb so groß wie auf dem Meeresspiegel?
+ Welche maximale Höhe $h$ kann ein Ballon mit einem konstanten Volumen $V$ erreichen, der mit Helium (Dichte $rho_"He"$) gefüllt ist und eine Last der Masse $m$ trägt? Am Boden betrage die Dichte der Luft $rho_0$ und der Luftdruck $p_0$. Die Außentemperatur $T$ wird über die gesamte Höhe als konstant vorausgesetzt.

#line(length: 100%)

a) Das Gewicht der auf einer Fläche $A$ in der Höhe $h$ lastenden Luftsäule nimmt mit zunehmender Höhe ab. Beim Anstieg von $h$ auf $h + dif h$ nimmt das Gewicht der Luftsäule um $rho * g * A * dif h$ ab und daher sinkt der Druck $p$ um
$ dif p = -rho * g dif h $

Bei einer Flüssigkeit konnte man wegen der kleinen Kompressibilität die Dichte $rho$ als unabhängig von der Höhe $h$ annehmen. Damit ergab die obige Gleichung eine lineare Abnahme des Druckes mit der Höhe. Bei Gasen hingegen folgt bei konstanter Temperatur $T$:
$ p/rho = p_0/rho_0 = "const" arrow.double rho = rho_0/p_0 * p $

Einsetzen in die erste Gleichung:
$ dif p = -rho_0/p_0 * p * g dif h arrow.double (dif p)/p = -rho_0/p_0 * g dif h $
$ integral 1/p dif p = -rho_0/p_0 * g * integral 1 dif h arrow.double ln(p) = -rho_0/p_0 * g * h + C $

Mit $p(h = 0) = p_0$ wird die Integrationskonstante $C = ln(p_0)$, und durch Delogarithmieren erhält man die barometrische Höhenformel
$ p = p_0 * exp(-rho_0/p_0 * g * h) $
Dabei ist das Verhältnis $rho_0/p_0$ temperaturabhängig.

b) Für Luft gilt $rho_0 = 1.24"kg"/"m"^3$ und $p_0 = 1013"hPa"$. Diese Werte in die barometrische Höhenformel einsetzen:
$ p = 1013 "hPa" * exp(-h/(8.33"km")) $
$ (1013"hPa")/2 = 1013"hPa" * exp(-h/(8.33"km")) arrow.double ln(1/2) = -h/(8.33"km") arrow.double h = -8.33"km" * ln(1/2) tilde.equiv 5.77"km" $

c) Die Auftriebskraft des Ballons ist $F_A = rho_"L" * V * g$ und die Gewichtskraft des Ballons inklusive der Last ist $F_G = (rho_"He" * V + m) * g$. In der maximalen Höhe $h$ sind diese zwei Kräfte im Gleichgewicht:
$ rho_"L" * V * g = (rho_"He" * V + m) * g arrow.double rho_"L" = rho_"He" + m/V $

Um anhand dieses Gleichgewichts auf die Höhe $h$ zu kommen muss die barometrische Höhenformel eingesetzt werden, jedoch in einer veränderten Form. Da $rho_L/rho_0 = p/p_0$ gilt:
$ rho_L = rho_0 * exp(-rho_0/p_0 * g * h) $

In die Gleichgewichtsbedingung einsetzen:
$ rho_0 * exp(-rho_0/p_0 * g * h) = rho_"He" + m/V $
$ -rho_0/p_0 * g * h = ln((rho_"He" + m/V)/rho_0) $
$ h = -(ln((rho_"He" + m/V)/rho_0) * p_0)/(rho_0*g) = (ln(rho_0/(rho_"He" + m/V)) * p_0)/(rho_0*g) $

== Druck in Gasen und Flüssigkeiten

+ Wie lautet die barometrische Höhenformel, leiten Sie diese ab.
+ Vergleichen Sie Ihr Ergebnis mit der Formel für den hydrostatischen Druck in einer Flüssigkeit (Skizzen).
+ Warum unterscheiden sich qualitativ die Druckverläufe in Gasen und in Flüssigkeiten?

#line(length: 100%)

a) Siehe @barometrische_hoehenformel (a)

b) c) TODO

== Äquipartitionstheorem

+ Wie lautet der Gleichverteilungssatz für die mittlere kinetische Energie in einem idealen Gas, und wie hängt er mit den Freiheitsgraden $f$ der Gasmoleküle zusammen.
+ Welche Freiheitsgrade gibt es für ein molekulares Gas?
+ Interpretieren Sie mit Hilfe der molekularen Freiheitsgrade die Temperaturabhängigkeit der molaren spezifischen Wärme $C_V$ von Wasserstoff (siehe Abbildung)?

#line(length: 100%)

TODO

== Maxwell-Boltzmann-Verteilung

Die Maxwell-Boltzmann Verteilungsfunktion der Beträge der Geschwindigkeiten in einem idealen Gas ist gegeben durch
$ f(v) = (m/(2 pi k_B T))^(3/2) * 4 pi v^2 * e^(-(m*v^2)/(2 k_B T)) $

Skizzieren Sie die Verteilungsfunktion:
+ für 2 Gase gleicher Teilchenmasse und unterschiedlicher Temperatur
+ für 2 Gase gleicher Temperatur und unterschiedlicher Teilchenmasse
+ Berechnen Sie mit Hilfe der gegebenen Verteilungsfunktion die wahrscheinlichste Geschwindigkeit $v_W$. Zeichnen Sie diese in Ihren Skizzen ein.

#line(length: 100%)

#let avogadro = 6.022e23
#let kb = 1.381e-23;
#let maxwell_boltzmann(v, T, m) = calc.pow(m/(2*calc.pi*kb*T), 3/2) * 4*calc.pi*calc.pow(v, 2) * calc.exp(-(m*calc.pow(v, 2)/(2*kb*T)));

a)
#let T_1 = 200;
#let T_2 = 400;

#canvas({
  import draw: *

  set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)),
    legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%),
    grid: (stroke: (paint: gray, dash: "dashed", thickness: 0.5pt))
  )

  plot.plot(size: (12, 8),
    x-tick-step: 400,
    x-label: "Geschwindigkeit (m/s)",
    y-tick-step: 0.00025, y-min: 0, y-max: 0.0015,
    y-format: plot.formats.sci,
    y-label: "Wahrscheinlichkeit (s/m)",
    legend: "inner-north",
    y-grid: true,
    x-grid: true,
    {
      let domain = (0, 4000)

      plot.add(
        x => maxwell_boltzmann(x, 200, 4.032e-3/avogadro),
        domain: domain,
        samples: 200,
        label: $"He"_2" (4u) bei 200K"$,
        style: (stroke: blue)
      )
      plot.add(
        x => maxwell_boltzmann(x, 400, 4.032e-3/avogadro),
        domain: domain,
        samples: 200,
        label: $"He"_2" (4u) bei 400K"$,
        style: (stroke: red)
      )
      plot.add-vline(
        calc.sqrt((2*kb*200)/(4.032e-3/avogadro)),
        style: (stroke: (paint: blue, dash: "dotted"))
      )
      plot.add-vline(
        calc.sqrt((2*kb*400)/(4.032e-3/avogadro)),
        style: (stroke: (paint: red, dash: "dotted"))
      )
    })
})

b)
#let m_1 = 2.016e-3/avogadro; // Wasserstoff (H2 = 2 * 1u)
#let m_2 = 28.01e-3/avogadro; // Stiffstock (N2 = 2 * 14u)

#canvas({
  import draw: *

  set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)),
    legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%),
    grid: (stroke: (paint: gray, dash: "dashed", thickness: 0.5pt))
  )

  plot.plot(size: (12, 8),
    x-tick-step: 400,
    x-label: "Geschwindigkeit (m/s)",
    y-tick-step: 0.00025, y-min: 0, y-max: 0.0025,
    y-format: plot.formats.sci,
    y-label: "Wahrscheinlichkeit (s/m)",
    legend: "inner-north",
    y-grid: true,
    x-grid: true,
    {
      let domain = (0, 3000)

      plot.add(
        x => maxwell_boltzmann(x, 200, m_1),
        domain: domain,
        samples: 200,
        label: $"H"_2" (2u) bei 200K"$,
        style: (stroke: blue)
      )
      plot.add(
        x => maxwell_boltzmann(x, 200, m_2),
        domain: domain,
        samples: 200,
        label: $"N"_2" (28u) bei 200K"$,
        style: (stroke: red)
      )
      plot.add-vline(
        calc.sqrt((2*kb*200)/m_1),
        style: (stroke: (paint: blue, dash: "dotted"))
      )
      plot.add-vline(
        calc.sqrt((2*kb*200)/m_2),
        style: (stroke: (paint: red, dash: "dotted"))
      )
    }
  )
})



c) Die wahrscheinlichste Geschwindigkeit ist an der Maximum-Extremstelle der Verteilungsfunktion. Um diese zu erhalten, muss die Verteilungsfunktion zuerst abgeleitet werden:
$ dif/(dif v) f(v) = dif/(dif v)((m/(2 pi k_B T))^(3/2) * 4 pi v^2 * e^(-(m*v^2)/(2 k_B T)))  $

Um das Ableiten zu vereinfachen kann die Konstante $x = m/(2 k_B T)$ definiert werden. Danach sieht die Ableitung etwas simpler aus:
$ dif/(dif v) f(v) = x^(3/2)/pi * dif/(dif v)(4 pi v^2 * e^(-x*v^2)) $

Produktregel anweden und gleich Null setzen, um die Extremstelle zu finden:
$ dif/(dif v) f(v) = x^(3/2)/pi * (4 pi v^2 * -2 x v e^(-x*v^2) + 8 pi v * e^(-x*v^2)) = x^(3/2)/pi * 8 pi v * e^(-x*v^2) * (-x v^2 + 1) $
$ 0 = x^(3/2)/pi * 8 pi v * e^(-x*v^2) * (-x v^2 + 1) arrow.double 0 = 1 - x v^2 $
$ x v^2 = 1 arrow.double v = sqrt(1/x) $
$ v_W = sqrt(1 / (m/(2 k_B T))) = sqrt((2 k_B T)/m) $

Die wahrscheinlichste Geschwindigkeit ist in den Graphen bei a) und b) mit gepunkteten vertikalen Linien der entsprechenden Farbe markiert.

== Verteilungsfunktionen im idealen Gas

Geben Sie die Verteilungsfunktionen für
+ eine einzelne Geschwindigkeitskomponente,
+ den Geschwindigkeitsvektor
+ und den Geschwindigkeitsbetrag 
in einem idealen Gas an.

d) Skizzieren Sie die Kurven für a) und c) und zeichnen Sie in der entsprechenden Skizze
die 3 charakteristischen Geschwindigkeiten ($overline(v)$ , $v_W$, $overline(v^2)$) ein.

#line(length: 100%)

a) Für z.B. die $x$-Komponente im kartesischen Koordinatensystem:
$ f(v_x) = sqrt(m/(2 pi k_B T)) * e^(-(m*v_x^2)/(2 k_B T)) $

b) Die drei Komponenten sind unabhängig, also ergibt sich die gemeinsame Verteilung als Produkt:
$ f(arrow(v)) = (m/(2 pi k_B T))^(3/2) * exp(-(m*(v_x^2 + v_y^2 + v_z^2))/(2 k_B T)) = (m/(2 pi k_B T))^(3/2) * exp(-(m*v^2)/(2 k_B T)) $

c) Durch Übergang zu Kugelkoordinaten im Geschwindigkeitsraum ($dif^3 v = 4 pi v^2 dif v$) ergibt sich:
$ f(v) = (m/(2 pi k_B T))^(3/2) * 4 pi v^2 * e^(-(m*v^2)/(2 k_B T)) $

d)

== Energien und Geschwindigkeiten im idealen Gas <energie_geschwindigkeit_ideales_gas>

+ Beschreiben Sie das mikroskopische Modell des idealen Gases
+ Skizzieren Sie die Verteilungsfunktionen der kinetischen Energien und der Geschwindigkeiten in einem idealen Gas. Wie nennt man diese Verteilung?
+ Wie groß ist der Anteil der Gasteilchen, die eine kinetische Energie größer als $E_(k,0)$ besitzen? (nur mathematischer Ansatz). Wie groß ist die mittlere Geschwindigkeit $v$ dieser Teilchen? (nur mathematischer Ansatz). Zeichnen Sie beide Größen in Ihre Skizzen ein.

#line(length: 100%)

a) Ein Gas besteht aus Atomen oder Molekülen, die sich mit statistisch verteilten Geschwindigkeiten bewegen und die sich wie kleine starre Kugeln mit Radius $r_0$ verhalten. Bei Stößen untereinander und mit der Wand gelten Energie- und Impulssatz. Die Stöße sind vollkommen elastisch. Eine Wechselwirkung zwischen den Teilchen tritt nur bei Stößen auf (direkte Berührung der starren Kugeln). Bei Abständen $d > 2 * r_0$ beeinflussen sich die Gasatome überhaupt nicht. 

Man nennt ein solches Modellgas ein ideales Gas, wenn $r_0$ klein ist gegen den mittleren Abstand $chevron.l r chevron.r$ zwischen den Gasatomen, sodass man das Eigenvolumen der Atome gegenüber dem Volumen $V$, das den Atomen zur Verfügung steht, vernachlässigen kann. In diesem Modell des idealen Gases werden die Atome wie Massenpunkte behandelt.

b) Die Verteilungsfunktion der Geschwindigkeiten in einem idealen Gas ist die sogenannte Maxwell-Boltzmann-Verteilung:
$ f(v) = (m/(2 pi k_B T))^(3/2) * 4 pi v^2 * e^(-(m*v^2)/(2 k_B T)) $

#canvas({
  import draw: *

  set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)),
    legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%),
    grid: (stroke: (paint: gray, dash: "dashed", thickness: 0.5pt))
  )

  plot.plot(size: (12, 8),
    x-tick-step: 400,
    x-label: "Geschwindigkeit (m/s)",
    y-tick-step: 0.00025, y-min: 0, y-max: 0.0015,
    y-format: plot.formats.sci,
    y-label: "Wahrscheinlichkeit (s/m)",
    legend: "inner-north",
    y-grid: true,
    x-grid: true,
    {
      let domain = (0, 4000)

      plot.add(
        x => maxwell_boltzmann(x, 300, 4.032e-3/avogadro),
        domain: domain,
        samples: 200,
        label: $"He"_2" (4u) bei 300K"$,
        style: (stroke: blue)
      )
    })
})

Die Verteilung der kinetischen Energie ist eine abgeänderte Version der Maxwell-Boltzmann-Verteilung aufgrund der Tatsache, dass $E_"kin" = 1/2 * m * v^2:$
$ f(E) = 2/sqrt(pi) * 1/(k_B T)^(3/2) * sqrt(E) * e^(-E/(k_B T)) $

#let maxwell_boltzmann_energy(E, T) = 2/calc.sqrt(calc.pi) * 1/(calc.pow(kb*T, 3/2)) * calc.sqrt(E) * calc.exp(-E/(kb*T));
#let E(v) = 0.5 * m * calc.pow(v,2);

#canvas({
  import draw: *

  set-style(
    axes: (stroke: .5pt, tick: (stroke: .5pt)),
    legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%),
    grid: (stroke: (paint: gray, dash: "dashed", thickness: 0.5pt))
  )

  plot.plot(size: (12, 8),
    x-tick-step: 1/2 * kb * 750,
    x-label: "Energie (J)",
    x-format: plot.formats.sci,
    y-tick-step: 5e19, y-min: 0, y-max: 2e20,
    y-format: plot.formats.sci,
    y-label: "Wahrscheinlichkeit (" + $"J"^(-1)$ + ")",
    legend: "inner-north",
    y-grid: true,
    x-grid: true,
    {
      let domain = (0, 1/2 * kb * 3000)

      plot.add(
        x => maxwell_boltzmann_energy(x, 300),
        domain: domain,
        samples: 200,
        label: $"He"_2" (4u) bei 300K"$,
        style: (stroke: red)
      )
      plot.add-vline(
        2e-21,
        style: (stroke: (paint: red, dash: "dotted"))
      )
    })
})

c) TODO

== Molekülzahlen und charakteristische Geschwindigkeiten

+ Geben Sie die Verteilungsfunktionen für den Geschwindigkeitsbetrag in einem idealen Gas an und skizzieren Sie diese Verteilungsfunktion
+ Wie groß ist der Anteil der Gasatome dieses Gases, deren Geschwindigkeit zwischen der wahrscheinlichsten Geschwindigkeit $w_W$ und der mittleren Geschwindigkeit $overline(v)$ liegt? (nur Ansatz und graphische Darstellung).
+ Wie groß ist die mittlere kinetische Energie $overline(E)$ dieses Anteils der Moleküle? (nur Ansatz)?

#line(length: 100%)

a) Siehe @energie_geschwindigkeit_ideales_gas (b)

b) c) TODO

== Molekülzahlen im idealen Gas

+ Geben Sie die Verteilungsfunktionen für den Geschwindigkeitsbetrag in einem idealen Gas an und skizzieren Sie diese Verteilungsfunktion 
Welche Molekülzahl ist größer:
+ Die Zahl der Moleküle, die Geschwindigkeiten zwischen der Wahrscheinlichsten Geschwindigkeit $w_W$ und der mittleren Geschwindigkeit $overline(v)$ haben,
oder
+ die Zahl der Moleküle, deren Geschwindigkeiten zwischen der mittleren Geschwindigkeit $overline(v)$ und der Wurzel aus dem mittleren Geschwindigkeitsquadrat $sqrt(overline(v^2))$ liegen? (Begründen Sie Ihre Aussage mit Hilfe Ihrer Skizze aus (a) und erläutern Sie diese!)

#line(length: 100%)

TODO

== Gasparameter

+ Wie lautet der Gleichverteilungssatz?
+ Wie groß sind die molaren Wärmekapazitäten $C_V$ und $C_p$ von Stickstoff ($N_2$) bei hohen Temperaturen?
+ Geben Sie die mikroskopische Interpretation der Temperatur und des Druckes eines idealen Gases an.

#line(length: 100%)

TODO

== Radiometer

+ Welchen Impuls überträgt ein Gasteilchen beim elastischen Stoß mit einer starren Wand?
+ Erklären Sie den Aufbau und die Funktionsweise der Lichtmühle (auch als Radiometer bekannt, siehe Abbild). Was befindet sich im geschlossenen Glasbehälter des Radiometers?
ABBILD HIER EINFÜGEN JAJA
+ Warum dreht sich das Rädchen im Inneren des Glasbehälters im Uhrzeigesinn (von oben gesehen), mit den nicht geschwärzten Flächen voran?

#line(length: 100%)

TODO

== Kinetische Kenngrößen im idealen Gas

+ Was versteht man unter dem Stoßquerschnitt und der mittleren freien Weglänge in einem idealen Gas?
+ Wie hängen diese diesen beiden Größen zusammen?
+ Berechnen Sie mittels des Äquipartitionstheorems die mittlere kinetische Energie der Translationsbewegung eines Moleküls des Sauerstoffgases ($O_2$) bei $27°C$ (Hinweis: Boltzmann-Konstante $k_B = 1,38 * 10^(-23) J/K$)

#line(length: 100%)

TODO

== Stöße im idealen Gas

In einem evakuierten Gefäß mit den Abmessungen $10 times 10 times 10 "cm"^3$ befinden sich $10^15$ Stickstoffmoleküle.
+ Wie lautet der Zusammenhang zwischen Druck, Temperatur, Stoffmenge und Volumen in einem idealen Gas?
+ Berechnen Sie die mittlere freie Weglänge der Moleküle im Gefäß. (Der Stoßquerschnitt $sigma$ eines Stickstoffmoleküls beträgt $5 * 10^(-15) "cm"^2$).
+ Was kommt häufiger im Gefäß vor: die Stöße der Moleküle untereinander oder die Stöße der Moleküle mit der Wand?

#line(length: 100%)

a) Der Zusammenhang lässt sich durch die ideale Gasgleichung beschreiben:
$ p * V = n * R * T $
(Wobei $n$ die Stoffmenge und $R = 8.314 "J"/("mol"*"K")$ die universelle Gaskonstante ist)

b) Für die mittlere freie Weglänge $lambda$ in einem idealen Gas gilt:
$ lambda = 1/(sqrt(2) * n * sigma) $

Zuerst muss die Teilchendichte $n$ berechnet werden:
$ n = N/V = 10^15/(10^(-3)"m"^3) = 10^18"m"^(-3) $

Nun einfach alles in die Formel für die mittlere freie Weglänge einsetzen:
$ lambda = 1/(sqrt(2) * 10^18"m"^(-3) * 5 * 10^(-19)"m"^2) = 1/(sqrt(2) * 0.5)"m" tilde.equiv 2.83m $

c) TODO

== Mittlere kinetische Energie

In einem Behälter befindet sich Stickstoff unter einem Druck von $1.1 "MPa"$. Die Teilchenzahldichte beträgt $1020 "cm"^(-3)$.
+ Wie hoch ist die Temperatur des Gases?
+ Wie groß ist die mittlere kinetische Energie der Stickstoffmoleküle.
+ Wie ändert sich allgemein die mittlere kinetische Energie der Moleküle eines Gases, wenn der Druck bei gleichbleibendem Volumen verdoppelt wird?

#line(length: 100%)

a) Allgemeine Gasgleichung umformen:
$ p * V = N * k_B * T arrow.double p = N/V * k_B * T arrow.double T = p/(N/V * k_B) $
$ T = (1.1 * 10^6)/(1020 * 10^6 * 1.38 * 10^(-23)) $

== Druckunterschiede

Ein Topf mit Wasser wird auf dem Herd erhitzt.
+ Wie groß muss der Dampfdruck des Wasserdampfes mindestens sein, damit sich Dampfblasen bilden?
+ Kurz vor dem Sieden bilden sich am Boden kleine Dampfblasen, die jedoch beim Hochsteigen verschwinden. Worauf ist das zurückzuführen?
+ Wenn das Wasser siedet, werden die Dampfblasen beim Hochsteigen sogar geringfügig größer. Erklären Sie diesen Unterschied im Verhalten der Dampfblasen in Relation zu (b)

#line(length: 100%)

TODO

== Diffusion in Gasen

+ Was ist Diffusion? Ist mit Diffusion eine Strömung verbunden?
+ Wie lautet das erste Fick'sche Diffusionsgesetz? Erläutern Sie die darin vorkommenden Größen.
+ Leiten Sie aus dem ersten Fick'schen Diffusionsgesetz und der Kontinuitätsgleichung das zweite Fick'sche Diffusionsgesetz (Diffusionsgleichung) ab? Formulieren Sie dieses für den ein- und den dreidimensionalen Fall.

#line(length: 100%)

TODO

== Freie Enthalpie

+ Zeigen Die mithilfe der Definition der freien Enthalpie $G = U - T * S + p * V$ und der Beziehung $dif U = T * dif S - p * dif V$ die Gültigkeit der Fundamentalgleichung $dif G = V * dif p - S * dif T$
+ Bilden Sie das totale Differential von $G(T,p)$ und leiten Sie daraus eine Vorschrift zur Berechnung von $S$ ab.
+ Die Freie Enthalpie einer Substanz sei gegeben durch $G = a * T + b + c/T$. Wie hängt die Entropie $S$ dieser Substanz von der Temperatur $T$ ab?

#line(length: 100%)

TODO

== Adiabatischer Prozess <adia_prozess>

+ Wie ist ein adiabatischer Prozess definiert?
+ Ein ideales einatomiges Gas, Anfangstemperatur $T_1$, wird einmal isotherm und einmal adiabatisch von einem Volumen $V$ auf $V/2$ komprimiert. Bei welcher Probe ist der Enddruck größer?
+ Wie groß sind die Endtemperaturen der beiden Proben?

#line(length: 100%)

a) Adiabatische Prozesse liegen vor, wenn das System keine Wärmeenergie mit seiner Umgebung austauscht ($dif Q = 0$).

b) c) TODO

== Adiabatische Prozesse und Freiheitsgrade

+ Wie ist ein adiabatischer Prozess definiert?
+ Wie ist der Adiabatenexponent $kappa$ eines idealen Gases definiert, und wovon hängt er ab?
+ Der Adiabatenexponent eines idealen Gases wurde zu $kappa = 1,33$ ermittelt. Bestimmen Sie die Zahl der Freiheitsgrade $f$ der Gasmoleküle.

#line(length: 100%)

a) Siehe @adia_prozess (a)

b) c) TODO

== Van-der-Waals Gas

+ Wie unterscheidet sich das Modell des Van-der-Waals Gases vom Modell des idealen Gases?
+ Geben Sie die van-der-Waals'sche Zustandsgleichung eines realen Gases an und beschreiben Sie die vorkommenden Größen.
+ Skizzieren Sie am $p, V$-Diagramm van-der Waalssche Isothermen eines realen Gases oberhalb und unterhalb der kritischen Temperatur. Wie verläuft eine unterkritische Isotherme im Realfall? Erklären Sie in diesem Zusammenhang die Naxwell-Konstruktion.

#line(length: 100%)

a) Das Van-der-Waals-Gas ist ein Modell für reale Gase, das im Gegensatz zum idealen Gas das Eigenvolumen der Teilchen und die intermolekularen Anziehungskräfte berücksichtigt.

b) Die van-der-Waals'sche Zustandsgleichung in molarer Form ist:
$ (p + a/V_m^2) * (V_m - b) = R * T $

$p$ ist der Druck des Gases, $V_m = V/n$ das molare Volumen, $T$ die absolute Temperatur, $R$ die allg. Gaskonstante, $a$ die Binnendruck-Konstante welche die Anziehungskräfte der Teilchen berücksichtigt und $b$ das Kovolumen welches das Eigenvolumen der Teilchen berücksichtigt.

c) Im Realfall verläuft eine unterkritiscshe Isotherme TODO

#image("assets/fragenkatalog/van_der_waals_isothermen.png")
