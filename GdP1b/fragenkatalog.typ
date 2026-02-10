// David Koch - 12503857

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

TODO

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

== Hydrostatik und Auftrieb

+ Was versteht man unter dem hydrostatischen Paradoxon?
+ Wie kommt die Auftriebskraft zustande?
+ Ein Stück Kupfer ($rho = 9.0 g / "cm"^3$) der Masse $500"g"$ hänge an einer Federwaage. Welche Kraft zeigt Federwaage an? 

#line(length: 100%)

TODO

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

== Hydrostatik und Auftrieb

+ Was ist das hydrostatische Paradoxon?
+ Beschreiben Sie die physikalische Grundlage und die Funktionsweise einer hydraulischen Presse (Formeln und Skizze).
+ Ein zylinderförmiger Körper (Dichte $rho_Z$) wird in eine Flüssigkeit (Dichte $rho_L$) getaucht. Berechnen Sie die resultierende Auftriebskraft.

#line(length: 100%)

TODO

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

TODO

== Hydrostatik

+ Was ist das hydrostatische Paradoxon?
+ Beschreiben Sie die physikalische Grundlage und die Funktionsweise einer hydraulischen Presse (Formeln und Skizze).
+ Berechnen Sie die Kraft $arrow(F)$, die auf die große Wand eines Aquariums mit der Länge $l = 1,2m$ und dem Füllstand $h = 0,5m$ (siehe Abbildung) wirkt.

#line(length: 100%)

TODO

== Auftrieb, Dichte und Schwimmen

+ Ein zylinderförmiger Körper (Dichte $rho_Z$) wird in eine Flüssigkeit (Dichte $rho_L$) getaucht. Berechnen Sie die resultierende Auftriebskraft.
+ Welche Bedingung muss die Dichte $rho_K$ eines Körpers erfüllen, damit er in einer Flüssigkeit (Dichte $rho_L$) schwimmt?
+ Ein Floß mit einer Fläche von $3 times 3 "m"^2$ bestehe aus Holz der Dichte $0.6 "g"/"cm"^3$ und sei $10 "cm"$ dick. Wie viele Menschen mit einer Masse von je $70 "kg"$ können auf dem Floß stehen ohne dass es untergeht?

#line(length: 100%)

TODO


= Fluiddynamik

== Viskose Flüssigkeiten

+ Was versteht man unter Viskosität einer Flüssigkeit?
+ Berechnen Sie die Grenzgeschwindigkeit $v$ einer Kugel mit dem Radius $r$, welche in einer Viskosen Flüssigkeit (Viskosität $eta$) absinkt. Wie ist aufgrund dieser Beziehung die Viskosität bei bekanntem $v$ berechenbar?
+ Kann es bei einer nicht-viskosen Flüssigkeit zu Turbulenz kommen? Begründen Sie Ihre Antwort.

#line(length: 100%)

TODO

== Bernoulli-Gleichung

+ Wie lautet die Bernoulli Gleichung?
+ Auf welchem Erhaltungssatz beruht sie?
+ Durch ein Rohr mit der Querschnittsfläche $S_1$, welches sich in der Mitte auf die Fläche $S_2$ verengt, ströme Wasser mit der Geschwindigkeit $v_1$ am Ein- bzw. Ausgang. Ein U-Rohr, welches teilweise mit Quecksilber (Dichte $rho$) gefüllt ist, verbindet den Abschnitt mit Fläche $S_2$ mit dem Abschnitt mit Fläche $S_1$. Geben Sie die Höhendifferenz $h$ im U-Rohr an.

#line(length: 100%)

TODO

== Laminare Strömung

+ Skizzieren und erklären Sie das Geschwindigkeitsprofil einer laminaren Strömung durch ein Rohr? Geben Sie dessen mathematische Form an.
+ Leiten Sie aus dem Geschwindigkeitsprofil das Gesetz von Hagen-Poiseuille her
+ Was sind die Konsequenzen des Hagen-Poiseuille Gesetzes für Rohre unterschiedlicher Durchmesser?

#line(length: 100%)

TODO

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

== Barometrische Höhenformel und Auftrieb in Gasen

+ Leiten Sie die barometrische Höhenformel ab.
+ In welche Höhe über dem Meeresspiegel ist der Luftdruck halb so groß wie auf dem Meeresspiegel?
+ Welche maximale Höhe $h$ kann ein Ballon mit einem konstanten Volumen $V$ erreichen, der mit Helium (Dichte $rho_"He"$) gefüllt ist und eine Last der Masse $m$ trägt? Am Boden betrage die Dichte der Luft $rho_0$ und der Luftdruck $p_0$. Die Außentemperatur $T$ wird über die gesamte Höhe als konstant vorausgesetzt.

#line(length: 100%)

TODO

== Druck in Gasen und Flüssigkeiten

+ Wie lautet die barometrische Höhenformel, leiten Sie diese ab.
+ Vergleichen Sie Ihr Ergebnis mit der Formel für den hydrostatischen Druck in einer Flüssigkeit (Skizzen).
+ Warum unterscheiden sich qualitativ die Druckverläufe in Gasen und in Flüssigkeiten?

#line(length: 100%)

TODO

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

TODO

== Verteilungsfunktionen im idealen Gas

Geben Sie die Verteilungsfunktionen für
+ eine einzelne Geschwindigkeitskomponente,
+ den Geschwindigkeitsvektor
+ und den Geschwindigkeitsbetrag 
in einem idealen Gas an.
+ Skizzieren Sie die Kurven für a) und c) und zeichnen Sie in der entsprechenden Skizze
die 3 charakteristischen Geschwindigkeiten ($overline(v)$ , $v_W$, $overline(v^2)$) ein.

#line(length: 100%)

TODO

== Energien und Geschwindigkeiten im idealen Gas

+ Beschreiben Sie das mikroskopische Modell des idealen Gases
+ Skizzieren Sie die Verteilungsfunktionen der kinetischen Energien und der Geschwindigkeiten in einem idealen Gas. Wie nennt man diese Verteilung?
+ Wie groß ist der Anteil der Gasteilchen, die eine kinetische Energie größer als $E_(k,0)$ besitzen? (nur mathematischer Ansatz). Wie groß ist die mittlere Geschwindigkeit $v$ dieser Teilchen? (nur mathematischer Ansatz). Zeichnen Sie beide Größen in Ihre Skizzen ein.

#line(length: 100%)

TODO

== Molekülzahlen und charakteristische Geschwindigkeiten

+ Geben Sie die Verteilungsfunktionen für den Geschwindigkeitsbetrag in einem idealen Gas an und skizzieren Sie diese Verteilungsfunktion
+ Wie groß ist der Anteil der Gasatome dieses Gases an, deren Geschwindigkeit zwischen der wahrscheinlichsten Geschwindigkeit $w_W$ und der mittleren Geschwindigkeit $overline(v)$ liegt? (nur Ansatz und graphische Darstellung).
+ Wie groß ist die mittlere kinetische Energie $overline(E)$ dieses Anteils der Moleküle? (nur Ansatz)?

#line(length: 100%)

TODO

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

TODO

== Mittlere kinetische Energie

In einem Behälter befindet sich Stickstoff unter einem Druck von $1,1 "MPa"$. Die Teilchenzahldichte beträgt $1020 "cm"^(-3)$.
+ Wie hoch ist die Temperatur des Gases?
+ Wie groß ist die mittlere kinetische Energie der Stickstoffmoleküle.
+ Wie ändert sich allgemein die mittlere kinetische Energie der Moleküle eines Gases, wenn der Druck bei gleichbleibendem Volumen verdoppelt wird?

#line(length: 100%)

TODO

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

== Adiabatischer Prozess

+ Wie ist ein adiabatischer Prozess definiert?
+ Ein ideales einatomiges Gas, Anfangstemperatur $T_1$, wird einmal isotherm und einmal adiabatisch von einem Volumen $V$ auf $V/2$ komprimiert. Bei welcher Probe ist der Enddruck größer?
+ Wie groß sind die Endtemperaturen der beiden Proben?

#line(length: 100%)

TODO

== Adiabatische Prozesse und Freiheitsgrade

+ Wie ist ein adiabatischer Prozess definiert?
+ Wie ist der Adiabatenexponent $kappa$ eines idealen Gases definiert, und wovon hängt er ab?
+ Der Adiabatenexponent eines idealen Gases wurde zu $kappa = 1,33$ ermittelt. Bestimmen Sie die Zahl der Freiheitsgrade $f$ der Gasmoleküle.

#line(length: 100%)

TODO

== Van-der-Waals Gas

+ Wie unterscheidet sich das Modell des Van-der-Waals Gases vom Modell des idealen Gases?
+ Geben Sie die van-der-Waals'sche Zustandsgleichung eines realen Gases an und beschreiben Sie die vorkommenden Größen.
+ Skizzieren Sie am $p, V$-Diagramm van-der Waalssche Isothermen eines realen Gases oberhalb und unterhalb der kritischen Temperatur. Wie verläuft eine unterkritische Isotherme im Realfall? Erklären Sie in diesem Zusammenhang die Naxwell-Konstruktion

#line(length: 100%)

TODO
