// David Koch - 12503857

#set text(font: "New Computer Modern")
#set heading(numbering: "1.1.1")
#set enum(numbering: "a.1)")
#set page(numbering: "1 / 1")
#show math.equation.where(block: false): box
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
$ x(t) = attach(v, b: 0) * cos(alpha) * t arrow.double t = x/(attach(v, b: 0) * cos(alpha)) $

Einsetzen in $y(t)$:
$ y = -1/2*g*(x^2)/(attach(v, b: 0)^2 * cos^2(alpha)) + attach(v, b: 0) * sin(alpha) * x/(attach(v, b: 0) * cos(alpha)) = -g/(2*attach(v, b: 0)^2*cos^2(alpha)) * x^2 + x*tan(alpha) $

== Allg. krummlinige Bewegung

Man diskutiere die allgemeine krummlinige Bewegung im Falle nicht konstanter Beschleunigung.

#line(length: 100%)

Im allgemeinen Fall wird $v$ sich nach Betrag und Richtung ändern. Immer ist aber $v$ in jedem Bahnpunkt $P$ Tangente an die Bahnkurve. Die Beschleunigung a kann allerdings eine beliebige Richtung haben. Sie lässt sich jedoch immer zerlegen in eine Komponente tangential (Tangentialbeschleunigung $attach(a, b: t) = (dif v)/(dif t) * attach(hat(e), b: t)$) zur Bahnkurve und eine Komponente normal (Normalbeschleunigung $attach(a, b: n) = (dif attach(hat(e), b: t))/(dif t) * v$) zur Bahn, d.h. senkrecht auf der Bahntangente. Es gilt somit für die Beschleunigung
$ arrow(a) = (dif arrow(v))/(dif t) = (dif v)/(dif t) * attach(hat(e), b: t) + (dif attach(hat(e), b: t))/(dif t) * v = attach(arrow(a), b: t) + attach(arrow(a), b: n) $

Ist $attach(arrow(a), b: n) = arrow(0)$, so durchläuft der Massenpunkt eine Gerade. Für eine gekrümmte Bahn muss $attach(arrow(a), b: n) eq.not arrow(0)$ sein. Für $attach(arrow(a), b: t) = arrow(0)$ läuft der Massenpunkt mit konstantem Betrag der Geschwindigkeit auf einer Kurve, deren Verlauf durch an bestimmt wird. Im Beispiel des freien Falles war $attach(arrow(a), b: n) eq.triple arrow(0)$, und $attach(arrow(a), b: t) = "const"$, während bei der gleichförmigen Kreisbewegung $attach(arrow(a), b: t) eq.triple arrow(0)$ und $attach(arrow(a), b: n) = "const" eq.not arrow(0)$ galt.

#image("assets/fragenkatalog/krummlinige_bewegung.png")

== Gradlinig-gleichförmige Bewegung Punktmasse

Eine Masse m bewege sich gradlinig-gleichförmig vom Punkt P#sub("1")\($attach(x, b: 1), attach(y, b: 1)$) zum Punkt P#sub("2")\($attach(x, b: 2), attach(y, b: 2)$). 

+ Fertigen Sie eine Skizze an und erklären Sie, was man unter gradlinig-gleichförmig versteht.
+ Wie ist die mittlere Geschwindigkeit definiert?
+ Wie ist die momentane Geschwindigkeit definiert?
+ Geben Sie den Vektor der Geschwindigkeit in kartesischen Koordinaten an.
+ Wie lautet der Betrag der Geschwindigkeit in kartesischen Koordinaten?

#line(length: 100%)

a) Eine Bewegung, bei der die Geschwindigkeit nach Betrag und Richtung konstant bleibt:

#image("assets/fragenkatalog/gradlinige_bewegung.png")

b) TODO
$ (arrow(r)(t + Delta t) - arrow(r)(t))/(Delta t) = (Delta arrow(r))/(Delta t) = (arrow(attach(r, b: 2)) = arrow(overline(v)) $

$ arrow(overline(v)) = (Delta arrow(r))/(Delta t) = (arrow(attach(r, b: 2)) - arrow(attach(r, b: 1)))/(attach(t, b: 2) - attach(t, b: 1)) = (arrow(r)(t + Delta t) - arrow(r)(t))/(Delta t) $

c) $ arrow(v) = (Delta arrow(r))/(Delta t) "mit" Delta t arrow 0 = (dif arrow(r))/(dif t) = dot(r) $

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

c) #image("assets/fragenkatalog/kreisbewegung.png")

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

a) Der Ortsvektor $arrow(r)$ wird bestimmt durch seinen Betrag $r$ und die Winkel $theta in [0, pi]$ und $phi in [0, 2pi)$
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

a) Der Ortsvektor $arrow(r)$ wird bestimmt durch den Radius $r$ (Projektion vom Ortsvektor in xy-Ebene), dem Winkel $phi in [0, 2pi)$ und der Höhe $z$
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
  [Arbeit $W$], [Übertragene Energie, wenn eine Kraft entlang einem Weg wirkt], [$W = integral arrow(F) dif arrow(r)$], [$J = (\kg*m^2)/s^2$], [$M*L^2*T^(-2)$],
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

#line(length: 100%)

a) Bewegungsgleichung des freien Falls (Bewegung mit konstanter Beschleunigung): $ dot.double(arrow(r))(t) = arrow(a) = "const" $
$ z(t) = integral integral attach(a, b: z) arrow.double z(t) = -1/2*g*t^2 + H $

b) $ attach(t, b: "fall") = sqrt((2h)/g) $

c) $ attach(v, b: "fall") = sqrt(2h*g) $

d) #image("assets/fragenkatalog/freier_fall.png")

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
+ Geben Sie Beispiele für konservative und nicht konservative Kräfte an.
+ Wie hängen Kraft, Feldstärke und Potential zusammen?
+ Untersuchen Sie, ob die Federkraft eine konservative Kraft ist.

#line(length: 100%)

a) Eine konservative Kraft ist eine Kraft, bei der die Arbeit, die beim Verschieben eines Objekts verrichtet wird, ausschließlich von der Anfangs- und Endposition abhängt und nicht vom zurückgelegten Weg. Das bedeutet, dass bei geschlossenen Wegen, bei denen man zum Ausgangspunkt zurückkehrt, keine Arbeit verrichtet wird.

b)

Konservative Kräfte: Gravitationskraft, Federkraft, elektrische Coulomb-Kraft

Nicht konservative Kräfte: Reibungskraft, Luftwiderstand, Viskosität

c) Demtröder sagt: Geht man in einem konservativen Kraftfeld vom Punkte $P$ um die infinitesimal kleine Strecke $Delta arrow(r)$ zum Punkte $P'$ (siehe Abbildung unten), so ändert sich die potentielle Energie $attach(E, b: p)(x,y,z) = attach(E, b: p)(P)$ um den Betrag

$ Delta attach(E, b: p) = (partial attach(E, b: p))/(partial x) * Delta x + (partial attach(E, b: p))/(partial y) * Delta y + (partial attach(E, b: p))/(partial z) * Delta z $

#image("assets/fragenkatalog/kraft_potential_zusammenhang.png")

DeepSeek sagt: Der Zusammenhang wird durch die zentrale Beziehung $arrow(F) = - nabla attach(E, b: "pot")$ hergestellt. Oft führt man hilfsweise die Begriffe Feldstärke und Potential ein:
- Feldstärke ($arrow(E)$): Dies ist die "Kraft pro Masse/Ladung". Für eine Probemasse $m$ im Gravitationsfeld ist die Feldstärke die Schwerebeschleunigung $arrow(g) = (attach(arrow(F), b: G))/m$.
- Potential ($phi$): Dies ist die "potentielle Energie pro Masse/Ladung". Das Gravitationspotential ist $Phi = attach(E, b: "pot")/m$.

Der fundamentale Zusammenhang lautet dann: Die Feldstärke ist der negative Gradient des Potentials, d.h.:
$ arrow(G) = -nabla V $

Daraus folgt die Beziehung für die Kraft:
$ arrow(F) = m * arrow(G) = -m * nabla V = -nabla attach(E, b: "pot") $

d) Die Formel für die Federkraft lautet $attach(F, b: x) = -D * (x - attach(x, b: 0))$, es werden zur Berechnung der Kraft lediglich die Anfangspositions $attach(x, b: 0)$ und die Endposition $x$ genutzt, nicht der zurückgelegte Weg, somit ist die Federkraft konservativ.

== Kraftfelder

+ Welche Bedingungen muss ein konservatives Kraftfeld erfüllen?
+ Was ergibt sich daraus für die potentielle und kinetische Energie; Geben Sie Beispiele für konservative und nichtkonservative Felder an. 

#line(length: 100%)

a) In einem konservativen Kraftfeld ist in jedem Raumpunkt $P$ die Summe aus potentieller und kinetischer Energie eines Massenpunktes konstant. Diese konstante Summe heißt die mechanische Gesamtenergie $E$. Die Gesamtenergie $E$ bleibt bei konservativen Kräften erhalten (konserviert).

b) In einem konservativen Kraftfeld kann die Bewegung eines Körpers von $attach(P, b: 1)$ zu $attach(P, b: 2)$ mit dem Energiesatz der Mechanik beschrieben werden: $attach(E, b: "pot")(attach(P, b: 0)) + attach(E, b: "kin")(attach(P, b: 0)) = attach(E, b: "pot")(attach(P, b: 1)) + attach(E, b: "kin")(attach(P, b: 1)) = E$

== Kraft, Feldstärke, Potential und pot. Energie

+ Erläutern Sie die Größen Kraft, Feldstärke, Potential und potentielle Energie. Wie hängen diese Größen zusammen?
+ Für welche Art von Kräften macht die Definition der potentiellen Energie Sinn und für welche nicht? Geben Sie Beispiele an.

#line(length: 100%)

a) 
- Kraft $arrow(F)$ ist eine vektorielle Größe, die die Einwirkung auf einen Körper beschreibt, die dessen Bewegung oder Form ändern kann.
- Feldstärke $arrow(E)$ ist eine vektorielle Größe, die die Kraft pro Einheit einer Eigenschaft des Probekörpers (z.B. Masse/Ladung) beschreibt.
- Das Potential $phi$ ist eine skalare Größe, die die pot. Energie pro Einheit einer geeigneten Eigenschaft des Probekörpers (z.B. Masse/Ladung) beschreibt.
- Potentielle Energie $attach(E, b: "pot")$ ist die Energie, die ein Körper aufgrund seiner Lage im Kraftfeld besitzt.

Es bestehen folgende Zusammenhänge in konservativen Kraftfeldern (z.B. Gravitationsfeld):
- Feldstärke und Kraft: $arrow(F) = m * arrow(g)$
- Feldstärke und Potential: $arrow(E) = - gradient phi$
- Potential und potenzielle Energie: $attach(E, b: "pot") = m * phi$
- Potentielle Energie und Kraft: $arrow(F) = - gradient attach(E, b: "pot")$

b) Die Definition einer pot. Energie ist nur sinnvoll für konservative Kraftfelder. (d.h. Arbeit zwischen zwei Punkten wegunabhängig)

Sinnvolle Beispiele: Gravitationskraft, Elektrostratische Kraft, Elastische Kraft (Federkraft)

Nicht sinnvolle Beispiele: Reibungskraft, geschwindigkeitsabhängige Kräfte (z.B. Strömungswiderstand)

== Energie- und Impulssatz

+ Geben sie den Energie- und Impulssatz im Schwerpunktsystem an 
+ Was versteht man unter der reduzierten Masse?

#line(length: 100%)

a) Ein Schwerpunktsystem ist ein Bezugssystem, in dem der Gesamtschwerpunkt zweier Körper ruht. Somit gilt der Impulssatz $arrow(attach(p, b: 1)) + arrow(attach(p, b: 2)) = 0$ (Gesamtimpuls immer null), als auch der Energiesatz

$ E = 1/2 * attach(m, b: 1) * arrow(attach(v, b: 1))^2 + 1/2 * attach(m, b: 2) * arrow(attach(v, b: 2))^2 + V(r) $

mit $r = |attach(r, b: 1) - attach(r, b: 2)|$. Wegen $arrow(attach(p, b: 1)) = -arrow(attach(p, b: 2)) eq.colon arrow(p)$ lässt sich dies umformen zu:

$ E = arrow(p)^2/(2*mu) + V(r) $

wobei $mu$ die reduzierte Masse ist (siehe b)) und $V(r)$ die pot. Energie der Wechselwirkung zwischen den beiden Körpern (abhängig vom Relativabstand $r$), z.B. Gravitationskraft

b) Die reduzierte Masse $mu$ ist eine effektive Masse, die das Zweikörperproblem auf ein Einkörperproblem reduziert. Definition: $ mu = (attach(m, b: 1)*attach(m, b: 2))/(attach(m, b: 1) + attach(m, b: 2)) $

== Kräfte schiefe Ecke

Wie groß sind die Kräfte $attach(F, b: 1)$ und $attach(F, b: 2)$, die die Masse $m$ auf die beiden Wände ausübt? (Hinweis: zeichnen Sie das Kräfteparallelogramm)

#image("assets/fragenkatalog/dynamik_1.png")

#line(length: 100%)

#image("assets/fragenkatalog/kraefteparallelogramm.png")

$ arrow(attach(F, b: S)) = arrow(attach(F, b: 1)) + arrow(attach(F, b: 2)) arrow.double vec(0, attach(F, b: "Sy")) = vec(attach(F, b: "1x"), 0) + vec(-attach(F, b: "1x"), attach(F, b: "Sy")) $

$ attach(F, b: "Sy") = m * g $
$ cos(alpha) = attach(F, b: "1x")/attach(F, b: "Sy") arrow.double attach(F, b: "1x") = cos(alpha) * attach(F, b: "Sy") = cos(alpha) * m * g $

$ arrow(attach(F, b: S)) = arrow(attach(F, b: 1)) + arrow(attach(F, b: 2)) arrow.double vec(0, m*g) = vec(cos(alpha) * m * g, 0) + vec(-cos(alpha) * m * g, m*g) $

== Loopingbahn

Wie groß muss die Geschwindigkeit eines Wagens im höchsten Punkt (P) einer kreisförmigen Loopingbahn sein, damit der Wagen nicht herunterfällt? Alle Verluste (Reibung etc.) werden vernachlässigt (Erdbeschleunigung $g = 10m/s^2, H = 20m$)

#image("assets/fragenkatalog/dynamik_2.png")

#line(length: 100%)

Der Wagen fällt nicht herunter, wenn im höchsten Punkt die Zentripetalkraft größer gleich der Schwerkraft ist, d.h.:
$ (m*v^2)/R eq.gt m*g $
$ v^2/(H/2) = g arrow.double v = sqrt((H/2)*g) = sqrt((20m/2)*9.81m/s^2) tilde.equiv 9.9m/s $

== Rolle mit schiefer Ebene

Die beiden Massen ($attach(m, b: 1) > attach(m, b: 2)$) sind mit einem masselosen Seil über eine masselose und reibungsfreie Rolle verbunden. Die Masse $attach(m, b: 1)$ soll sich reibungsfrei auf der schiefen Ebene bewegen.

Berechnen sie die Beschleunigung und geben sie die Zugkraft im Seil an. 

#image("assets/fragenkatalog/dynamik_3.png")

#line(length: 100%)

#image("assets/fragenkatalog/rolle_schiefe_ebene.png")

$ attach(F, b: G 1) = attach(m, b: 1) * g = attach(F, b: 1) + attach(F, b: 2) $
$ attach(F, b: G 2) = attach(m, b: 2) * g $
$ attach(F, b: 1) = attach(F, b: G 1) * $

TODO/

== Massen mit Seil an Rolle

Zwei Gewichte hängen an einem Seil, das über eine masselose und reibungsfreie Rolle läuft. Das Seil sei masselos, die Gewichte haben die Masse $attach(m, b: 1)$ und $attach(m, b: 2)$, wobei $attach(m, b: 1) > attach(m, b: 2)$ ist. Beide sind anfangs in Ruhe. 

+ Berechnen Sie die Beschleunigung der Massen, während $attach(m, b: 1)$ absinkt. 
+ Verwenden Sie den Energiesatz zur Berechnung der Geschwindigkeit der beiden Massen, wenn $attach(m, b: 1)$ um die Strecke $h$ gesunken ist.

#image("assets/fragenkatalog/dynamik_4.png")

#line(length: 100%)

a) Wenn sich $attach(m, b: 1)$ um die Strecke $S$ nach unten bewegt, bewegt sich $attach(m, b: 2)$ um $S$ nach oben (weil Seillänge konstant). Da $sum arrow(F) = m * arrow(a)$ gilt, lässt sich somit sagen, dass
$ S - attach(m, b: 1)*g = -attach(m, b: 1) * a $
$ S - attach(m, b: 2)*g = attach(m, b: 2) * a $

Nach $S$ umformen und gleichsetzen:
$ attach(m, b: 2)*a + attach(m, b: 2)*g = attach(m, b: 1)*g - attach(m, b: 1) * a arrow.double a = g * (attach(m, b: 1) - attach(m, b: 2))/(attach(m, b: 1) + attach(m, b: 2)) $

b) Zuerst muss das Nullniveau für die pot. Energie festgelegt werden (da beliebig wählbar), somit gilt $attach(y, b: 1) = attach(h, b: 0)$ und $attach(y, b: 2) = 0$. Wie in a) bereits angenommen bewegen sich $attach(m, b: 1)$ und $attach(m, b: 2)$ konstant (umgekehrt) zueinander um die Höhe $h$. Somit gilt am Anfang ($v = 0$):
$ attach(E, b: 0) = attach(m, b: 1) * g * attach(h, b: 0) + attach(m, b: 2) * g * 0 = attach(m, b: 1) * g * attach(h, b: 0) $

Nach der Auslenkung um $h$ gilt:
$ E = 1/2 * attach(m, b: 1) * v^2 + 1/2 * attach(m, b: 2) * v^2 + attach(m, b: 1) * g * (attach(h, b: 0) - h) + attach(m, b: 2) * g * h $

Laut Energieerhaltung ergibt sich:
$ attach(m, b: 1) * g * attach(h, b: 0) = 1/2 * (attach(m, b: 1) + attach(m, b: 2))*v^2 + attach(m, b: 1) * g * attach(h, b: 0) - attach(m, b: 1)*g*h + attach(m, b: 2)*g*h $
$ 0 = 1/2 * (attach(m, b: 1) + attach(m, b: 2))*v^2 - attach(m, b: 1)*g*h + attach(m, b: 2)*g*h $
$ 1/2 * (attach(m, b: 1) + attach(m, b: 2))*v^2 = (attach(m, b: 1) - attach(m, b: 2))*g*h $
$ v^2 = (2*(attach(m, b: 1) - attach(m, b: 2))*g*h)/(attach(m, b: 1) + attach(m, b: 2)) arrow.double v = sqrt((2*(attach(m, b: 1) - attach(m, b: 2))*g*h)/(attach(m, b: 1) + attach(m, b: 2))) $

== Hohlzylinder auf schiefer Ebene

Ein Hohlzylinder (mit dem Trägheitsmoment $M*R^2$) rollt reibungsfrei eine schiefe Ebene ausgehend von der Höhe $h$ hinab.

+ Wie groß ist die Geschwindigkeit am Ende der schiefen Ebene? (Hinweis: bei reibungsfreiem Rollen ist $v = omega * r$).
+ Was schließen sie aus dem Vergleich dieser Geschwindigkeit mit der des freien Falles?

#image("assets/fragenkatalog/dynamik_5.png")

#line(length: 100%)

a) Mit Energieerhaltung rechnen:
$ attach(E, b: 0) = M * g * h $
$ attach(E, b: "Ende") = underbrace(1/2*M*v^2, "kin. Energie") + underbrace(1/2*I*omega^2, "rot. Energie") = 1/2*M*v^2 * 1/2*(M*R^2)*(v^2/R^2) = 1/2*M*v^2 + 1/2*M*v^2 $
$ attach(E, b: 0) = attach(E, b: "Ende") arrow.double M*g*h = M*v^2 arrow.double v^2 = g*h arrow.double v = sqrt(g*h) $

b) Beim freien Fall gilt $v = sqrt(2*g*h)$, somit gilt das Verhältnis $attach(v, b: "Zyl") = 1/sqrt(2) * attach(v, b: "Fall") tilde.eq 0.707 * attach(v, b: "Fall") $

Schlussfolgerung: Selbst wenn keine Reibung vorhanden ist, ist die Beschleuning bei der schiefen Ebene niedriger, u.a. wegen der Umwandlung von pot. Energie in Rotationsenergie. Wie viel Energie in Rotationsenergie "verloren" geht bestimmt das Trägheitsmoment $I$.

== Vollzylinder auf schiefer Ebene

Ein Vollzylinder (Masse $M$, Radius $R$, Trägheitsmoment $(M*R^2)/2$) rollt reibungsfrei die schiefe Ebene (Neigungswinkel $alpha$)
ausgehend von der Höhe $h$ hinab.
+ Wie groß ist die Geschwindigkeit am Ende der schiefen Ebene? (Hinweis: bei reibungsfreiem Rollen ist $v = omega * r$).
+ Was schließen sie aus dem Vergleich dieser Geschwindigkeit mit der des freien Falles?

#image("assets/fragenkatalog/dynamik_6.png")

#line(length: 100%)

a) Mit Energieerhaltung rechnen:
$ attach(E, b: 0) = M * g * h $
$ attach(E, b: "Ende") = underbrace(1/2*M*v^2, "kin. Energie") + underbrace(1/2*I*omega^2, "rot. Energie") = 1/2*M*v^2 * 1/2*((M*R^2)/2)*(v^2/R^2) = 1/2*M*v^2 + 1/4*M*v^2 $
$ attach(E, b: 0) = attach(E, b: "Ende") arrow.double M*g*h = 3/4*M*v^2 arrow.double v^2 = 4/3*g*h arrow.double v = sqrt(4/3*g*h) $

b) Beim freien Fall gilt $v = sqrt(2*g*h)$, somit gilt das Verhältnis $attach(v, b: "Zyl") = sqrt(2/3) * attach(v, b: "Fall") tilde.eq 0.82 * attach(v, b: "Fall") $

Schlussfolgerung: Selbst wenn keine Reibung vorhanden ist, ist die Beschleuning bei der schiefen Ebene niedriger, u.a. wegen der Umwandlung von pot. Energie in Rotationsenergie. Wie viel Energie in Rotationsenergie "verloren" geht bestimmt das Trägheitsmoment $I$.

== Energie

+ Wie lautet der Energieerhaltungssatz der Mechanik?
+ Diskutieren Sie die einzelnen Terme.
+ Wann ist der Energieerhaltungssatz der Mechanik anwendbar.
+ Wie lautet der Energieerhaltungssatz der Relativitätstheorie?

#line(length: 100%)

a) $ attach(E, b: "kin") + attach(E, b: "pot") = attach(E, b: "ges") = "const" $ (für ein konservatives Kraftfeld)

b) 
$attach(E, b: "kin") = 1/2*m*v^2 arrow$ die Energie eines bewegten Körpers mit Masse $m$ und Geschwindigkeit $v$ 

$attach(E, b: "pot") = m*g*h arrow$ die "gespeicherte" Energie eines ruhenden Körpers mit Masse $m$ in der Höhenposition $h$

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

#line(length: 100%)

Beobachter bzw. Masse $m$ im Punkt P, Hohlkugel hat Radius $a$ mit Wanddicke $dif a << a$. Eine Kreisscheibe der Dicke $dif x$ schneidet aus der Kugelschale einen Kreisring der Breite $dif s = (dif x)/sin(theta)$ mit Durchmesser $2*y$ aus. Masse dieses Streifens ist bei hom. Dichte $rho$
$ dif M = 2*pi*y*rho dif s dif a = 2*pi*a*rho dif x dif a "weil" y = a*sin(theta) $

#image("assets/fragenkatalog/gravitation_hohlkugel.png")

Alle Massenelemente $dif M$ dieses Streifens haben den gleichen Abstand $r$ vom Punkt $P$, also ist die pot. Energie einer kleinen Probemasse $m$ in $P$ im Gravitationsfeld, das durch $dif M$ erzeugt wird:
$ dif attach(E, b: p) = -G * (m * dif M)/r $

Den Beitrag der gesamten Kugelschale zum Gravitationsfeld in $P$ erhält man durch Integration über alle Massenelemente $dif M$ der Kugelschale, d.h. über alle Streifen $dif x$ von $x = -a$ bis $x = +a$: 
$ attach(E, b: p) = -2 * pi * rho * G * m * a * dif a * attach(integral, t: +a, b: x=-a) (dif x)/r $

Aus der Abbildung oben entnimmt man die Relation
$ r^2 = y^2 + (R-x)^2 = y^2 + x^2 + R^2 - 2*R*x = a^2 + R^2 - 2*R*x $
$ r dif r = -R dif x $

Daraus ergibt sich dann: 
$ attach(E, b: p) = (2*pi*rho*a dif a * m)/R * G * attach(integral, t: R-a, b: R+a) dif r = -G * (m*M)/R $
weil $M = r*pi*a^2*rho dif a$ die Masse der Kugelschale ist.

Die Gravitationskraft bzw. Gravitationsfeldstärke erhält man nun aus
$ arrow(attach(F, b: G)) = - gradient attach(E, b: p) = - (dif attach(E, b: p))/(dif r)*hat(arrow(R)) $

Im Inneren der Kugelschale herrscht kein Gravitationsfeld, weil die Beiträge der einzelnen Oberflächenelemente, die ja in verschiedenen Richtungen wirken, sich exakt aufheben.

TODO VOLLKUGEL

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

#line(length: 100%)

Man stelle sich die obere Hälfte einer Kugel mit dem Radius $R$ vor, dessen Mittelpunkt in der Mitte des kart. Koordinatensystems ist. Somit sind $attach(x, b: s) = attach(y, b: s) = 0$.

$ attach(z, b: s) = rho/M * integral z dif V = 1/V * integral z dif V $
Umformung auf Kugelkoordinaten:
$ z = r * cos(theta) $
$ dif V = r^2 * sin(theta) dif r dif theta dif phi $
$ V = 2/3 * pi * R^3 $
$ arrow.double attach(z, b: s) = 1/(2/3 * pi * R^3) * attach(integral, b: r=0, t: R) attach(integral, b: theta=0, t: pi/2) attach(integral, b: phi=0, t: 2*pi) r*cos(theta) * r^2 * sin(theta) dif r dif theta dif phi $
$ = 1/(2/3 * pi * R^3) * attach(integral, b: r=0, t: R) r^3 * attach(integral, b: theta=0, t: pi/2) cos(theta) * sin(theta) * attach(integral, b: phi=0, t: 2*pi) 1 dif phi dif theta dif r $
$ = 1/(2/3 * pi * R^3) * 2*pi * attach(integral, b: r=0, t: R) r^3 * attach(integral, b: theta=0, t: pi/2) cos(theta) * sin(theta) dif theta dif r $
$ = 3* 1/R^3 * (sin^2(pi/2))/2 * attach(integral, b: r=0, t: R) r^3 dif r = 3 * 1/R^3 * 1^2/2 * R^4/4 = 3/8 * R $

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

Man kann den Schwerpunkt des Rads als Punktmasse betrachten, die mit einem Hebelarm um den Drehpunkt $B$ gedreht wird. Die zu berechnende Kraft wirkt ausschließlich waagerecht, somit kann sie mittels den Winkelfunktionen im rechtwinkligen Dreieick und dem Gleichgewicht der Drehmomente berechnet werden:

Abstand Radmitte senkrecht zur Kante ist $R - h$. Der Winkel eingespannt zwischen der Strecke von der Radmitte zum Punkt B und $R - h$ sei $phi$, wobei
$ cos(phi) = (R-h)/R $
$ sin(phi) = sqrt(1-cos^2(theta)) = sqrt(1-((R-h)/R)^2) = sqrt(1-(R^2-2*R*h+h^2)/R^2) = sqrt(2*R*h-h^2)/R $

Für das Gleichgewicht der Momente um $B$ gilt (Drehmoment von $F$ nach oben = Drehmoment von $m*g$ nach unten):
$ F * (R-h) = m*g * R * sin(theta) arrow.double F = m*g * sqrt(2*R*h-h^2)/(R-h) $

== Berechnung Trägheitsmoment eines Vollzylinders <berechnung_traegheit_vollzylinder>

Berechnen Sie das Trägheitsmoment eines Vollzylinders (Masse $M$, Radius $R$, Länge $L$) der im Normalabstand $a$ parallel zur Zylinderachse rotiert.

#image("assets/fragenkatalog/dynamik_9.png")

#line(length: 100%)

Satz von Steiner: $attach(I, b: B) = attach(I, b: S) + a^2*M$

Trägheitsmoment eines Vollzylinders (Herleitung siehe @herleitung_traegheit_vollzylinder): $1/2*M*R^2$

$ arrow.double I = 1/2 * M * R^2 + a^2 * M = M * (R^2/2 + a^2) $

== Herleitung Trägheitsmoment eines Vollzylinders <herleitung_traegheit_vollzylinder>

Leiten Sie das Trägheitsmoment für einen Vollzylinder mit Radius $R$ und der Höhe $h$ ab,
+ wenn die Drehachse gleich der Zylinderachse ist und
+ wenn die Drehachse um die Distanz $a$ parallel zur Zylinderachse verschoben ist.

#line(length: 100%)

a) TODO

b) Hier nur die Herleitung des Steinerschen Satzes, Rest siehe @berechnung_traegheit_vollzylinder:
$ attach(I, b: B) = attach(integral, b: V) r^2 dif m = attach(integral, b: V) (attach(arrow(r), b: "mS") + arrow(a))^2 dif m = attach(integral, b: V) attach(r^2, b: "mS") dif m + 2 * arrow(a) * underbrace(attach(integral, b: V) attach(arrow(r), b: "mS") dif m, attach(I, b: S)) + a^2 * underbrace(attach(integral, b: V) dif m, "M") $

== Trägheitsmoment

+ Definieren Sie den Begriff Trägheitsmoment
+ Wie groß ist das Trägheitsmoment für eine Hantel (2 Kugeln der Masse $m$, die durch eine masselose Stange der Länge $l$ verbunden sind)
  + wenn die Drehachse durch den Schwerpunkt parallel zur Verbindungsstange verläuft.
  + wenn die Drehachse durch den Schwerpunkt senkrecht auf die Verbindungsstange steht.
Hinweis: das Trägheitsmoment einer Kugel ist $2/5 * m * R^2$

#line(length: 100%)

a) Das Trägheitsmoment $I$ ist ein Maß für die Massenverteilung in einem ausgedehnten Körper bezüglich einer Rotationsachse. Für geometrisch einfache Körper kann man $I$ leicht ausrechnen, für Körper mit komplizierten Formen muss man $I$ messen. Das Trägheitsmoment eines Körpers ist immer auf eine bestimmte Drehachse bezogen und hängt ab von der Lage dieser Achse im Körper.

b) TODO

== Allgemeine Eigenschaft Trägheitsmoment

Welche Eigenschaft hat das Trägheitsmoment allgemein, bei beliebiger Drehachse?

== Drehimpulserhaltung Pirouette

Erklären Sie an Hand der Drehimpulserhaltung das Prinzip der Pirouette.

#line(length: 100%)

Formel Drehimpuls: $arrow(L) = underbrace(J, "Trägheitsmom.") * underbrace(arrow(omega), "Winkelgeschw.")$ 

Sind die Massen der Arme und Beine weit von der Drehachse, dann ist das Trägheitsmoment groß. Bringt man die Massen von Armen und Beinen näher zur Drehachse, so verringert sich das Trägheitsmoment. Da das Produkt aus Trägheitsmoment und Winkelgeschwindigkeit aber gleich bleiben muss (Drehimpulserhaltung), erhöht sich entsprechend die Winkelgeschwindigkeit, wenn sich das Trägheitsmoment verkleinert.

== Präzession Kreisel

+ Erläutern Sie den Begriff der Präzession beim Kreisel.
+ Zeigen Sie wie die Präzessionsfrequenz bestimmt werden kann.

#line(length: 100%)

a) Wenn ein äußeres Drehmoment $arrow(D)$ auf den Kreisel wirkt, bleibt wegen $arrow(D) = (dif arrow(L))/(dif t)$ der Drehimpuls nicht mehr raumfest, sondern ändert seine Richtung und, je nach der Richtung von $arrow(D)$, auch seine Größe. Die Drehimpulsrichtung (und damit auch die Figurenachse des Kreises) dreht sich mit der Winkelgeschwindigkeit
$ attach(omega, b: p) = (dif omega)/(dif t) = D/L $

um eine Achse senkrecht zur Ebene von Drehmoment $arrow(D)$ und Drehimpuls $arrow(L)$, wobei $attach(omega, b: p) << omega$ angenommen wird. Diese Bewegung heißt Präzession.

b) TODO

== Drallsatz

Wie lautet der Drallsatz und was beschreibt er?

== Gleichgewichtsbedingungen starrer Körper

Was sind die Gleichgewichtsbedingungen für den starren Körper?

#line(length: 100%)

Folgende zwei Bedingungen müssen erfüllt sein:

- Kräfte- bzw. Translationsgleichgewicht: Die Summe aller äußeren Kräfte, die auf den Körper wirken, muss null sein: $sum arrow(F) = arrow(0)$ (d.h. keine Beschleunigung des Schwerpunkts)
- Momenten- bzw. Rotationsgleichgewicht: Die Summe aller äußeren Momente bzgl. eines beliebigen Punktes muss null sein: $sum attach(arrow(M), b: O) = arrow(0)$ (d.h. keine Winkelbeschleunigung)

= Bewegte Bezugssysteme (2)

== Scheinkräfte (Teil 1) <scheinkraefte_1>

+ Diskutieren Sie den Begriff Scheinkraft am Beispiel der Corioliskraft.
+ Geben Sie Beispiele an, wo die Corioliskraft eine Rolle spielt.

#line(length: 100%)

a) Die Corioliskraft ist eine von der Geschwindigkeit des Körpers abhängige Scheinkraft. Trägheitskräfte (Scheinkräfte) müssen zur Beschreibung der Bewegung von Massenpunkten eingeführt werden, wenn diese Bewegungen in einem beschleunigt bewegten Bezugssystem dargestellt werden. Diese Trägheitskräfte spiegeln eigentlich nur die Beschleunigung des Bezugssystems wider. Sie treten nicht auf, wenn dieselben Vorgänge in einem Inertialsystem beschrieben werden. Anhand der Formel kann man sehen, dass die Corioliskraft von der Geschwindigkeit $v'$ des Körpers der Masse $m$ relativ zum beschleunigten Koordinatensystem abhängt:
$ attach(F, b: c) = 2 * m * (arrow(v') times arrow(omega)) $

b)
- Foucaltsches Pendel (direkter Nachweis Erdrotation und Corioliskraft)
- Zyklone/Tiefdruckgebiete in der Erdatmosphäre
- Passatwinde

== Scheinkräfte (Teil 2)

+ Diskutieren Sie den Begriff Scheinkraft am Beispiel der Corioliskraft. Was sind Scheinkräfte und wie kann man sie nutzen um einen Beschleunigungsmesser zu bauen?
+ Erklären Sie die Funktion des Foucaultschen Pendels.
+ Zeigen Sie, dass die Oberfläche einer Flüssigkeit in einem rotierenden Gefäß die Form eines Rotationsparaboloids annimmt.

#line(length: 100%)

a) siehe @scheinkraefte_1 a), Beschleunigungsmesser kann man nun z.B. durch eine "federnd gelagerte seismische Masse" bauen. Diese wird bei der Beschleunigung des Gehäuses um die Masse herum aufgrund ihrer Trägheit im Inertialsystem in Ruhe bleiben wollen, d.h. sie wird relativ zum Gehäuse ausgelenkt. Diese Auslenkung kann nun mechanisch/elektrisch gemessen und als Beschleunigung ausgewertet werden.

b) Ein Foucaultsches Pendel ist ein langes Pendel, das die Drehung der Erde um ihre Achse demonstriert, indem seine Schwingungsebene sich scheinbar langsam dreht, während in Wirklichkeit der Erdboden unter ihm wegbewegt, was die Trägheit der Schwingung zeigt.

c) Wirkt nur die Schwerkraft, so bildet die Oberfläche der
Flüssigkeit eine horizontale Ebene. Wenn zusätzlich das Gefäß rotiert, wirkt auf die Flüssigkeit die Zentrifugalkraft. Die Schwerkraft zeigt nach "unten", die Zentrifugalkraft nach "außen", somit gilt für die Steigung der Oberflächenschnittkurve
$ tan(alpha) = (m*omega^2*r)/(m*g) = (omega^2*r)/g $

Durch Integration folgt dann eine Paraboloidgleichung:
$ z(r) = integral (omega^2*r)/g dif r = omega^2/(2*g) * r^2 + attach(z, b: 0) $

== Inertialsystem <inertialsystem>

+ Was versteht man unter einem Inertialsystem? 
+ Wann müssen Scheinkräfte eingeführt werden? Geben Sie Beispiele für Scheinkräfte an.

#line(length: 100%)

a) Wenn sich zwei Bezugssysteme mit einer konstanten Geschwindigkeit $u$ von- bzw. zueinander bewegen, heißen sie Inertialsysteme.

b) Scheinkräfte (Trägheitskräfte) müssen zur Beschreibung der Bewegung von Massenpunkten eingeführt werden, wenn diese Bewegungen in einem beschleunigt bewegten Bezugssystem dargestellt werden. Diese Trägheitskräfte spiegeln eigentlich nur die Beschleunigung des Bezugssystems wider. Sie treten nicht auf, wenn dieselben Vorgänge in einem Inertialsystem beschrieben werden.

In rotierenden Bezugssystemen mit ruhendem Nullpunkt sind die Trägheitskräfte Zentrifugalkraft und Corioliskraft, in Systemen mit zeitlich veränderlicher Geschwindigkeit des Koordinatenursprungs treten weitere Trägheitskräfte auf.

== Invariante Relativitätstheorie

Welche Invariante gibt es in der Relativitätstheorie?

#line(length: 100%)

Die Größe $s^2 = (c*t)^2 - x^2 = (c*t')^2 - x'^2$ muss in allen Inertialsystemen gleich bleiben, da die Lichtgeschwindigkeit unabhängig vom gewählten Inertialsystem ist. Die Größe $s^2$ ist daher eine Invariante bei der Transformation von einem Inertialsystem $S$ auf ein anderes $S'$. 

== Elastischer Stoß (Teil 1) <elastischer_stoss_1>

Eine Kugel ($attach(m, b: 1)$, $arrow(v)$) trifft elastisch und zentral auf eine ruhende zweite Masse $attach(m, b: 1) = attach(m, b: 2)$. Beschreiben Sie diesen Fall im
Laborsystem, wie groß sind die Geschwindigkeiten nach dem Stoß; wie groß ist der Energieübertrag?

#line(length: 100%)

Beim Stoß gilt der Impulserhaltungssatz und der Energieerhaltungssatz. Bei einem elastischen Stoß geht keine kinetische Energie verloren, somit gilt $Delta E = 0$ für den Energieerhaltungssatz
$ attach(E, b: "vor") = attach(E, b: "nach") + Delta E = attach(E, b: "nach") + 0 = attach(E, b: "nach") $

Der Impulserhaltungssatz für den zentralen elastischen Stoß lautet
$ attach(m, b: 1) * attach(v, b: 1) + attach(m, b: 2) * attach(v, b: 2) = attach(m, b: 1) * attach(v', b: 1) + attach(m, b: 2) * attach(v', b: 2) $

und der Energieerhaltungssatz lautet
$ 1/2 * attach(m, b: 1) * attach(v, b: 1)^2 + 1/2 * attach(m, b: 2) * attach(v, b: 2)^2 = 1/2 * attach(m, b: 1) * attach(v', b: 1)^2 + 1/2 * attach(m, b: 2) * attach(v', b: 2)^2 $

Wenn man nun nach $attach(v', b: 1)$ und $attach(v', b: 2)$ auflöst und mit $attach(m, b: 1) = attach(m, b: 2) = m$ sowie $attach(v, b: 2) = 0$ rechnet, kommt man auf folgende Geschwindigkeitswerte:

$ attach(v', b: 1) = (m * attach(v, b: 1) + m * (2 * attach(v, b: 2) - attach(v, b: 1)))/(2*m) arrow.double (m * attach(v, b: 1) + m * (- attach(v, b: 1)))/(2*m) = 0 $

$ attach(v', b: 2) = (m * attach(v, b: 2) + m * (2 * attach(v, b: 1) - attach(v, b: 2)))/(2*m) arrow.double (m * 2 * attach(v, b: 1))/(2*m) = attach(v, b: 1) $

Die erste Masse kommt nach dem Stoß zum kompletten Stillstand und überträgt die gesamte Geschwindigkeit an die zweite Masse, somit wird auch die gesamte kinetische Energie von einer Masse auf die andere übertragen.

== Elastischer Stoß (Teil 2)

Eine Kugel mit Masse $attach(m, b: 1)$ bewege sich auf einer horizontalen Ebene mit der Geschwindigkeit $v$ und trifft elastisch und zentral auf eine ruhende zweite Masse $attach(m, b: 2) = attach(m, b: 1)$. Beschreiben Sie diesen Fall im Laborsystem.
+ Wie groß sind die Geschwindigkeiten nach dem Stoß?
+ Wie groß ist der Energieübertrag?
+ Was ist zu berücksichtigen, wenn die Ebene nicht horizontal ist?

#line(length: 100%)

a) siehe @elastischer_stoss_1

b) siehe @elastischer_stoss_1

c) TODO

== Zusammenstoß Kugeln

Zwei Kugeln unterschiedlicher Masse ($attach(m, b: 1)$, $attach(m, b: 2)$) und unterschiedlicher Geschwindigkeit ($attach(v, b: 1)$, $attach(v, b: 2)$) treffen unter einem Winkel $alpha$ aufeinander. 

Beschreiben Sie die Bahn (Geschwindigkeiten und Richtungen) beider Kugeln nach dem Zusammenstoß.

#line(length: 100%)

(Ich nehme mal an, dass hier ein elastischer Stoß gemeint ist)

ICH FINDE ZU DEM SCHEIß ABSOLUT KEINE BEISPIELE IM INTERNET?! DEMTRÖDER AUCH CONFUSING AF

== Anfangsgeschwindigkeit durch Energie- und Impulssatz

Bestimmen Sie die Anfangsgeschwindigkeit einer Kugel mit der Masse $attach(m, b: 1)$, die auf einen Holzblock der Masse $attach(m, b: 2)$ trifft und dort stecken bleibt. Der Holzblock hängt an einer masselosen Stange mit der Länge $L$ und wird nach dem Stoß um die Höhe $h$ angehoben. Verwenden Sie dazu Energie- und Impulssatz.

== Minkowski-Diagramm

Beschreiben Sie, wie man zum Minkowski-Diagramm kommt. Erläutere Sie die Begriffe Lichtkegel und Weltlinie. Zeigen Sie die Längenkontraktion im Minkowski-Diagramm.

== Relativitätstheorie (Teil 1)

+ Diskutieren Sie Zeitdilatation und Längenkontraktion mit Hilfe der Minkowski Diagramme und geben sie ein anschauliches Beispiel für die Zeitdilatation an
+ Wie lauten die relativistischen Ausdrücke für Masse, Impuls und kinetische Energie?

== Vergleich Galilei- und Lorentztransformation

Vergleichen Sie Galilei- und Lorentztransformation. Geben Sie die Formeln an und fertigen Sie Skizzen an. Wann kann welche Transformation verwendet werden? Welche Konsequenzen ergeben sich?

== Lorentzkontraktion

Diskutieren Sie die Lorentzkontraktion sowohl formelmäßig, als auch graphisch.

#line(length: 100%)

Angenommen, ein Stab mit den Endpunkten $attach(P', b: 1)$ und $attach(P', b: 2)$ ruhe im System $S'$. Die Koordinaten $attach(x', b: 1)$ und $attach(x', b: 2)$ seines Anfangs- und Endpunktes durchlaufen dann im Laufe der Zeit $t'$ im $(x', c*t')$-Diagramm Weltlinien, welche Geraden parallel zur $c*t'$-Achse sind. Der Beobachter $O'$ misst zur Zeit $attach(t', b: 1)$ die Länge
$ L' = overline(attach(P', b: 1) attach(P', b: 2)) = attach(x', b: 2) - attach(x', b: 1) $

Für den Beobachter $O$ hingegen bewegt sich der Stab, verbunden mit dem System $S'$, mit der Geschwindigkeit $v$ in $x$-Richtung. Um die Stablänge $L$ zu bestimmen, muss $O$ die Endpunkte $attach(x, b: a)$ und $attach(x, b: e)$ gleichzeitig, d.h. bei gleichem $t = attach(t, b: 1)$ messen. Diese Endpunkte sind die Schnittpunkte $attach(P, b: 1) = attach(P', b: 1)$ und $attach(P, b: 2) eq.not attach(P', b: 2)$

#image("assets/fragenkatalog/lorentzkontraktion_minkowski.png")

TODO

== Relativitätstheorie (Teil 2)

+ Erklären Sie Einsteins Gedankenexperiment zur Herleitung von $E = m*c^2$.
+ Zeigen Sie, wie die relativistische Massenzunahme aus der Betrachtung von Stößen bei relativistischen Energien abgeleitet werden kann.
+ Was ist das Zwillingsparadoxon? Erklären Sie die Lösung unter Verwendung des Minkowski-Diagrammes.
+ Was ist eine Invariante?

#line(length: 100%)

a) Wir betrachten (wie in der Abbildung unten) einen Kasten der Länge L und der Masse M.
#image("assets/fragenkatalog/emc_gedankenexperiment.png")
Von der linken Wand soll zur Zeit $attach(t, b: 1) = 0$ ein Lichtblitz mit der Lichtenergie $E$ ausgesandt werden, der sich mit der Lichtgeschwindigkeit $c$ nach rechts bewegt. Dieser Lichtblitz hat nach experimentellen Ergebnissen der klassischen Physik den Impuls $p = E/c$. Wegen der Impulserhaltung erhält die linke Wand, und damit der ganze Kasten, zur Zeit $attach(t, b: 1) = 0$ den Rückstoßimpuls $p = -E/c$, der zur Bewegung des Kastens nach links mit der Geschwindigkeit

$ v = -p/M = -E/(M*c) $

führt. Für $v << c$ erreicht der Lichtblitz die rechte Wand des Kastens nach der Zeit $attach(t, b: 2) = L/c$, wird dort absorbiert und überträgt dabei den Impuls $p = +E/c$ auf den Kasten, der dadurch wieder zur Ruhe kommt. Während dieser Zeit hat sich der Kasten nach links um die Strecke $Delta x$ bewegt, wobei

$ Delta x = -v * attach(t, b: 2) = (E*L)/(M*c^2) $

Da aber der Schwerpunkt unseres abgeschlossenen Systems, der vor der Emission des Lichtblitzes in Ruhe war, immer in Ruhe bleiben muss (es wirken keine äußeren Kräfte!), muss durch den Transport der Lichtenergie $E$ auch ein Massentransport stattgefunden haben, der dafür sorgt, dass der Schwerpunkt des Systems sich nicht verändert, obwohl der Kasten sich nach links bewegt hat. Schreiben wir der Lichtenergie $E$ die Masse $m$ zu, so ergibt sich, dass die Masse $m$ um die Strecke $L$ nach rechts bewegt wurde, die Kastenmasse $M$ nach links um die Strecke $Delta x$. Damit der Schwerpunkt sich dabei nicht bewegt, muss gelten:

$ m*L - M * Delta x = 0 arrow.double m = E/c^2 arrow.double E = m*c^2 $ 

Nach dieser Überlegung entspricht jeder Masse $m$ die Energie $E=m*c^2$. Energie und Masse sind einander proportional!

b) TODO: Demtröder S. 118, ist aber sehr viel

c) Von zwei im gleichen System gleich gehenden Uhren bleibt eine in Ruhe, die andere wird auf eine Reise mitgenommen und schließlich wieder zum Ausgangspunkt zurückgebracht. Ein Vergleich beiderUhren zeigt, dass die bewegte Uhr nachgeht, d.h. eine kleinere Zeitspanne zwischen Abreise und Ankunft anzeigt als die ruhende Uhr. (Analog: Menschen/Zwillinge statt Uhren)

Warum kann man dann beim Zwillingsparadoxon eindeutig sagen, dass $A$ nach seiner Rückkehr jünger ist als $B$? Der entscheidende Punkt ist, dass $A$ nicht in einem Inertialsystem sitzt. Selbst wenn er sich mit konstanter Geschwindigkeit von $B$ fortbewegt, er also anfangs ein Inertialsystem benutzt, muss er bei Beginn der Rückreise auf ein anderes Inertialsystem umsteigen, das sich mit $-v$ gegen $B$ hin bewegt. Dies zeigt, dass die Messungen von $A$ und $B$ nicht äquivalent sind.

#image("assets/fragenkatalog/zwillingsparadoxon_minkowski.png")

- $A$ fliegt los von $x = 0$ zur Zeit $t = t' = 0$, erreicht in vernachlässigbar kurzer Zeit seine Reisegeschwindigkeit $v$, bis er zur Zeit $attach(t, b: 1) = T/2$ den Umkehrpunkt $attach(P, b: 1) = (attach(x, b: u), T/2)$ erreicht.
- Zur Zeit $attach(t, b: 1) = T/2$ bremst er ab, wendet und beschleunigt wieder auf die Geschwindigkeit $attach(v, b: 2) = -v$. Dies soll alles in einer Zeit geschehen, die vernachlässigbar kurz gegen die Reisezeit $T$ ist.
- $A$ fliegt mit $attach(v, b: 2) = -v$ zurück und erreicht $B$ in $x = 0$ nach dessen Uhr zur Zeit $attach(t, b: 2) = T$.

TODO

d) TODO

== Inertialsystem (again)

Siehe @inertialsystem

== Beispiele Galilei- und Lorentztransformation

Geben Sie Beispiele sowohl für die Lorentz- als auch für die Galileitransformation an.

#line(length: 100%)

Die Galileitransformation wird für die Umrechnung zwischen sich mit niedrigen Geschwindigkeiten ($v << c$) bewegenden Bezugssystemen verwendet, d.h. z.B:
- Stehender Beobachter neben einer Zugstrecke beobachtet einen Punkt am/im Zug
- Autofahrer fährt an einem Baum vorbei

Bei der Lorentztransformation bewegt sich ein Bezugssystem mit einer sehr hohen Geschwindigkeit (nahe $c$), sodass relativistische Effekte auftreten. Beispiele wären:
- Berechnung der veränderten Zeit und des Ortes eines sich schnell bewegenden Teilchens für einen ruhenden Beobachter
- Gedankenexperimente wie das Zwillingsparadoxon oder das Garagenparadoxon rechentechnisch nachweisen

= Schwingungen und Wellen (3)

== Bewegungsgleichung Pendel

+ Wie lautet die Bewegungsgleichung eines mathematischen Pendels? Wie wird sie aufgestellt?
+ Was bedeuten die einzelnen Terme?
+ Geben Sie einen möglichen Lösungsansatz an und zeigen Sie, dass er gültig ist.
+ Welche Einschränkung wurde bei der Erstellung der Bewegungsgleichung angenommen?

#line(length: 100%)

a) In ebenen Polarkoordinaten lautet die Bewegungsgleichung:
$ m * g * sin(phi) = -m * L * dot.double(phi) $

Um die Gleichung aufzustellen, muss man sich zuerst ein mathematisches Pendel der Länge $L$ mit der Punktmasse $m$ vorstellen, dass Anfangs mit einem Winkel von $phi$ ausgelenkt wird. Auf die Punktmasse wirkt die Schwerkraft $arrow(F) = m * arrow(g)$, wobei diese in $attach(F, b: t)$ und $attach(F, b: r)$ aufgeteilt werden kann.

#image("assets/fragenkatalog/mathematisches_pendel.png")

$ attach(F, b: t) = -m * g * sin(phi) $

Die Tangentialbeschleunigung einer Kreisbewegung ist $attach(a, b: "tan") = L * dot.double(phi)$, somit kann $attach(F, b: t)$ auch folgend dargestellt werden:

$ attach(F, b: t) = m * attach(a, b: "tan") = m * L * dot.double(phi) $

Wenn man nun diese zwei Definitionen von $attach(F, b: t)$ gleichsetzt bekommt man die Bewegungsgleichung (mit vertauschten Vorzeichen).

b) 
- $m$ ist die Punktmasse die am Ende des Pendels "hängt"
- $g$ ist die Erdbeschleunigung
- $phi$ ist der max. Auslenkungswinkel, $dot.double(phi)$ somit die Winkelbeschleunigung 
- $L$ ist die Länge des Pendel(faden)s

c) Um die Pendelgleichung lösen zu können, muss die Näherung $sin(phi) tilde.equiv phi$ ("Linearisierung") durchgeführt werden. Somit wird die Gleichung zu
$ m * g * phi = -m * L * dot.double(phi) $

Die lineare DGL hat bei der Anfangsbedingung $phi(0) = 0$ die Lösung
$ phi(t) = A * sin(sqrt(g/L)*t) $

Um die Gültigkeit dieses Lösungansatzes zu zeigen, muss er einfach in die DGL eingesetzt werden, d.h. man erhält
$ m * g * A * sin(sqrt(g/L)*t) = -m * L * A * -sin(sqrt(g/L)*t) * g/L $ 
$ m * g * A * sin(sqrt(g/L)*t) = m * g * A * sin(sqrt(g/L)*t) $
$ qed $

d) Folgende Einschränkungen wurden bei der Erstellung der (linearisierten) Bewegungsgleichung angenommen:
- Kleinwinkelnäherung ("Linearisierung") des Winkels $phi$, damit die DGL überhaupt losbar wird, d.h. Auslenkungswinkel darf nicht zu groß werden
- Keine Reibung
- Masseloser, undehnbarer faden
- Punktmasse

== Physikalisches Pendel

a) Stellen sie die Schwingungsgleichung für ein physikalisches Pendel mit der Masse $m$ auf, wenn $I$ das Trägheitsmoment der Masse $m$ bezüglich des Drehpunktes ist. Der Abstand des Schwerpunktes sei $l$. Lösen sie die Differentialgleichung; wie groß ist die Schwingungsdauer?

#image("assets/fragenkatalog/wellen_1.png")

b) Vereinfachen sie die Beziehung für ein mathematisches Pendel gleicher Länge; wie groß ist dann die Schwingungsdauer?

#line(length: 100%)

== Herleitung Schwingungsfrequenz physikalisches Pendel

Leiten Sie die Formel für die Schwingungsfrequenz eines physikalischen Pendels her.

== Herleitung Schwingungsperiode Pendel

Stellen Sie die Bewegungsgleichung eines mathematischen Pendels auf und leiten Sie die Formel für die Schwingungsperiode her.

== Schwebungen

+ Wann entstehen Schwebungen. Formeln und Skizze.
+ Erläutern Sie am Beispiel der Schwebung die Begriffe Phasen- und Gruppengeschwindigkeit.

#line(length: 100%)

a) Wenn zwei Schwingungen (leicht) verschiedener Frequenz mit gleicher Amplitude ($a=b$) überlagert werden, entsteht eine Schwingung dessen Amplitude periodisch zu- und abnimmt.

$ attach(x, b: 1) = a * cos(omega*t) $
$ attach(x, b: 2) = b * cos(omega*t) $

Mit dem Additionstheorem $cos(alpha)+cos(beta) = 2*cos((alpha-beta)/2)*cos((alpha+beta)/2)$ kommt man auf die Überlagerungsschwingung von $attach(x, b: 1)$ und $attach(x, b: 2)$:
$ x = 2*a * cos((attach(omega, b: 1) - attach(omega, b: 2))/2*t) * cos((attach(omega, b: 1) + attach(omega, b: 2))/2*t) $

Als Schwebungsfrequenz bezeichnet man schließlich die Frequenz, mit der sich der Betrag der "Einhüllenden" Schwingung verändert. Für sie gilt
$ attach(f, b: "Schwebung") = |attach(f, b: 1) - attach(f, b: 2)| $

#image("assets/fragenkatalog/schwebung.png")

b) TODO

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

#line(length: 100%)

a) Die eindimensionale Bewegungsgleichung für einen ungedämpften harmonischen Oszillator lautet $m * dot.double(x) = -D * x$ bzw. mit $attach(omega, b: 0)^2 = D/m arrow.double dot.double(x) + attach(omega, b: 0)^2*x = 0$. Wenn zu dieser die dämpfende Kraft $-b * dot(x)$ hinzukommt (wobei $b$ der Dämpfungskoeffizient ist), kommt man auf $m * dot.double(x) = -D * x - b * dot(x)$ bzw. mit $attach(omega, b: 0)^2 = D/m; 2*gamma = b/m arrow.double dot.double(x) + 2*gamma*dot(x) + attach(omega, b: 0)^2*x = 0$ 

b) ??? TODO

c) Die Gleichung ist eine homogene lineare DGL 2. Ordnung mit konstanten Koeffizienten, somit wird der Exponentialansatz gewählt:
$ x(t) = c * e^(lambda*t) $

Einsetzen in die DGL und für $lambda$ mittels pq-Formel lösen:
$ lambda^2 + 2*gamma*lambda + attach(omega, b: 0)^2 = 0 $
$ attach(lambda, b: "1,2") = -gamma plus.minus sqrt(gamma^2 - attach(omega, b: 0)^2) $

Das ganze einsetzen in die homogene Lösungsformel einsetzen:
$ x(t) = attach(c, b: 1) * e^(sqrt(gamma^2 - attach(omega, b: 0)^2)*t) + attach(c, b: 2) * e^(-sqrt(gamma^2 - attach(omega, b: 0)^2)*t) $

ZEIGEN, DASS ES DIE BEWEGUNGSGLEICHUNG ERFÜLLT TODO

d) TODO

e) Zwei aufeinander folgende Maxima der gedämpften Schwingung haben das Amplitudenverhältnis
$ (x(t + T))/x(t) = e^(-gamma*T) $

Der natürliche Logarithmus des inversen Verhältnisses
$ ln((x(t + T))/x(t)) = gamma*T = delta $

heißt logarithmisches Dekrement $delta$. Dies ist ein Maß für das Dämpfungsverhalten einer freien Schwingung.

== Erzwungene Schwingung

+ Wie lautet die Bewegungsgleichung und wie wird sie aufgestellt?
+ Diskutieren Sie die einzelnen Terme.
+ Wählen Sie einen Lösungsansatz und zeigen Sie, dass er die Bewegungsgleichung erfüllt.
+ Diskutieren Sie die Frequenzabhängigkeit von Amplitude und Phase im eingeschwungenen Zustand.
+ Wie kommt es zur Resonanzkatastrophe und wie kann man sie vermeiden?

#line(length: 100%)

a) Wenn eine periodisch wirkende Kraft $attach(F, b: a) = attach(F, b: 0) * cos(omega*t)$ auf eine harmonische Schwingung einwirkt, verändert sich die Bewegungsgleichung folgend:
$ m * dot.double(x) = -D * x - b * dot(x) + attach(F, b: 0) * cos(omega*t) $ bzw. mit $attach(omega, b: 0)^2 = D/m; gamma = b/(2m); K = attach(F, b: 0)/m$ $ arrow.double dot.double(x) + 2*gamma*dot(x) + attach(omega, b: 0)^2*x = K * cos(omega*t) $ 

(wenn keine Dämpfung stattfindet kann $b$ bzw. $gamma$ natürlich auf $0$ gesetzt werden)

b) ??? TODO

c) und der Rest auch TODO

== Wellengleichung ebene harmonische Wellen <wellengleichung_harmonisch>

Wie lautet die Wellengleichung einer ebenen harmonischen Welle. Erkläre die vorkommenden Größen. Gib eine mögliche Lösung an und beweise ihre Gültigkeit.

Siehe @wellengleichung_allgemein (aber nur den Teil mit der eindimensionalen/ebenen harmonischen Welle)

== Wellengleichung ebene harmonische Wellen (again)

Siehe @wellengleichung_harmonisch

== Dopplereffekt <dopplereffekt>

+ Wie lauten die Gleichungen für die Frequenzverschiebung bei der Bewegung der Schallquelle, bzw. des Schallempfängers?
+ Was ändert sich bei Austausch der Schallquelle durch eine Lichtquelle?
+ Geben Sie Beispiele für das Auftreten des Dopplereffekts an.

#line(length: 100%)

$c$ ist die Phasengeschwindigkeit, d.h. Schallgeschwindigkeit in Luft, Lichtgeschwindigkeit im Vakuum, usw.

a) Bewegung der Schallquelle (- wenn Näherung, + wenn Distanzierung): $ f' = f * c/(c minus.plus attach(v, b: Q)) $
Bewegung des Empfängers (+ wenn Näherung, - wenn Distanzierung): $ f' = f * (c plus.minus attach(v, b: E))/c $

b) Schall benötigt ein Medium (relativistisch irrelevant), Licht breitet sich im Vakuum unabhängig vom Bezugssystem aus, es gilt der relativistische Dopplereffekt mit $beta = v/c$:

#table(
  columns: 3,
  align: horizon,
  inset: 8pt,
  table.header(
    [],
    [*Longitudinaler DE*],
    [*Transversaler DE*],
  ),
  [*bei Distanzierung*], [$ f' = f * sqrt((1-beta)/(1+beta)) $], [$ f' = f * sqrt(1-beta^2) $],
  [*bei Näherung*],  [$ f' = f * sqrt((1+beta)/(1-beta)) $], [$ f' = f * sqrt(1-beta^2) $],
)

c)
- Akustisch: Vorbeifliegende Flugzeuge bzw. vorbeifahrende Rennwagen, Blaulicht-Sirene
- Optisch: Rotverschiebung bei sich entfernenden Galaxien

== Dopplereffekt Schall vs Licht

+ Diskutieren Sie die verschiedenen Erscheinungen des Dopplereffekts für Schall und Licht. 
+ Diskutieren Sie die Unterschiede, geben Sie die verschiedenen Formeln an. 
+ Was passiert im Falle von Überschallgeschwindigkeit?

#line(length: 100%)

a) siehe @dopplereffekt c)

b) siehe @dopplereffekt a) und b)

c) Beim Überschallflug wird der Doppler-Effekt extrem, da sich die Schallwellen vor z.B. einem Kampfjet zu einer kegelförmigen Schockwelle stauen, dem sogenannten Mach-Kegel. Die Schockwelle des Mach-Kegels ist erst hörbar, wenn der Kampfjet den Beobachter bereits passiert hat. Der Pilot selbst hört den Knall nicht, da er sich innerhalb des Kegels befindet. 

== Wellengleichung allgemein <wellengleichung_allgemein>

+ Wie lautet die Wellengleichung allgemein (Formel und Erklärung der vorkommenden Größen)? 
+ Wie lautet die Lösung für eine ebene Welle?
+ Zeigen Sie, dass diese Lösung die Wellengleichung erfüllt.

#line(length: 100%)

a) Die allgemeine Wellengleichung lautet $ nabla^2 xi(arrow(r),t) = 1/(attach(v, b: p)^2) * (delta^2xi(arrow(r),t))/(delta\t^2) $
wobei $arrow(r)$ ein mehrdimensionaler Ortsvektor ist. Der Nabla-Operator bildet hierbei die Summe der partiellen zweiten Ableitungen des Raumes. Diese Wellengleichung lässt sich auf eine ebene Welle in nur eine Richtung reduzieren, mit dieser ist es einfacher zu rechnen:

Die eindimensionale Wellengleichung (in $x$-Richtung) lautet 
$ (delta^2xi(x,t))/(delta\x^2) = 1/(attach(v, b: p)^2) * (delta^2xi(x,t))/(delta\t^2) $

Vorkommende Größen:
- $xi(x,t)$ ist die wellende Größe (z.B. Druck, Auslenkung, ...)
- $x$ ist der Ort (eindimensional, nicht vergessen! sonst Ortsvektor $arrow(r)$ mit $xi(arrow(r),t)$)
- $t$ ist die Zeit
- $attach(v, b: p)$ ist die Phasengeschwindigkeit im Medium
TODO actual Terme

Auf der linken Seite der Wellengleichung steht die zweite partielle Ableitung der Welle $xi(x,t)$ nach dem Ort, auf der rechten Seite die zweite partielle Ableitung nach der Zeit.

b) Die reelle Lösung für eine ebene Welle in $x$-Richtung lautet: 
$ xi(x,t) = A * sin(omega*t - k * x) $

c) Zuerst die partiellen Ableitungen bilden:
$ (delta xi(x,t))/(delta x) = -k * cos(omega*t - k * x) arrow.double (delta^2 xi(x,t))/(delta^2 x) = -k^2 * sin(omega*t - k * x) $
$ (delta xi(x,t))/(delta t) = omega * cos(omega*t - k * x) arrow.double (delta^2 xi(x,t))/(delta^2 t) = -omega^2 * sin(omega*t - k * x) $

Einsetzen in die Wellengleichung:
$ -k^2 * sin(omega*t - k * x) = 1/(attach(v, b: p)^2) * -omega^2 * sin(omega*t - k * x) $
$ -k^2 = (-omega^2)/(attach(v, b: p)^2) arrow.double omega = attach(v, b: p) * k $

Wellengleichung erfüllt, da die Dispersionsrelation $omega = attach(v, b: p) * k$ rauskommt.

== Stehende Wellen 

Die eindimensionale Wellengleichung lautet $(delta^2xi(x,t))/(delta\x^2) = 1/(attach(v, b: p)^2) * (delta^2xi(x,t))/(delta\t^2)$ mit der Phasengeschwindigkeit $attach(v, b: p)$.
+ Wie lauten die Randbedingungen für eine beidseitig fest eingespannte Saite der Länge L.
+ In welchem Zusammenhang müssen die Kreisfrequenz $omega$ und die Wellenzahl $k$ stehen, damit der Ansatz $u(x,t) = A*sin(k*x)*sin(omega*t)$ die Wellengleichung erfüllt?
+ Wie nennt man den Zusammenhang zwischen $omega$ und $k$.
+ Welche Werte muss $k$ annehmen, damit die Randbedingungen erfüllt sind?

#line(length: 100%)

a) Für alle $t$ gilt:
$ u(0, t) = 0 $
$ u(L, t) = 0 $

b) Ableitungen des Ansatzes berechnen:
$ (delta^2u(x,t))/(delta\x^2) = -k^2 * A * sin(k*x) * sin(omega * t) $
$ (delta^2u(x,t))/(delta\t^2) = -omega^2 * A * sin(k*x) * sin(omega * t) $

Einsetzen in die eindimensionale Wellengleichung:
$ -k^2 * A * sin(k*x) * sin(omega * t) = 1/(attach(v, b: P)^2) * (-omega^2 * A * sin(k*x) * sin(omega * t)) $
$ arrow.double k^2 = omega^2/attach(v, b: P)^2 arrow.double omega = attach(v, b: P) * k $

c) Ergebnis in b) ist die Dispersionsrelation für Licht im Vakuum $arrow$ "nicht dispersive Welle"

d) Die erste Randbedingung $u(0,t) = 0$ ist immer erfüllt, da $A*sin(0)*sin(omega*t) = 0$

Für die zweite Randbedingung $u(L,t) = 0$ muss $sin(k*L) = 0$ gelten, also $k*L = n * pi$, wobei $n in NN$. Somit muss $k$ folgende Werte annehmen: ${pi/L , (2*pi)/L, (3*pi)/L, ...} arrow.double attach(k, b: n) = (n*pi)/L$



