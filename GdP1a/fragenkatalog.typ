// David Koch - 12503857

#set heading(numbering: "1.1.1")
#set enum(numbering: "a.1)")
#set page(numbering: "1 / 1")
#show image: img => {
  align(center, scale(50%)[#img])
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

Wie lautet die Bewegungsgleichung für den schiefen Wurf im Erdschwerefeld?

Leiten Sie Formeln für die Höhe des Scheitels, den Auftreffpunkt (wenn Start- und Endpunkt auf gleicher Höhe sind), sowie die Bahnkurve ab.

== Allg. krummlinige Bewegung

Man diskutiere die allgemeine krummlinige Bewegung im Falle nicht konstanter Beschleunigung.

== Gradlinig-gleichförmige Bewegung Punktmasse

Eine Masse m bewege sich gradlinig-gleichförmig vom Punkt P#sub("1")\($attach(x, b: 1), attach(y, b: 1)$) zum Punkt P#sub("2")\($attach(x, b: 2), attach(y, b: 2)$). 

+ Fertigen Sie eine Skizze an und erklären Sie, was man unter gradlinig-gleichförmig versteht.
+ Wie ist die mittlere Geschwindigkeit definiert?
+ Wie ist die momentane Geschwindigkeit definiert?
+ Geben Sie den Vektor der Geschwindigkeit in kartesischen Koordinaten an.
+ Wie lautet der Betrag der Geschwindigkeit in kartesischen Koordinaten?

== Kreisbewegung

+ Wie lautet der Zusammenhang zwischen dem Vektor der Winkelgeschwindigkeit und der Tangentialgeschwindigkeit?
+ Wie lautet die Zentripetalbeschleunigung?
+ Fertigen Sie eine Skizze mit allen relevanten Größen.

== Zentripetalbeschleunigung berechnen

Zeigen Sie, wie sich die Zentripetalbeschleunigung bei der gleichförmigen Kreisbewegung berechnet. 

== Kugelkoordinaten

Wie sind Kugelkoordinaten definiert? Fertigen Sie eine Skizze an und zeichnen Sie die relevanten Größen ein.

Wie lauten die Umrechnungsformeln zwischen kartesischen Koordinaten und Kugelkoordinaten? 

Wie lautet die Formel für das Volumenelement in Kugelkoordinaten? 

== Zylinderkoordinaten

Wie sind Zylinderkoordinaten definiert (Skizze)?

Wie lauten die Formeln für die Umrechnung von kartesischen in Zylinderkoordinaten?

Wie lautet die Formel für das Volumenelement? 

== Grundeinheiten SI-System

Welche sind die Grundeinheiten des internationalen Einheitensystems?

== Definition von Meter, Kilogramm und Sekunde

Wie sind die Grundeinheiten Meter, Kilogramm und Sekunde definiert? 

== Raumwinkel (Teil 1)

Wie ist der Raumwinkel definiert? Wie groß ist Raumwinkel für eine Vollkugel? 

== Raumwinkel (Teil 2)

Wie ist der Raumwinkel definiert? Wie berechnen Sie den Raumwinkel für eine Halbkugel?

== Definition von Geschwindigkeit, Impuls, Kraft, Arbeit und Leistung

Definieren Sie die Größen Geschwindigkeit, Impuls, Kraft, Arbeit und Leistung. 

Zeigen Sie wie diese Größen zusammenhängen und geben Sie für jede Größe die entsprechenden Dimensionen bzw. Einheiten an.

== Punktmasse im Fall

Ein Körper der Masse m fällt aus einer Höhe H auf den Boden.

+ Wie lautet die Bewegungsgleichung?
+ Berechnen Sie die Fallzeit.
+ Berechnen Sie die Aufprallgeschwindigkeit.
+ Zeichnen Sie Zeitdiagramme für den Ort, die Geschwindigkeit und die Beschleunigung.

= Dynamik

== Definition Kraft

Wie ist Kraft definiert?

Welche Dimension hat Kraft und wie hängt sie mit den Grundeinheiten zusammen? 

== Kräfte

+ Was sind konservative Kräfte?
+ Geben Sie Beispiele für konservative und nicht konservative Kräfte an?
+ Wie hängen Kraft, Feldstärke und Potential zusammen?
+ Untersuchen Sie, ob die Federkraft eine konservative Kraft ist.

== Kraftfelder

Welche Bedingungen muss ein konservatives Kraftfeld erfüllen?

Was ergibt sich daraus für die potentielle und kinetische Energie; Geben Sie Beispiele für konservative und nichtkonservative Felder an. 

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

== Rolle mit schiefer Ebene

Die beiden Massen ($attach(m, b: 1) > attach(m, b: 2)$) sind mit einem masselosen Seil über eine masselose und reibungsfreie Rolle verbunden. Die Masse m1 soll sich reibungsfrei auf der schiefen Ebene bewegen.

Berechnen sie die Beschleunigung und geben sie die Zugkraft im Seil an. 

#image("assets/fragenkatalog/dynamik_3.png")

== Massen mit Seil an Rolle

Zwei Gewichte hängen an einem Seil, das über eine masselose und reibungsfreie Rolle läuft. Das Seil sei masselos, die Gewichte haben die Masse $attach(m, b: 1)$ und $attach(m, b: 2)$, wobei $attach(m, b: 1) > attach(m, b: 2)$ ist. Beide sind anfangs in Ruhe. 

Berechnen Sie die Beschleunigung der Massen, während $attach(m, b: 1)$ absinkt. Verwenden Sie den Energiesatz zur Berechnung der Geschwindigkeit der beiden Massen, wenn $attach(m, b: 1)$ um die Strecke $h$ gesunken ist.

#image("assets/fragenkatalog/dynamik_4.png")

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

== Punktmasse an Feder

Eine Masse $m$ hänge an einer Feder (Federkonstante $D$).

+ Man zeige, dass bei Auslenkung der Masse nach unten, die aufgewandte Arbeit wegunabhängig ist.
+ Welchen Einfluss hat die Schwerkraft auf das Ergebnis?

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

== Raketengleichung

+ Welche Kräfte wirken?
+ Leite die Raketengleichung her.
+ Welche Geschwindigkeit hat die Rakete nach einer Brenndauer $T$, wenn die Anfangsgeschwindigkeit $attach(v, b: 0)$ ist.

== Drehimpuls eines Teilchens

Ein Teilchen mit der Masse m bewegt sich mit der Geschwindigkeit $v$ in $x$-Richtung auf einer Geraden im Abstand $b$ vom Ursprung $O$. Es ist $d\A$ die Fläche, die der Ortsvektor $r$ des Teilchens in der Zeit $d\t$ überstreicht. 

Zeigen sie, dass $(d\A)/(d\t)$ konstant ist und dass gilt: $(d\A)/(d\t) = L/(2m)$, wobei $L$ der Betrag des Drehimpulses des Teilchens bezüglich des Ursprunges ist. Welcher Erhaltungssatz ergibt sich daraus?

#image("assets/fragenkatalog/dynamik_7.png")

== Kosmische Geschwindigkeiten

Leiten Sie die 1. und 2. kosmische Geschwindigkeit her.

== Geschwindigkeit zum Verlassen des Erdschwerefeldes

Leiten Sie aus dem Energiesatz die für einen Körper der Masse m erforderliche Anfangsgeschwindigkeit v ab, die er zum Verlassen des Erdschwerefeldes benötigt (Vernachlässigen Sie die Erdrotation).

== Definition Kraft, Arbeit und Leistung

Wie sind Kraft, Arbeit und Leistung definiert?

Welche Dimension haben diese Größen und wie hängen sie mit den Grundeinheiten zusammen?

== Schwerpunkt homogene Halbkugel

Berechnen Sie den Schwerpunkt einer homogenen Halbkugel.

== Schwerpunkt starrer Körper

Wie ist der Schwerpunkt beim starren Körper allgemein definiert? Berechnen Sie den Schwerpunkt einer homogenen Halbkugel.

== Drehbewegung

+ Definieren Sie die Begriffe Drehimpuls, Drehmoment, Trägheitsmoment und Rotationsenergie.
+ Welche Zusammenhänge existieren zwischen diesen Größen?
+ Geben Sie die entsprechenden Dimensionen an.
+ Welche dieser Größen ist eine Erhaltungsgröße?
+ Stellen Sie diesen Größen die entsprechenden Größen der Translation gegenüber.

== Rad auf Randstein

Wie groß ist die Kraft $F$, die nötig ist, um das Rad auf den Randstein zu heben?

#image("assets/fragenkatalog/dynamik_8.png")

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
