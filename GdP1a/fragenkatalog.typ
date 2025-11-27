// David Koch - 12503857

#set text(font: "New Computer Modern")
#set heading(numbering: "1.1.1")
#set enum(numbering: "a.1)")
#set page(numbering: "1 / 1")
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
    Diese Ausarbeitung des Fragenkatalogs zu GdP1a dient in erster Linie der Vorbereitung auf die VO-Prüfung durch starres Auswendiglernen. *Fehler vorbehalten.*

    Verwendete Quellen / Ressourcen: 
    - Vorlesungsfolien vom Eisenmenger
    - Demtröder
    - Persönliche Ausarbeitungen der Übungsaufgaben
    - LEIFIphysik
    - Wikipedia
    - Ausarbeitungen älterer Übungsaufgaben auf higgs.at
    - LLMs wie DeepSeek, ChatGPT 
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
  title: [Grundlagen der Physik 1a],
  subtitle: [Ausarbeitung Fragenkatalog],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

= Kinematik (4)

== Bewegungsgleichung schiefer Wurf

+ Wie lautet die Bewegungsgleichung für den schiefen Wurf im Erdschwerefeld?
+ Leiten Sie Formeln für die Höhe des Scheitels, den Auftreffpunkt (wenn Start- und Endpunkt auf gleicher Höhe sind), sowie die Bahnkurve ab.

#line(length: 100%)

a)
Zuerst muss die Geschwindigkeit auf die zwei Achsen aufgeteilt werden (wenn Wurfwinkel $alpha$, Anfangsgeschwindigkeit $attach(v, b: 0)$):

$ attach(v, b: x) = attach(v, b: 0) * cos(alpha) $
$ attach(v, b: y) = attach(v, b: 0) * sin(alpha) $

Bewegungsgleichung in $x$-Richtung: $x(t) = attach(v, b: x) * t$

Bewegungsgleichung in $y$-Richtung: $y(t) = -1/2 * g * t^2 + attach(v, b: y) * t$

b)
Am Scheitelpunkt ist $attach(v, b: y) = 0$:
$ attach(v, b: 0) = (\dy)/(\dt)y(t) = -g*attach(t, b: S) + attach(v, b: 0) * sin(alpha) = 0 arrow.double attach(t, b: S) = (attach(v, b: 0) * sin(alpha))/g $

Einsetzen in $y(t)$:
$ attach(y, b: S) = -1/2 * g * ((attach(v, b: 0) * sin(alpha))/g)^2 + attach(v, b: 0) * sin(alpha) * (attach(v, b: 0) * sin(alpha))/g $
$ attach(y, b: S) = (attach(v, b: 0)^2 * sin^2(alpha))/g - 1/2 * (attach(v, b: 0)^2 * sin^2(alpha))/g = (attach(v, b: 0)^2 * sin^2(alpha))/(2g) $

Am Auftreffpunkt ist $y(t) = 0$ mit $t eq.not 0$:
$ y(t) = -1/2 * g * attach(t, b: A)^2 + attach(v, b: 0) * sin(alpha) * attach(t, b: A) = 0 $
$ attach(t, b: A) * (-1/2 * g * attach(t, b: A) + attach(v, b: 0) * sin(alpha)) arrow.double 1/2 * g * attach(t, b: A) = attach(v, b: 0) * sin(alpha) arrow.double attach(t, b: A) = (2 * attach(v, b: 0) * sin(alpha)) / g $

Einsetzen in $x(t)$:
$ attach(x, b: A) = attach(v, b: 0) * cos(alpha) * (2 * attach(v, b: 0) * sin(alpha)) / g = (attach(v, b: 0)^2 * sin(2*alpha)) / g $

Für die Bahnkurve folgt aus $x(t) = attach(v, b: x)*t$:
$ x(t) = attach(v, b: 0) * cos(alpha) arrow.double t = x/(attach(v, b: 0) * cos(alpha)) $

Einsetzen in $y(t)$:
$ y = -1/2*g*(x^2)/(attach(v, b: 0)^2 * cos^2(alpha)) + attach(v, b: 0) * sin(alpha) * x/(attach(v, b: 0) * cos(alpha)) = -g/(2*attach(v, b: 0)^2*cos^2(alpha)) * x^2 + x*tan(alpha) $

== Allg. krummlinige Bewegung

Man diskutiere die allgemeine krummlinige Bewegung im Falle nicht konstanter Beschleunigung.

???

== Gradlinig-gleichförmige Bewegung Punktmasse

Eine Masse m bewege sich gradlinig-gleichförmig vom Punkt P#sub("1")\($attach(x, b: 1), attach(y, b: 1)$) zum Punkt P#sub("2")\($attach(x, b: 2), attach(y, b: 2)$). 

+ Fertigen Sie eine Skizze an und erklären Sie, was man unter gradlinig-gleichförmig versteht.
+ Wie ist die mittlere Geschwindigkeit definiert?
+ Wie ist die momentane Geschwindigkeit definiert?
+ Geben Sie den Vektor der Geschwindigkeit in kartesischen Koordinaten an.
+ Wie lautet der Betrag der Geschwindigkeit in kartesischen Koordinaten?

#line(length: 100%)

a) TODO

b) 
$ arrow(overline(v)) = (Delta arrow(r))/(Delta t) = (arrow(attach(r, b: 2)) - arrow(attach(r, b: 1)))/(attach(t, b: 2) - attach(t, b: 1)) $

c) $ arrow(v) = (Delta arrow(r))/(Delta t) "mit" Delta t arrow 0 = (dif arrow(r))/(dif t) $

d) $ arrow(v) = vec(attach(v, b: x), attach(v, b: y)) = vec((attach(x, b: 2) - attach(x, b: 1))/(attach(t, b: 2) - attach(t, b: 1)), (attach(y, b: 2) - attach(y, b: 1))/(attach(t, b: 2) - attach(t, b: 1))) $

e) $ v = abs(arrow(v)) = sqrt(attach(v, b: x)^2 + attach(v, b: y)^2) = sqrt((attach(x, b: 2) - attach(x, b: 1))^2 + (attach(y, b: 2) - attach(y, b: 1))^2) / (attach(t, b: 2) - attach(t, b: 1)) $

== (Gleichförmige) Kreisbewegung

+ Wie lautet der Zusammenhang zwischen dem Vektor der Winkelgeschwindigkeit und der Tangentialgeschwindigkeit?
+ Wie lautet die Zentripetalbeschleunigung?
+ Fertigen Sie eine Skizze mit allen relevanten Größen.

#line(length: 100%)

a) Der Vektor der Winkelgeschwindigkeit steht senkrecht auf dem Mittelpunkt der Kreisbahn. Wenn dieser nun mit dem Ortsvektor ein Kreuzprodukt bildet, entsteht der Vektor der Tangentialgeschwindigkeit, denn dieser steht im Raum normal auf den Winkelgeschwindigkeits- als auch den Ortsvektor.
$ arrow(v) = arrow(omega) times arrow(r) $
b) siehe @zentripetalbeschleunigung
c) TODO (selber machen probably, online ist alles trash)

== Zentripetalbeschleunigung berechnen <zentripetalbeschleunigung>

Zeigen Sie, wie sich die Zentripetalbeschleunigung bei der gleichförmigen Kreisbewegung berechnet. 

#line(length: 100%)

Die Beschleunigung $arrow(a)$ steht senkrecht auf der Geschwindigkeit $arrow(v)$. Der Vektor $(dif attach(hat(e), b: t))/(dif t)$ gibt an, mit welcher Winkelgeschwindigkeit sich die Tangente dreht. Da $attach(hat(e), b: t)$ immer senkrecht auf dem Radiusvektor steht, drehen sich beide Vektoren mit der gleichen Winkelgeschwindigkeit $omega = (dif phi)/(dif t)$, d.h. für den Betrag gilt: $abs((dif attach(hat(e), b: t)) / (dif t)) = omega$. Deshalb erhalten wir für die Beschleunigung

$ arrow(a) = v * (dif attach(hat(e), b: t))/(dif t) = R * omega^2 * attach(hat(e), b: a) = -R * omega^2 * hat(r) $
$ abs(a) = R * omega^2 $

== Kugelkoordinaten

+ Wie sind Kugelkoordinaten definiert? Fertigen Sie eine Skizze an und zeichnen Sie die relevanten Größen ein.
+ Wie lauten die Umrechnungsformeln zwischen kartesischen Koordinaten und Kugelkoordinaten? 
+ Wie lautet die Formel für das Volumenelement in Kugelkoordinaten?

#line(length: 100%)

a) Der Ortsvektor $arrow(r)$ wird bestimmt durch seinen Betrag $r$ und die Winkel $theta$ und $phi$
#image("assets/fragenkatalog/Kugelkoord.svg")

b) 
#table(
  columns: 2,
  align: horizon,
  table.header(
    [*Kartesische Koord.*],
    [*Kugelkoord.*],
  ),
  [$ x = r * sin(theta) * cos(phi) $], [$ r = sqrt(x^2 + y^2 + z^2) $],
  [$ y = r * sin(theta) * sin(phi) $], [$ theta = arccos(z/(sqrt(x^2 + y^2 + z^2))) $],
  [$ z = r * cos(theta) $], [$ phi = arctan(y/x) $],
)

c) $ dif V = r^2 * sin(theta) dif r dif theta dif phi $

== Zylinderkoordinaten

+ Wie sind Zylinderkoordinaten definiert (Skizze)?
+ Wie lauten die Formeln für die Umrechnung von kartesischen in Zylinderkoordinaten?
+ Wie lautet die Formel für das Volumenelement? 

#line(length: 100%)

a) Der Ortsvektor $arrow(r)$ wird bestimmt durch den Radius $r$ (Projektion vom Ortsvektor in xy-Ebene), dem Winkel $phi$ und der Höhe $z$
#image("assets/fragenkatalog/Zylinderkoord.svg")

b) 
#table(
  columns: 2,
  align: horizon,
  table.header(
    [*Kartesische Koord.*],
    [*Zylinderkoord.*],
  ),
  [$ x = r * cos(phi) $], [$ r = sqrt(x^2 + y^2) $],
  [$ y = r * sin(phi) $], [$ theta = arctan(x/y) $],
  [$ z = z $], [$ z = z $],
)

c) $ dif V = r dif r dif phi dif z $

== Grundeinheiten SI-System

Welche sind die Grundeinheiten des internationalen Einheitensystems?

#line(length: 100%)

- Länge: Meter ($m$)
- Masse: Kilogramm ($\kg$)
- Zeit: Sekunde ($s$)
- Elektrische Stromstärke: Ampere ($A$)
- Temperatur: Kelvin ($K$)
- Stoffmenge: Mol ($\m\ol$)
- Lichtstärke: Candela ($\cd$)

== Definition von Meter, Kilogramm und Sekunde

Wie sind die Grundeinheiten Meter, Kilogramm und Sekunde definiert? 

#line(length: 100%)

- Meter: Die Distanz, die Licht innerhalb von $1/299792458 s$ zurücklegt.
- Kilogramm: Wurde 2019 mithilfe der Planck-Konstante $h = 6.2607015*10^(-34) (\kg*m^2)/s$ an den Meter und die Sekunde gebunden, d.h. $1 \kg = h/(6.2607015*10^(-34)) s/(m^2)$ (früher: Ur-Kilogramm in Paris)
- Zeit: Die Sekunde ist die Dauer von 9192631770 Schwingungsperioden der Strahlung korrespondierend dem Übergang der zwei Hyperfeinniveaus des Grundzustandes von $attach("Cs", tl: 133)$.

== Raumwinkel (Teil 1) <raumwinkel_1>

Wie ist der Raumwinkel definiert? Wie groß ist Raumwinkel für eine Vollkugel? 

#line(length: 100%)

Die Einheit des Raumwinkels ist der "Steradiant"

$ "Raumwinkel" = "Ausschnittsfläche auf der Einheitskugel" = ("Kallotenfläche" (m^2))/("Radius"^2 (m^2)) $
$ Omega = S/(R^2) s r $

Raumwinkel für eine Vollkugel: 
$ (4*pi*R^2) / R^2 = 4*pi "sr" $

#image("assets/fragenkatalog/01_Kugelkalotte-Raumwinkel.svg")

== Raumwinkel (Teil 2)

Wie ist der Raumwinkel definiert? Wie berechnen Sie den Raumwinkel für eine Halbkugel?

#line(length: 100%)

Definition siehe @raumwinkel_1.

Raumwinkel für eine Halbkugel berechnen: 
$ attach(Omega, b: "halb") = "Raumwinkel Vollkugel"/2 = (1/2) * (4*pi*R^2) / R^2 = (1/2) * 4*pi = 2*pi "sr" $ 

== Definition von Geschwindigkeit, Impuls, Kraft, Arbeit und Leistung

+ Definieren Sie die Größen Geschwindigkeit, Impuls, Kraft, Arbeit und Leistung. 
+ Zeigen Sie wie diese Größen zusammenhängen und geben Sie für jede Größe die entsprechenden Dimensionen bzw. Einheiten an.

#line(length: 100%)

a und b)
#table(
  columns: 5,
  align: horizon,
  inset: 8pt,
  table.header(
    [*Größe*],
    [*Definition*],
    [*Formel*],
    [*SI-Einheit*],
    [*Dimension*],
  ),
  [Geschwindigkeit $arrow(v)$], [Änderung des Ortes mit der Zeit], [$arrow(v) = (dif arrow(r))/(dif t)$], [$m/s$], [$L*T^(-1)$],
  [Impuls $arrow(p)$], [Produkt aus Masse und Geschwindigkeit], [$arrow(p) = m * arrow(v)$], [$(\kg*m)/s$], [$M*L*T^(-1)$],
  [Kraft $arrow(F)$], [Änderung des Impulses über Zeit], [$arrow(F) = (dif arrow(p))/(dif t)$], [$N = (\kg*m)/s^2$], [$M*L*T^(-2)$],
  [Arbeit $W$], [Übertragene Energie, wenn eine Kraft entlang einem Weg wirkt], [$W = integral arrow(F)*dif arrow(r)$], [$J = (\kg*m^2)/s^2$], [$M*L^2*T^(-2)$],
  [Leistung $P$], [Verrichtete Arbeit pro Zeitspanne], [$P = (dif W)/(dif t)$], [$W = (\kg*m^2)/s^3$], [$M*L^2*T^(-3)$],
)

b) 
$ "Ort" - "Ableitung nach Zeit" arrow "Geschwindigkeit" $
$ "Geschwindigkeit" - "Multiplikation mit Masse m" arrow "Impuls" $
$ "Impuls" - "Ableitung nach Zeit" arrow "Kraft" $
$ "Kraft" - "Kraft-Weg-Integral" arrow "Arbeit" $
$ "Arbeit" - "Ableitung nach Zeit" arrow "Leistung" $

== Punktmasse im Fall

Ein Körper der Masse m fällt aus einer Höhe H auf den Boden.

+ Wie lautet die Bewegungsgleichung?
+ Berechnen Sie die Fallzeit.
+ Berechnen Sie die Aufprallgeschwindigkeit.
+ Zeichnen Sie Zeitdiagramme für den Ort, die Geschwindigkeit und die Beschleunigung.

= Dynamik

== Definition Kraft

+ Wie ist Kraft definiert?
+ Welche Dimension hat Kraft und wie hängt sie mit den Grundeinheiten zusammen? 

#line(length: 100%)

a) Es gibt zwei (äquivalente) Definitionen:

Durch Masse und Beschleunigung (bei konstanter Masse):
$ arrow(F) = m * arrow(a) $

Durch Impulsänderung:
$ arrow(F) = (dif arrow(p))/(dif t) $

b) $ [F] = [m] * [a] = M * L/T^2 = M * L * T^(-2) $

Im SI-Einheitensystem: $M*L*T^(-2) arrow 1 (\kg*m)/s^2 = 1 "Newton"$, d.h. $1N$ beschleunigt $1\kg$ um $1m/s^2$

== Kräfte

+ Was sind konservative Kräfte?
+ Geben Sie Beispiele für konservative und nicht konservative Kräfte an?
+ Wie hängen Kraft, Feldstärke und Potential zusammen?
+ Untersuchen Sie, ob die Federkraft eine konservative Kraft ist.

== Kraftfelder

+ Welche Bedingungen muss ein konservatives Kraftfeld erfüllen?
+ Was ergibt sich daraus für die potentielle und kinetische Energie; Geben Sie Beispiele für konservative und nichtkonservative Felder an. 

#line(length: 100%)

a) In einem konservativen Kraftfeld ist in jedem Raumpunkt $P$ die Summe aus potentieller und kinetischer Energie eines Massenpunktes konstant. Diese konstante Summe heißt die mechanische Gesamtenergie $E$. Die Gesamtenergie $E$ bleibt bei konservativen Kräften erhalten (konserviert).

b) In einem konservativen Kraftfeld kann die Bewegung eines Körpers von $attach(P, b: 1)$ zu $attach(P, b: 2)$ mit dem Energiesatz der Mechanik beschrieben werden: $attach(E, b: "pot")(attach(P, b: 0)) + attach(E, b: "kin")(attach(P, b: 0)) = attach(E, b: "pot")(attach(P, b: 1)) + attach(E, b: "kin")(attach(P, b: 1)) = E$

== Kraft, Feldstärke, Potential und pot. Energie

Erläutern Sie die Größen Kraft, Feldstärke, Potential und potentielle Energie. Wie hängen diese Größen zusammen?

Für welche Art von Kräften macht die Definition der potentiellen Energie Sinn und für welche nicht? Geben Sie Beispiele an.

== Energie- und Impulssatz

Geben sie den Energie- und Impulssatz im Schwerpunktsystem an; was versteht man unter der reduzierten Masse?

== Kräfte schiefe Ecke

Wie groß sind die Kräfte $attach(F, b: 1)$ und $attach(F, b: 2)$, die die Masse $m$ auf die beiden Wände ausübt? (Hinweis: zeichnen Sie das Kräfteparallelogramm)

#image("assets/fragenkatalog/dynamik_1.png")

== Loopingbahn

Wie groß muss die Geschwindigkeit eines Wagens im höchsten Punkt (P) einer kreisförmigen Loopingbahn sein, damit der Wagen nicht herunterfällt? Alle Verluste (Reibung etc.) werden vernachlässigt (Erdbeschleunigung $g = 10m/s^2, H = 20m$)

#image("assets/fragenkatalog/dynamik_2.png")

#line(length: 100%)

Der Wagen fällt nicht herunter, wenn im höchsten Punkt die Zentripetalkraft größer gleich der Schwerkraft ist, d.h.:
$ (m*v^2)/R eq.gt m*g $
$ v^2/(H/2) = g arrow.double v = sqrt((H/2)*g) = sqrt((20m/2)*9.81m/s^2) tilde.equiv 9.9m $

== Rolle mit schiefer Ebene

Die beiden Massen ($attach(m, b: 1) > attach(m, b: 2)$) sind mit einem masselosen Seil über eine masselose und reibungsfreie Rolle verbunden. Die Masse $attach(m, b: 1)$ soll sich reibungsfrei auf der schiefen Ebene bewegen.

Berechnen sie die Beschleunigung und geben sie die Zugkraft im Seil an. 

#image("assets/fragenkatalog/dynamik_3.png")

== Massen mit Seil an Rolle

Zwei Gewichte hängen an einem Seil, das über eine masselose und reibungsfreie Rolle läuft. Das Seil sei masselos, die Gewichte haben die Masse $attach(m, b: 1)$ und $attach(m, b: 2)$, wobei $attach(m, b: 1) > attach(m, b: 2)$ ist. Beide sind anfangs in Ruhe. 

Berechnen Sie die Beschleunigung der Massen, während $attach(m, b: 1)$ absinkt. Verwenden Sie den Energiesatz zur Berechnung der Geschwindigkeit der beiden Massen, wenn $attach(m, b: 1)$ um die Strecke $h$ gesunken ist.

#image("assets/fragenkatalog/dynamik_4.png")

#line(length: 100%)

TODO: VO 21.10.

== Hohlzylinder auf schiefer Ebene

Ein Hohlzylinder (mit dem Trägheitsmoment $M*R^2$) rollt reibungsfrei eine schiefe Ebene ausgehend von der Höhe $h$ hinab.

+ Wie groß ist die Geschwindigkeit am Ende der schiefen Ebene? (Hinweis: bei reibungsfreiem Rollen ist $v = omega * r$).
+ Was schließen sie aus dem Vergleich dieser Geschwindigkeit mit der des freien Falles?

#image("assets/fragenkatalog/dynamik_5.png")

== Vollzylinder auf schiefer Ebene

Ein Vollzylinder (Masse $M$, Radius $R$, Trägheitsmoment $(M*R^2)/2$) rollt reibungsfrei die schiefe Ebene (Neigungswinkel $alpha$)
ausgehend von der Höhe $h$ hinab.
+ Wie groß ist die Geschwindigkeit am Ende der schiefen Ebene? (Hinweis: bei reibungsfreiem Rollen ist $v = omega * r$).
+ Was schließen sie aus dem Vergleich dieser Geschwindigkeit mit der des freien Falles?

#image("assets/fragenkatalog/dynamik_6.png")

== Energie

+ Wie lautet der Energieerhaltungssatz der Mechanik?
+ Diskutieren Sie die einzelnen Terme.
+ Wann ist der Energieerhaltungssatz der Mechanik anwendbar.
+ Wie lautet der Energieerhaltungssatz der Relativitätstheorie?

#line(length: 100%)

a) $ attach(E, b: "kin") + attach(E, b: "pot") = attach(E, b: "ges") = "const" $ (für ein konservatives Kraftfeld)

b) 
$attach(E, b: "kin") = 1/2*m*v^2 arrow$ die Energie eines bewegten Körpers mit Masse m und Geschwindigkeit v 
$attach(E, b: "pot") = m*g*h arrow$ die "gespeicherte" Energie eines ruhenden Körpers mit Masse m in der Höhenposition h

c) Wann er anwendbar ist:
  - Es dürfen nur konservative Kräfte wirken, d.h. verrichtete Arbeit muss wegunabhängig sein.
  - Wenn Reibung/Luftwiderstand und/oder andere Energieverluste auftreten und zur Umwandlung von $attach(E, b: "kin")$ in z.B. Wärmeenergie führen.
  - Wenn dem System von außen keine Energie zugeführt wird.

d) In der Relativitätstheorie werden Masse und Energie als äquivalent betrachtet (Masse als Form von Energie), d.h. $E = gamma * 1/sqrt(1-(v^2/c^2))$

In einem abgeschlossenen System ist die Summe aller relativistischen Gesamtenergie aller Komponenten konstant.

== Punktmasse an Feder

Eine Masse $m$ hänge an einer Feder (Federkonstante $D$).

+ Man zeige, dass bei Auslenkung der Masse nach unten, die aufgewandte Arbeit wegunabhängig ist.
+ Welchen Einfluss hat die Schwerkraft auf das Ergebnis?

#line(length: 100%)

TODO bruh

== Gravitationsfeld ausgedehnter Körper

Skizzieren Sie die Herleitung der Gravitationsfeldstärke im Falle einer Hohl- und einer Vollkugel. Skizzen und Formeln.

== Gravitationsfeld Herleitung pot. Energie

Leiten Sie aus der Arbeit im Gravitationsfeld durch eine entsprechende Nullpunktswahl die potentielle Energie her.

== Effektives Potential des Gravitationsfeldes

Wie lautet das effektive Potential des Gravitationsfeldes (Skizze und Formeln)?

== Planetenbewegung

+ Wie lauten die Keplergesetze?
+ Was folgt aus dem 1. und 2. Keplergesetz für den Drehimpuls? Erklären Sie das mittels einer Skizze.
+ Was versteht man unter Perihel und Aphel? Fertigen Sie eine Skizze an.

#line(length: 100%)

a) 
  1. Die Planeten bewegen sich auf Ellipsen, in deren gemeinsamen Brennpunkt die Sonne steht.
  2. Der von der Sonne zum Planeten gezogene Radiusvektor überstreicht in gleichen Zeiten gleiche Flächen.
  3. Die Quadrate der Umlaufzeiten zweier Planeten verhalten sich wie die dritten Potenzen der großen Bahnachsen.
b)
c)
TODO: VO 23.10.

== Raketengleichung

+ Welche Kräfte wirken?
+ Leite die Raketengleichung her.
+ Welche Geschwindigkeit hat die Rakete nach einer Brenndauer $T$, wenn die Anfangsgeschwindigkeit $attach(v, b: 0)$ ist.

#line(length: 100%)

TODO: VO 21.10.

== Drehimpuls eines Teilchens

Ein Teilchen mit der Masse m bewegt sich mit der Geschwindigkeit $v$ in $x$-Richtung auf einer Geraden im Abstand $b$ vom Ursprung $O$. Es ist $dif A$ die Fläche, die der Ortsvektor $r$ des Teilchens in der Zeit $dif t$ überstreicht. 

Zeigen sie, dass $(dif A)/(dif t)$ konstant ist und dass gilt: $(dif A)/(dif t) = L/(2m)$, wobei $L$ der Betrag des Drehimpulses des Teilchens bezüglich des Ursprunges ist. Welcher Erhaltungssatz ergibt sich daraus?

#image("assets/fragenkatalog/dynamik_7.png")

== Kosmische Geschwindigkeiten

Leiten Sie die 1. und 2. kosmische Geschwindigkeit her.

1. kosmische Geschwindigkeit (Orbitalgeschwindigkeit):
Man nehme an die Zentripetal- bzw. Zentrifugalkraft = Gravitation, d.h. die Erdrotation wird vernachlässigt.

$ underbrace((m*v^2)/R, "Zentrifugalkraft") = underbrace((G*m*M)/R^2, "Gravitationskraft") $
$ v^2 = (G*M)/R arrow attach(v, b: 1) = sqrt((G*M)/R) arrow sqrt(g*R) = sqrt(9.81m/s^2 * 6.378 * 10^6m) tilde.equiv 7.9 (\km)/s $  

Mündliche Herleitung: Wenn die Zentrifugalkraft gleich der Gravitationskraft ist, fällt der Körper immer an der Erde "vorbei", was die 1. kosmische Geschwindigkeit beschreibt (stabiler, gleichmäßiger Orbit).

2. kosmische Geschwindigkeit (Fluchtgeschwindigkeit):
Die maximale Steighöhe bei einem Geschoss, das normal zur Erdoberfläche nach oben geschossen wird, kann folgend berechnet werden:

$ attach(r, b: "max") = R/(1-attach(v, b: 0)^2/2*g*R) $

Für $attach(v, b: 0) arrow sqrt(2*g*R)$ wird $1 - attach(v, b: 0)^2 / (2*g*R) = 0 arrow.double attach(r, b: "max") arrow infinity$, d.h. Körper verlässt Gravitationsfeld der Erde

$ attach(v, b: 2) = sqrt(2*g*R) = sqrt(2* 9.81m/s^2 * 6.378 * 10^6m) tilde.equiv 11.2 (\km)/s $

== Geschwindigkeit zum Verlassen des Erdschwerefeldes

Leiten Sie aus dem Energiesatz die für einen Körper der Masse $m$ erforderliche Anfangsgeschwindigkeit $v$ ab, die er zum Verlassen des Erdschwerefeldes benötigt (Vernachlässigen Sie die Erdrotation).

== Definition Kraft, Arbeit und Leistung

Wie sind Kraft, Arbeit und Leistung definiert?

Welche Dimension haben diese Größen und wie hängen sie mit den Grundeinheiten zusammen?

== Schwerpunkt homogene Halbkugel

Berechnen Sie den Schwerpunkt einer homogenen Halbkugel.

== Schwerpunkt starrer Körper

+ Wie ist der Schwerpunkt beim starren Körper allgemein definiert? 
+ Berechnen Sie den Schwerpunkt einer homogenen Halbkugel.

#line(length: 100%)

a) Die Koordinaten $attach(arrow(r), b: S)$ des Massenschwerpunktes $S$ eines Systems von Massen $Delta attach(m, b: i)$ mit den Ortsvektoren $attach(arrow(r), b: i)$ definiert durch den Ortsvektor

$ attach(arrow(r), b: S) = (sum_(i=1)^N  attach(arrow(r), b: i) * Delta attach(m, b: i))/(sum_(i=1)^N Delta attach(m, b: i)) = 1/M * sum_(i=1)^N attach(arrow(r), b: i) * rho(attach(arrow(r), b: i)) * Delta attach(V, b: i) $

Bei $N arrow infinity$ und $Delta V arrow 0$ wird $attach(arrow(r), b: S)$ zu:
$ attach(arrow(r), b: S) = 1/M * attach(integral, b: V) arrow(r) dif m = 1/M * attach(integral, b: V) arrow(r) * rho(arrow(r)) dif V $

Für homogene Körper ($rho = "const"$) folgt daraus:
$ attach(arrow(r), b: S) = 1/V * attach(integral, b: V) arrow(r) dif V $

b) Wenn der Mittelpunkt der Kugel im Nullpunkt ($x = y = z = 0$) liegt, folgt aus Symmetriegründen: $attach(x, b: S) = attach(y, b: S) = 0$. Bei homogener Dichte $rho$ erhält man für $attach(z, b: S)$:

$ attach(z, b: S) = 1/M * attach(integral, b: V) z * rho dif V = 1/V * attach(integral, b: V) z  dif V $

Mit $z = r * cos(theta)$ und $dif V = r^2 dif r * sin(theta) dif theta dif phi$ wird dies zu
$ attach(z, b: S) = 1/V * attach(integral, t: 2pi, b: phi=0) attach(integral, t: pi / 2, b: theta=0) attach(integral, t: R, b: r=0) r^3 * cos(theta) * sin(theta) dif r dif theta dif phi = 3/8 * R $ 

TODO: actually rechenweg? Demtröder skippt zu viel

== Drehbewegung

+ Definieren Sie die Begriffe Drehimpuls, Drehmoment, Trägheitsmoment und Rotationsenergie.
+ Welche Zusammenhänge existieren zwischen diesen Größen?
+ Geben Sie die entsprechenden Dimensionen an.
+ Welche dieser Größen ist eine Erhaltungsgröße?
+ Stellen Sie diesen Größen die entsprechenden Größen der Translation gegenüber.

== Rad auf Randstein

Wie groß ist die Kraft $F$, die nötig ist, um das Rad auf den Randstein zu heben?

#image("assets/fragenkatalog/dynamik_8.png")

#line(length: 100%)

TODO: https://www.physikerboard.de/topic,50196,-fahrrad-ueber-bordsteinkante.html

== Berechnung Trägheitsmoment eines Vollzylinders

Berechnen Sie das Trägheitsmoment eines Vollzylinders (Masse $M$, Radius $R$, Länge $L$) der im Normalabstand $a$ parallel zur Zylinderachse rotiert.

#image("assets/fragenkatalog/dynamik_9.png")

== Herleitung Trägheitsmoment eines Vollzylinders

Leiten Sie das Trägheitsmoment für einen Vollzylinder mit Radius $R$ und der Höhe $h$ ab,
+ wenn die Drehachse gleich der Zylinderachse ist und
+ wenn die Drehachse um die Distanz $a$ parallel zur Zylinderachse verschoben ist.

== Trägheitsmoment

+ Definieren Sie den Begriff Trägheitsmoment
+ Wie groß ist das Trägheitsmoment für eine Hantel (2 Kugeln der Masse $m$, die durch eine masselose Stange der Länge $l$ verbunden sind)
  + wenn die Drehachse durch den Schwerpunkt parallel zur Verbindungsstange verläuft.
  + wenn die Drehachse durch den Schwerpunkt senkrecht auf die Verbindungsstange steht.
Hinweis: das Trägheitsmoment einer Kugel ist $2/5 * m * R^2$

== Allgemeine Eigenschaft Trägheitsmoment

Welche Eigenschaft hat das Trägheitsmoment allgemein, bei beliebiger Drehachse?Welche Eigenschaft hat das Trägheitsmoment allgemein, bei beliebiger Drehachse?

== Drehimpulserhaltung Pirouette

Erklären Sie an Hand der Drehimpulserhaltung das Prinzip der Pirouette.

== Präzession Kreisel

Erläutern Sie den Begriff der Präzession beim Kreisel.

Zeigen Sie wie die Präzessionsfrequenz bestimmt werden kann.

== Drallsatz

Wie lautet der Drallsatz und was beschreibt er?

== Gleichgewichtsbedingungen starrer Körper

Was sind die Gleichgewichtsbedingungen für den starren Körper?

= Bewegte Bezugssysteme (2)

== Scheinkräfte (Teil 1)

+ Diskutieren Sie den Begriff Scheinkraft am Beispiel der Corioliskraft.
+ Geben Sie Beispiele an, wo die Corioliskraft eine Rolle spielt.

== Scheinkräfte (Teil 2)

+ Diskutieren Sie den Begriff Scheinkraft am Beispiel der Corioliskraft. Was sind Scheinkräfte und wie kann man sie nutzen um einen Beschleunigungsmesser zu bauen?
+ Erklären Sie die Funktion des Foucaultschen Pendels.
+ Zeigen Sie, dass die Oberfläche einer Flüssigkeit in einem rotierenden Gefäß die Form eines Rotationsparaboloids annimmt.

== Inertialsystem <inertialsystem>

Was versteht man unter einem Inertialsystem? Wann müssen Scheinkräfte eingeführt werden? Geben Sie Beispiele für Scheinkräfte an.

== Invariante Relativitätstheorie

Welche Invariante gibt es in der Relativitätstheorie?

== Elastischer Stoß (Teil 1)

Eine Kugel ($attach(m, b: 1)$, $arrow(v)$) trifft elastisch und zentral auf eine ruhende zweite Masse $attach(m, b: 1) = attach(m, b: 2)$. Beschreiben Sie diesen Fall im
Laborsystem, wie groß sind die Geschwindigkeiten nach dem Stoß; wie groß ist der Energieübertrag?

== Elastischer Stoß (Teil 2)

Eine Kugel mit Masse $attach(m, b: 1)$ bewege sich auf einer horizontalen Ebene mit der Geschwindigkeit $v$ und trifft elastisch und zentral auf eine ruhende zweite Masse $attach(m, b: 2) = attach(m, b: 1)$. Beschreiben Sie diesen Fall im Laborsystem.
+ Wie groß sind die Geschwindigkeiten nach dem Stoß?
+ Wie groß ist der Energieübertrag?
+ Was ist zu berücksichtigen, wenn die Ebene nicht horizontal ist?

== Zusammenstoß Kugeln

Zwei Kugeln unterschiedlicher Masse ($attach(m, b: 1)$, $attach(m, b: 2)$) und unterschiedlicher Geschwindigkeit ($attach(v, b: 1)$, $attach(v, b: 2)$) treffen unter einem Winkel $alpha$ aufeinander. 

Beschreiben Sie die Bahn (Geschwindigkeiten und Richtungen) beider Kugeln nach dem Zusammenstoß.

== Anfangsgeschwindigkeit durch Energie- und Impulssatz

Bestimmen Sie die Anfangsgeschwindigkeit einer Kugel mit der Masse $attach(m, b: 1)$, die auf einen Holzblock der Masse $attach(m, b: 2)$ trifft und dort stecken bleibt. Der Holzblock hängt an einer masselosen Stange mit der Länge $L$ und wird nach dem Stoß um die Höhe $h$ angehoben. Verwenden Sie dazu Energie- und Impulssatz.

== Minkowski-Diagramm

Beschreiben Sie, wie man zum Minkowski Diagramm kommt. Erläutere Sie die Begriffe Lichtkegel und Weltlinie. Zeigen Sie die Längenkontraktion im Minkowski Diagramm.

== Relativitätstheorie (Teil 1)

+ Diskutieren Sie Zeitdilatation und Längenkontraktion mit Hilfe der Minkowski Diagramme und geben sie ein anschauliches Beispiel für die Zeitdilatation an
+ Wie lauten die relativistischen Ausdrücke für Masse, Impuls und kinetische Energie?

== Vergleich Galilei- und Lorentztransformation

Vergleichen Sie Galilei- und Lorentztransformation. Geben Sie die Formeln an und fertigen Sie Skizzen an. Wann kann welche Transformation verwendet werden? Welche Konsequenzen ergeben sich?

== Lorentzkontraktion

Diskutieren Sie die Lorentzkontraktion sowohl formelmäßig, als auch graphisch.

== Relativitätstheorie (Teil 2)

+ Erklären Sie Einsteins Gedankenexperiment zur Herleitung von $E = m*c^2$.
+ Zeigen Sie, wie die relativistische Massenzunahme aus der Betrachtung von Stößen bei relativistischen Energien abgeleitet werden kann.
+ Was ist das Zwillingsparadoxon? Erklären Sie die Lösung unter Verwendung des Minkowski-Diagrammes.
+ Was ist eine Invariante?

== Inertialsystem (again)

Siehe @inertialsystem

== Beispiele Galilei- und Lorentztransformation

Geben Sie Beispiele sowohl für die Lorentz- als auch für die Galileitransformation an.

= Schwingungen und Wellen (3)

== Bewegungsgleichung Pendel

Wie lautet die Bewegungsgleichung eines mathematischen Pendels? Wie wird sie aufgestellt?

Was bedeuten die einzelnen Terme?

Geben Sie einen möglichen Lösungsansatz an und zeigen Sie, dass er gültig ist.

Welche Einschränkung wurde bei der Erstellung der Bewegungsgleichung angenommen?

== Physikalisches Pendel

+ Stellen sie die Schwingungsgleichung für ein physikalisches Pendel mit der Masse $m$ auf, wenn $I$ das Trägheitsmoment der Masse $m$ bezüglich des Drehpunktes ist. Der Abstand des Schwerpunktes sei $l$. Lösen sie die Differentialgleichung; wie groß ist die Schwingungsdauer?

#image("assets/fragenkatalog/wellen_1.png")

+ Vereinfachen sie die Beziehung für ein mathematisches Pendel gleicher Länge; wie groß ist dann die Schwingungsdauer?

== Herleitung Schwingungsfrequenz physikalisches Pendel

Leiten Sie die Formel für die Schwingungsfrequenz eines physikalischen Pendels her.

== Herleitung Schwingungsperiode Pendel

Stellen Sie die Bewegungsgleichung eines mathematischen Pendels auf und leiten Sie die Formel für die Schwingungsperiode her.

== Schwebungen

Wann entstehen Schwebungen. Formeln und Skizze.

Erläutern Sie am Beispiel der Schwebung die Begriffe Phasen- und Gruppengeschwindigkeit.

== Überlagerung Schwingungen

Überlagern Sie 2 zueinander senkrecht stehende Schwingungen gleicher Frequenz aber unterschiedlicher Phase und Amplitude und diskutieren Sie das Ergebnis. Leiten Sie die Endformel her, fertigen Sie Skizzen an und beschreiben Sie mögliche Anwendungen.

== Energiebilanz ungedämpfter harmonischer Oszillator

Geben sie die Energiebilanz beim ungedämpften harmonischen Oszillator mit der Ortsfunktion $x(t) = A*sin(omega*t + phi)$ an:

Berechnen Sie $attach(E, b: "kin")(t), attach(E, b: "pot")(t)$ und den Mittelwert beider Energien; Zeigen Sie, dass Die Gesamtenergie konstant ist.

== Energiebilanz harmonischer Oszillator

+ Ermitteln Sie kinetische und potentielle Energie zum Zeitpunkt $t$.
+ Ermitteln Sie den zeitliche Mittelwert der potentiellen und kinetischen Energie.

== Gedämpfter harmonischer Oszillator

+ Wie lautet die Bewegungsgleichung und wie wird sie aufgestellt?
+ Diskutieren Sie die einzelnen Terme.
+ Wählen Sie einen Lösungsansatz und zeigen Sie, dass er die Bewegungsgleichung erfüllt.
+ Diskutieren Sie die möglichen Lösungen.
+ Was ist das logarithmische Dekrement?

== Erzwungene Schwingung

+ Wie lautet die Bewegungsgleichung und wie wird sie aufgestellt?
+ Diskutieren Sie die einzelnen Terme.
+ Wählen Sie einen Lösungsansatz und zeigen Sie, dass er die Bewegungsgleichung erfüllt.
+ Diskutieren Sie die Frequenzabhängigkeit von Amplitude und Phase im eingeschwungenen Zustand.
+ Wie kommt es zur Resonanzkatastrophe und wie kann man sie vermeiden?

== Wellengleichung ebene harmonische Wellen <wellengleichung_harmonisch>

Wie lautet die Wellengleichung einer ebenen harmonischen Welle. Erkläre die vorkommenden Größen. Gib eine mögliche Lösung an und beweise ihre Gültigkeit.

== Wellengleichung ebene harmonische Wellen (again)

Siehe @wellengleichung_harmonisch

== Dopplereffekt

+ Wie lauten die Gleichungen für die Frequenzverschiebung bei der Bewegung der Schallquelle, bzw. des Schallempfängers?
+ Was ändert sich bei Austausch der Schallquelle durch eine Lichtquelle?
+ Geben Sie Beispiele für das Auftreten des Dopplereffekts an.

== Dopplereffekt Schall vs Licht

Diskutieren Sie die verschiedenen Erscheinungen des Dopplereffekts für Schall und Licht. Diskutieren Sie die Unterschiede, geben Sie die verschiedenen Formeln an. Was passiert im Falle von Überschallgeschwindigkeit?

== Wellengleichung allgemein

Wie lautet die Wellengleichung allgemein (Formel und Erklärung der vorkommenden Größen)? Wie lautet die Lösung für eine ebene Welle?

Zeigen Sie, dass diese Lösung die Wellengleichung erfüllt.

== Stehende Wellen

Die eindimensionale Wellengleichung lautet $(delta^2u(x,t))/(delta\x^2) = 1/(attach(v, b: p)^2) * (delta^2u(x,t))/(delta\t^2)$ mit der Phasengeschwindigkeit $attach(v, b: p)$.
+ Wie lauten die Randbedingungen für eine beidseitig fest eingespannte Saite der Länge L.
+ In welchem Zusammenhang müssen die Kreisfrequenz $omega$ und die Wellenzahl $k$ stehen, damit der Ansatz $u(x,t) = A*sin(k*x)*sin(omega*t)$ die Wellengleichung erfüllt?
+ Wie nennt man den Zusammenhang zwischen $omega$ und $k$.
+ Welche Werte muss $k$ annehmen, damit die Randbedingungen erfüllt sind?
