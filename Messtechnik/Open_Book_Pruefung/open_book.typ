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
    Zur Verwendung als "Nachschlagewerk" während der Open Book PMT-1 Prüfung.

    Und wenn nicht zum nachschlagen, dann zum während der Prüfung lernen... :)

    FEHLER VORBEHALTEN
    ]
    #line(length: 100%, stroke: (thickness: 1pt))
  ]
  
  align(bottom + center)[
    Typst > LaTeX

    Version vom: #datetime.today().display()
  ]
  pagebreak()
  set page(columns: 2)
  set page(margin: (
    top: 1cm,
    bottom: 1cm,
    x: 1cm,
  ))
  align(horizon, outline(indent: auto))
  pagebreak()
  body
}

#set text(size: 9.5pt)

#show: body => title-page(
  title: [Physikalische Messtechnik 1],
  subtitle: [Open Book Informationssammlung],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

= Einführung / Statistik

== Folienwissen

=== How to Wissenschaft

#image("assets/how_to_wissenschaft.png")

- Zyklus wird kontinuierlich durchlaufen, nie abgeschlossen
- Modellbildung ist pragmatisch, keine "Wahrheit"
- Modelle können nicht "bestätigt" oder "bewiesen" werden, nur falsifiziert
- Abweichungen qualitativ oder quantitativ
- Modelle scheitern meist an "Randbereichen" physikalischer Parameter
- sehr hohe/niedrige Energien/Temperaturen, extreme Größenskalen…
- Quantitative Überprüfung ist Herausforderung an die theoretische Vorhersage als auch die experimentelle Messgenauigkeit
- Eine Messung ohne Abschätzung der Genauigkeit/Fehler ist wertlos!

=== Was heißt "Messen"?

Quantitative Bestimmung einer Eigenschaft eines Systems oder Objektes, z.B. Länge, Zeitintervall, Masse, Stromstärke, ... (SI-Basiseinheiten) und daraus errechenbare Größe (z.B. Geschwindigkeit, Energie, ...)

- Annahme in der klassischen Physik: die zu messende Eigenschaft des Systems existiert und hat einen wahren, aber unbekannten Wert. Den will man möglichst genau eingrenzen.
- Quantenphysik: die Eigenschaft wird erst durch die Messanordnung definiert. Ohne diese kann von einem an sich existierenden Wert der Eigenschaft nicht gesprochen werden. ("Überlagerung" aller möglichen Messwerte mit Verteilung, die durch die Wellenfunktion gegeben ist.)

"Quantitative Bestimmung" heißt: Messwert immer als Vielfaches einer Bezugsgröße (Einheit der Messgröße: m, s, kg, A, Joule, Farad, etc.)
$ underbrace(Q, "Messwert") = underbrace({q}, "Num. Wert (Vielfaches)") * underbrace([Q], "Einheit") $
In QM wird die Einheit tatsächlich quantisiert!

=== Basiseinheiten

- Die ungestörte Übergangsfrequenz des Cs-133 HyperfeinzustandsÜbergangs ist $Delta v_"Cs" = 9 192 631 770 "Hz"$
- Die Lichtgeschwindigkeit in Vakuum ist $c = 299 792 458 "m"/"s"$
- Planck's Konstante ist $h = 6.626 070 15 * 10^(-34) "J"/"s"$
- Die Elementarladung ist $e = 1.602 176 634 * 10^(-19) "C"$
- Die Boltzmann-Konstante ist $k = 1.380 649 * 10^(-23) "J"/"K"$
- Die Avogadro-Konstante ist $N_"A" = 6.022 140 76 * 10^23 "mol"^(-1)$
- Das photometrische Strahlungsäquivalent der monochromatischen Strahlung der Frequenz $540 * 10^12 "Hz"$ ($555 "nm"$, "grün") ist $K_"cd" = 683 "lm"/"W"$

=== Begrifflichkeiten

Messgröße: Die zu ermittelnde physikalische Größe (Aussage über die Welt) \
Beispiel: Thorstens Gewicht, Dauer der Vorlesung, ...

Messwert: der durch die Messung produzierte Wert, der die Messgröße repräsentiert, bestehend aus einem Zahlenwert und einer Einheit ("Rohdaten") \
Beispiel: 69 kg, 96 Minuten

Messung: Die Zuordnung eines Messwertes zu einer Messgröße

Messfehler = Messwert - wahrer Wert (klassisch)

wahrer Wert: unbekannt (bleibt für immer unbekannt), kann nur mit gewisser Wahrscheinlichkeit eingegrenzt werden.

- Auch eine klassische Messung führt im besten Fall zu einer Wahrscheinlichkeitsaussage: die folgende Messung wird mit Wahrscheinlichkeit $P$ im Intervall $[a ... b]$ liegen.
- Welche Aussage ist über den wahren Wert möglich?

=== Wahrer Wert / Fehler

Messfehler = Messwert - Wahrer Wert

Systematische Fehler: Gleichbleibende Unvollkommenheit der Messanordnung. Können, wenn bekannt, vollständig korrigiert werden.

Zufällige Fehler: Entweder aus nicht näher bestimmbaren Phänomenen oder aus dem Rauschen (grundlegendes physikalisches Phänomen)

- Näherung an den Wahren Wert durch mehrmaliges Messen und anschließende Analyse!
- Systematische Fehler durch Eichung oder Modellierung korrigieren!

=== Statistik

- Mehrmaliges Messen entspricht einer Stichprobe aus der Grundgesamtheit
- Daher folgen Messwerte einer statistischen Verteilung
- Erwartungswert der Grundgesamtheit ist der Wahre Wert
- Aus Kenntnis der Verteilung können wir den Wahren Wert (gut) schätzen!

=== Verteilungen

- Grundsätzlich sind Messwerte diskrete Werte
- Aber die meisten Messverfahren erfüllen:
  - Ausreichende Anzahl von Werten
  - Negative und positive Fehler sind gleichwahrscheinlich
  - Kleine Fehler haben eine höhere Wahrscheinlichkeit als große

Die Messwerte folgen einer Gaußverteilung.

==== Gauß-Verteilung

Eigenschaften: Symmetrisch, Stetig und hat zwei Parameter (Mittelwert $mu$, Streuung $sigma$)

$ W(x) = 1/(sigma sqrt(2pi)) exp(-((x-mu)/(sigma sqrt(2)))^2) $

Unter der Vorraussetzung, dass die Messwerte einer Gaußverteilung folgen, können wir die beiden Parameter schätzen:

$ mu ~ overline(x) = 1/n sum^n_1 x_i $
$ sigma ~ s = sqrt((sum^n_1 (x_i - overline(x))^2)/(n - 1)) $

==== Nutzung der Verteilung für Angabe von Fehlern

- Bestimmung der Verteilung
- Schätzung der Parameter der Verteilung

Dann gilt für die Gaußverteilung:
- $68%$ der Messwerte liegen im Intervall $[overline(x) - s, overline(x) + s]$
- $95%$ der Messwerte liegen im Intervall $[overline(x) - 2s, overline(x) + 2s]$
- $99.7%$ der Messwerte liegen im Intervall $[overline(x) - 3s, overline(x) + 3s]$

=== Was ist eine Messung?

- Wert ist gänzlich unbekannt:
  - Ausreichende Zahl von Messungen um eine gute Schätzung des Wahren Wertes anzugeben
  - Fehlerabschätzung bzw. Intervall, in dem der Wert liegt.
- Prüfung eines erwarteten Wertes/Unterschieds:
  - Ausreichende Zahl von Messungen um einen Vergleich möglich und sinnvoll zu machen
  - Fehler des Vergleichswertes muss bekannt sein
  - Vergleich von zwei Verteilungen

=== T-Test - Vergleich von zwei Verteilungen

$ t = sqrt((n m)/(n+m)) (overline(x) - overline(y))/s $
$ s^2 = ((n-1) s_x^2 + (m-1) s_y^2)/(n + m - 2) $

Für $n = m$:
$ t = sqrt(n/(s_x^2 + s_y^2)) (overline(x) - overline(y)) $

=== Statistischer Test (mit Schublehren)

Statistischer Test braucht eine Null-Hypothese: \
$H_0$: *Die beiden Schublehren messen gleich ($overline(x) = overline(y)$)*

1. Mittelwert digitale Schublehre (ein Stein!)
2. Mittelwert analoge Schublehre (der selbe Stein!)
3. Standardabweichungen
4. Berechnung der T-Statistik
5. Berechnung des p-Wertes:
  - Wenn p > 0.05 wird die Nullhypothese *nicht* verworfen
  - Wenn p < 0.05 wird die Nullhypothese verworfen

=== Veränderliche Messwerte - Fit

Radioaktiver (exponentieller) Zerfall:
$ A(t) = A_0 e^(-lambda t) $

Aus einer Reihe von Messungen von $A(t)$ soll $lambda$ bestimmt werden!

==== Least Square Estimate - linearer Fit

Für Wertepaare ($X|Y$) soll eine Gerade gefunden werden, die
möglichst nahe an allen Punkten bleibt:
$ y = k*x + d $

Mit geschätzen Parametern $k$ und $d$ können wir berechnen:
$ hat(Y) = k * X + d $

Die Abweichung (Residuum) $hat(Y) - Y$ soll möglichst klein werden! Also
Minimieren von
$ Q(d,k) = sum^n_(i=1) (Y_i - hat(Y)_i)^2 = sum^n_(i=1) (Y_i - d - k * X_i)^2 $

$k$ und $d$ für den linear fit lassen sich folgend berechnen (ohne Beweis):
$ k = (sum^n_(i=1) (X_i - overline(X)) (Y_i - overline(Y)))/(sum^n_(i=1) (X_i - overline(X))^2) $
$ d = overline(Y) - k * overline(X) $

== Relevante Altklausurfragen

*Erklären Sie was systematische und was zufällige Fehler sind und geben Sie Beispiele.*

- Systematisch: Gleichbleibende Unvollkommenheit der Messanordnung
  - Bsp: Falsch kalibrierte Waage, schlechter thermischer Kontakt beim Thermoelement, Netzbrumm
- Zufällig: Nicht näher bestimmbare Phänomene oder physikalisches Rauschen
  - Bsp: Thermisches Rauschen, Luftbewegungen, Ableseungenauigkeit

*Ist die Unterscheidung systematisch/zufällig immer eindeutig?*

Nein, z.B. Netzbrumm wirkt periodisch (systematisch), kann aber wie Rauschen erscheinen

*Welche lassen sich im Prinzip korrigieren und wie?*

Nur systematische, durch Eichung/Kalibrierung oder Modellierung

*Erklären Sie, wie durch mehrmalige Messungen und Mittelung der Ergebnisse der Messfehler reduziert werden kann. Und wie hängt die Reduktion des Messfehlers mit der Zahl der Messungen zusammen?*

- Mehrmaliges Messen = Stichprobe aus Grundgesamtheit
- Mittelwert nähert sich dem wahren Wert an
- Fehler des Mittelwerts sinkt mit $1/sqrt(n) arrow.double$ doppelte Genauigkeit erfordert $4 times$ mehr Messungen

*Für welche Arten von Fehler funktioniert das?*

Funktioniert nur für zufällige Fehler, systematische bleiben bestehen

*Wie lautet die Gauss'sche Wahrscheinlichkeitsverteilung $W(x)$ und was ist die Bedeutung der darin enthaltenen Parameter?*

$ W(x) = 1/(sigma sqrt(2pi)) exp(-((x-mu)/(sigma sqrt(2)))^2) $

Parameter:
- $mu$ = Mittelwert (Lage des Maximums, Schätzung des wahren Wertes)
- $sigma$ = Streuung/Standardabweichung (Breite der Verteilung)

*Wie groß ist die Wahrscheinlichkeit, dass bei Vorliegen einer Gauss'schen Wahrscheinlichkeiloch-paatsverteilung die Einzelmessung um weniger als 1, 2, bzw. 3 Standardabweichungen vom Mittelwert abweicht?*

- $overline(x) plus.minus 1"s"$: 68%
- $overline(x) plus.minus 2"s"$: 95%
- $overline(x) plus.minus 2"s"$: 99.7%

*Unter welchen Bedingungen kann man erwarten, dass der Messfehler einer Gauss'schen Wahrscheinlichkeitsverteilung unterliegt*

- Positive und negative Fehler gleich häufig
- Kleine Fehler wahrscheinlicher als große
$arrow.double$ Tritt auf wenn Fehler auf viele unabhängige Störquellen zurückgehen

*Einfache Fehlerfortpflanzung: Wie lautet der Fehler einer Größe $G(x,y,z)$, die aus den verschiedenen Messgrößen $x,y,z$ errechnet wird? Was ist Voraussetzung für die Gültigkeit dieses Gesetzes?*

Für $G(x,y,z)$ gilt:
$ Delta G = sqrt(((partial G)/(partial x) Delta x)^2 + ((partial G)/(partial y) Delta y)^2 + ((partial G)/(partial z) Delta z)^2) $

Voraussetzung: Die Fehler $Delta x, Delta y, Delta z$ sind unabhängig voneinander

*Temperaturmessung mittels Thermoelement, Messverstärker und Analog-Digital-Converter (ADC): Nennen Sie die möglichen Fehlerquellen auf dem Weg vom Thermoelement bis zur digitalen Anzeige. Unterscheiden Sie auch, welche Fehler zufällig und welche systematisch sind.*

#align(center)[
  #table(
    columns: 2,
    table.header(
      [*Fehlerquelle*], [*Typ*],
    ),
    [Schlechter therm. Kontakt Probe $<=>$ Thermoelement], [systematisch], 
    [Rauschen & Brumm am Thermoelement], [zufällig / systematisch],
    [Messverstärker: verstärkt Eingangsrauschen + eigenes Rauschen], [zufällig],
    [Netzbrumm (50 Hz) im Verstärker], [systematisch],
    [ADC: Rauschen & Quantisierungsfehler], [zufällig],
    [Digitale Übertragungsfehler], [systematisch]
  )
]

*Wie ist der Erwartungswert (=Mittelwert) einer Messgröße definiert?*

$ overline(x) = 1/n sum^n_(i=1) x_i $

*Wie ist die Varianz einer Messgröße definiert? Was ist die Standardabweichung?*

$ s^2 = (sum^n_(i=1) (x_i - overline(x))^2)/(n - 1) quad "(Varianz)" $

Standardabweichung: $s = sqrt(s^2)$


= Signalwandlung

== Folienwissen

=== Grundlagen

- Messgröße: Die zu ermittelnde physikalische Größe.
- Messwert:  Der durch die Messung produzierte Wert, der die Messgröße representiert, bestehend aus einem Zahlenwert und einer Einheit.
- Messung: Die Zuordnung eines Messwertes zu einer Messgröße.

=== Sensoren

- Umwandlung/Zuordnung Messwert zu Messgröße ist wesentlicher Teil der Messtechnik
- Für viele (Standard)anwendungen gibt es fertige Lösungen: Sensoren
- Spezifikation und Möglichkeiten von Sensoren durch verschiedene Kenngröße definiert

==== Kenngrößen Sensor

- Eichkonstante, calibration constant: Sensor-Ausgangssignal beim Einheitswert der Messgröße (z.B. mV/°C, Hz/mm) (Nur sinnvoll bei linearen Gebern. Ansonsten siehe "Empfindlichkeit")
- Sensor-Übertragungsfunktion, sensor or transducer transfer function: Funktionaler Zusammenhang zwischen Ausgangssignal und Messgröße.
- Empfindlichkeit, sensitivity: Mess-Signaländerung bezogen auf eine kleine Messwertänderung ⇔ Steigung der Tangente der Sensor-Umkehrfunktion im betrachteten Punkt
- Auflösung, resolution: Kleinste Änderung der Messgröße, die mit dem betreffenden Sensor noch festgestellt werden kann.
- Messbereich, measurement range: (Untere und) obere Messbereichsgrenze
- Dynamik, dynamic range: Verhältnis aus Messbereich und Auflösung (also wie viele wirklich unterscheidbare Messwerte der Messbereich umfasst)
- Hysterese, hysteresis: Das Sensor-Ausgangssignal hängt auch von der Vorgeschichte des Sensors ab. War die Messgröße vorher größer als der aktuelle Messwert, ist nachher auch das Ausgangssignal anders, als wenn vorher die Messgröße kleiner war.
- Reproduzierbarkeit, reproducibility: Ausgangssignaländerung trotz gleichem Messgrößenwert bei Wiederholung der Messung nach längerer Zeit oder nach großen Messgrößenänderungen
- Kreuz-oder Querempfindlichkeit, cross sensitivity: Abhängigkeit des Sensor-Ausgangssignals von Störgrößen.
- Kurz- und Langzeitstabilität, short and long term stability: Drift des Messsignals bei konstanter Messgröße über einen kurzen oder längeren Zeitraum.
- Absolutgenauigkeit, absolute accuracy: Maximale Abweichung des angezeigten Messwertes von dem vom Bundesamt für Eich- und Vermessungswesen ermittelten Wert.
- Ansprechverzögerung, Zeitkonstante, slew rate, response time: Quantifizierung des Zeitverhaltens (Trägheit) des Sensors. Antwort des Sensorsignals auf eine sprunghafte Änderung der Messgröße

=== Wandlungskette

Messgröße ist nicht immer direkt messbar. Es braucht meist eine Reihe von Umwandlungen um aus dem zu messenden Effekt eine elektrisch/elektronisch erfassbare Größe zu machen.

Was wir messen können:
- Spannung
- Strom
- Widerstand
- Kapazität/Induktivität

Was wir messen wollen:
- Länge
- Masse
- Zeit
- Anzahl
- ...

=== Kennlinie

Zusammenhang Messgröße und Ausgangswert, im Idealfall linear. Grenzbereiche oft mit starken Abweichungen.

#image("assets/kennlinie.png")

=== Kalibrierung

- Kennlinie: Messgröße $arrow$ Ausgangswert
- Kalibrierung: Ausgangswert $arrow$ Messwert
- Verknüpfung Messgröße und Messwert

=== Beispiele

Die folgenden Beispiele beschreiben "klassische" bzw. übliche Anwendungen der Messtechnik.

==== Seebeck-Effekt

- Austrittsarbeit $W_A$ um $e^-$ aus Metall zu schlagen
- Zwei Metalle mit unterschiedlichem $W_A$ sorgt für Kontaktspannung
- Bei zwei Kontaktstellen unterschiedlicher Temperatur entsteht eine Thermospannung

#image("assets/seebeck_effekt.png")

==== Thermoelement

- Thermoelement misst Unterschied zwischen zwei Kontaktstellen
- Spannung pro Grad (µV/°C) abhängig von gewählten Metallen
- Kalibrierung und Kompensation notwendig!

Beispiel Temperaturmessung:
- Mehrere Thermoelemente in Reihe geschaltet
- Erhöhung der Spannung sorgt für höhere Empfindlichkeit
- Kontaktstellen schwarz/weiß
- Sensibel für IR Strahlung
- Linse fokussiert auf Thermosäule

Beispiel Widerstandsthermometer:
- Thermische Anregung erhöht Widerstand
- Einsatz als Berührungsthermometer
- Metalle und Halbleiter geeignet
$ R(T) = R_0 [1 + A(T - T_0) + B(T - T_0)^2] $

$B$ für Metalle meist sehr klein

Norm Pt100 (Pt100-Sensoren sind in der internationalen Norm DIN EN 60751 genormt. Sie definiert den Nennwiderstand von 100 Ohm bei 0°):
- $R_0 = 100 Omega$
- $A approx 3.85 * 10^(-3) K^(-1)$

=== Auswahl Messeffekt/Methode

#image("assets/temperaturwiderstaende.png")

Je steiler die Kurve in einem bestimmten Bereich, umso empfindlicher ist das Instrument bzw. die Methode.

=== Zusammenfassung Temperaturmessung

- Temperaturunterschied erzeugt elektrische Spannung
- bzw. Temperaturerhöhung verursacht Änderung im Widerstand
- Messung von Widerstand bzw. Spannung liefert relativen Wert
- Kalibrierung gegen bekannte Temperatur liefert absoluten Wert

=== Piezo-Effekt

Beispiel Quarz ($"SiO"_2$):
- Ladungsverschiebung: $"Si"^(4+)$, $"O"_2^(4-)$
- Durch mechanische Spannung entsteht elektrische Spannung

#image("assets/piezo_effekt.png")

==== Piezo-Effekt -- Ebenes Modell

Das Dipolmoment $arrow(M)$ ist:
$ arrow(M) = 4e (arrow(r_1) + arrow(r_3) + arrow(r_5)) - 4e (arrow(r_2) + arrow(r_4) + arrow(r_6)) $

Es gilt immer:
$ arrow(r_1) = -arrow(r_4), quad arrow(r_2) = -arrow(r_5), quad arrow(r_3) = -arrow(r_6) $

Also ist das Dipolmoment
$ arrow(M) = 8e (arrow(r_1) - arrow(r_2) + arrow(r_3)) $

Im unbelasteten Zustand gilt $(arrow(r_1) - arrow(r_2) + arrow(r_3) = 0), arrow(M) = 0$ aber bei Belastung wird $r_1$ um $dif x$ länger:
$ arrow(M) = 8e dif x $

#image("assets/piezo_effekt_ebenes_modell.png")

==== Piezo-Effekt -- Zusammenfassung

- Mechanische Verformung ($dif x$) bzw. Spannung verursacht ein Dipolmoment $arrow(M)$.
- Das Dipolmoment erzeugt eine elektrische Polarisation $P = arrow(M)/V$ im Volumen $V$
- Die elektrische Polarisation kann durch Aufbringen von Elektroden der Fläche $A$ als Spannung $U = (P A)/C$ gemessen werden, bei Betrachtung der Elektroden als Plattenkondensator mit Kapazität $C$
⇒ Die Verformung kann durch die Spannung gemessen werden. Gemessen wird $U$, dargestellt wird $dif x$

=== Photowiderstand

- Light Dependent Resistor (LDR)
- Homogene Halbleiter sind Isolatoren mit sehr kleiner Bandlücke
- Photonen mit $E_(h nu) > E_"BL"$ erzeugen Elektron-Loch-Paare
⇒ Leitfähigkeit ist proportional zu einfallender
Lichtintensität

ACHTUNG: Stark temperaturabhängig, Träge

=== Photodiode

- pn- oder pin-Diode (Si, Ge, GaAs)
- Große Fläche ($"mm"^2$)
- p- oder n- Seite ist Licht zugewandt
- Betrieb in Sperrrichtung in Serie mit Lastwiderstand
- Einfallendes Licht (Wellenlänge!) erzeugt Elektron-Loch-Paare
⇒ Strom fließt, also Spannungsabfall an Lastwiderstand. Empfindlichkeit hängt von Bauart, Spektrum und Material ab

=== Zusammenfassung Messung Lichtintensität 

- Photonen erzeugen Ladungsträger in Halbleitern
- Ladungsträger ermöglichen/erzeugen Stromfluss
- Stromfluss/Widerstand ist proportional zu Lichtintensität

=== Längenmessung -- Dehndrähte

#image("assets/dehndraht.png")

Widerstand eines Drahtes:
$ R = rho l/A arrow.double (dif R)/R = (dif rho)/rho + (dif l)/l - (dif A)/A $

Volumen bleibt konstant:
$ V = l A arrow.double (dif D)/D = -1/2 (dif l)/l $

Nebenrechnungen:
$ A = (D^2 pi)/4 $
$ (dif A)/A = 2 (dif D)/D $
$ (dif V)/V = (dif l)/l + (dif A)/A = (dif l)/l + 2 (dif D)/D = 0 $

Somit ist die totale Widerstandsänderung:
$ (dif R)/R = (1 + 2 mu + beta_rho) (dif l)/l = K (dif l)/l $

Reale Stoffe ändern bei Dehnung aber meist ihr Volumen:
$ (dif D)/D = -mu (dif l)/l $

Der spezifische elektrische Widerstand $rho$ ist bei kleinen Dehnung proportional zur Dehnung:
$ (dif rho)/rho = beta_rho (dif l)/l $

- Metalle haben $K approx 2$ weil $beta_rho$ sehr klein ist
- Bei Halbleitern überwiegt $beta_rho$, d.h $K$ bis 200
- Wichtig ist die Abhängigkeit von der Temperatur, sollte möglichst klein sein!

Anwendungsmöglichkeiten von Dehndrähten:
- Meist in Kunststofffolien eingebettet
- Mehrere Richtungen möglich

==== Zusammenfassung Dehndrähte

- Widerstand unbelastet ist bekannt (Kalibrierung)
- Bei Dehnung ändert sich der Widerstand
- Messung der Änderung des Widerstandes (Spannungsabfall) ergibt Längenänderung

== Relevante Altklausurfragen

*Was ist ein Sensor? Und was ist ein Aktor?*

Sensor: Wandelt eine physikalische Messgröße in ein elektrisch erfassbares Signal um (Spannung, Strom, Widerstand, Kapazität)

Aktor: Umgekehrte Richtung -- wandelt ein elektrisches Signal in eine physikalische Größe um (z.B. Motor, Heizelement, Lautsprecher)

*Was ist die Empfindlichkeit eines Sensors?*

Mess-Signaländerung bezogen auf kleine Messwertänderung, entspricht Steigung der Tangente der umgekehrten Sensorfunktion

*Was ist die "dynamic range" eines Sensors?*

Verhältnis von Messbereich und Auflösung, das entspricht der Anzahl der wirklich unterscheidbaren Messwerte im Messbereich

*Was versteht man unter Hysterese eines Sensors? (Auch Skizze)*

Sensor-Signal hängt von Messgeschichte des Sensors ab: War
Messgröße vorher grösser, bekommt man anderen Wert, als wenn es vorher kleiner war

#image("assets/sensor_hysterese.png")

*Erklären Sie die Grundlagen des Dehnmessstreifens. In welchem Bereich relativer Längenänderung wird er eingesetzt? Wie sollte ein Dehnmesstreifen auf Temperaturänderung reagieren?*

Grundlage:
$ R = rho l/A arrow.double (dif R)/R = K dot (dif l)/l $

- Volumen bleibt konstant ($V = "const"$) $arrow.double$ wenn $l$ größer, wird $A$ kleiner
- $K = 1 + 2 mu + beta_rho$ (Gauge-Faktor)
  - Metalle: $K approx 2$ ($beta_rho$ klein)
  - Halbleiter: $K approx 200$ ($beta_rho$ dominiert)

Einsatzbereich: bis $dif l\/l approx 10^(-3)$

Temperaturverhalten: sollte möglichst temperaturunabhängig sein (Querempfindlichkeit!)

*Was kann man mit einer Lateraldiode/Photodiode messen? Wie funktioniert sie?*

Photodiode:
- Was man messen kann:
  - Lichtintensität (Bestrahlungsstärke)
  - Wellenlängenabhängig: nur Photonen mit $E_(h nu) > E_"BL"$ werden detektiert $arrow.double$ bestimmter Spektralbereich je nach Material
- Funktionsweise:
  - pn- oder pin-Diode betrieben in Sperrrichtung
  - Einfallendes Licht erzeugt Elektron-Loch-Paare in der Sperrschicht
  - Diese werden durch das elektrische Feld der Sperrschicht getrennt $arrow.double$ Photostrom fließt
  - $I prop$ Lichtintensität
  - Spannungsabfall an Lastwiderstand wird gemessen

Lateraldiode:
- Was man messen kann: 
  - Position eines Lichtflecks (1D oder 2D) $arrow.double$ positionsempfindlicher Detektor (PSD)
- Funktionsweise: Ähnlich Photodiode, aber der Photostrom teilt sich je nach Auftreffposition des Lichts auf zwei (oder vier) Elektroden auf $arrow.double$ aus dem Stromverhältnis lässt sich die Position berechnen.

*Quarz-Kristall als Piezo-Druckwandler: Erklären Sie wie durch Druck ein elektrisches Dipolmoment entsteht.*

Entstehung des Dipolmoments:
- Im unbelasteten Zustand: Schwerpunkte der positiven ($"Si"^(4+)$) und negativen ($"O"_2^(4-)$) Ladungen fallen zusammen $arrow.double arrow(M) = 0$
- Bei mechanischer Belastung: Gitterverzerrung verschiebt Ladungsschwerpunkt $arrow.double arrow(M) = 8 e dif x eq.not 0$
- Dipolmoment erzeugt elektrische Polarisation $P = arrow(M) \/ V$
- Messbare Spannung an Elektroden: $U = (P A)\/C$

Longitudinal: Kraft parallel zur Messspannung (Elektroden senkrecht zur Kraftrichtung) \
Transversal: Kraft senkrecht zur Messspannung

*Woraus besteht ein Fotowiderstand und warum kann seine Leitfähigkeit durch Licht beeinflusst werden? Was sind seine Nachteile? Welchen Typ würden Sie für sichtbares Licht einsetzen?*

- Homogene Halbleiter sind Isolatoren mit sehr kleiner Bandlücke
- Photonen mit $E_(h nu) > E_"BL"$ erzeugen Elektron-Loch-Paare
⇒ Leitfähigkeit ist proportional zu einfallender
Lichtintensität

Nachteile: Stark temperaturabhängig, Träge

*Wie ist eine Fotodiode aufgebaut? Welche Halbleiter werden eingesetzt? Wie hängt der Strom von der einfallenden Lichtintensität ab? Wie wird sie meist geschaltet und wie wird der Strom gemessen?*

siehe oben?


= Rauschen

== Folienwissen

=== Einleitung, Begriff des Rauschens

Erstmals 1918 als "relevantes" physikalisches Phänomen beschrieben durch Walter Schottky. Der Begriff "Rauschen" beschreibt messbare, unregelmäßige Stromschwankungen.

In der Physik:
Allgemein als "Störgröße" aufgefasst, z.B. "signal-to-noise", aber auch informationstragende Größe, z.B. in der Quantenmechanik

In der Nachrichtentechnik:
Untergrund mit breitem, unspezifischem Frequenzspektrum, kann als Überlagerung vieler harmonischer Wellen mit unterschiedlichen Amplituden, Frequenzen und Phasen dargestellt werden

Es gibt unterschiedliche Arten des Rauschens, z.B. weißes Rauschen, pinkfarbenes  Rauschen ($1/f$-Rauschen), braunes Rauschen, ...

#image("assets/rauschtypen.png")

Wie kann man diese "Rausch-Typen" quantitativ beschreiben?
- Mittelwert? (Null, konstant, drift...)
- Verteilung der Einzelmessungen um den Mittelwert? (Varianz, Verteilungsfunktion...)
- Darstellung im Frequenzraum, gibt es periodische Signale im Rauschen?

==== Periodizität, Autokorrelationsfunktion

Suche nach Periodizität: die Autokorrelationsfunktion

Autokorrelation: Ein Signal $x(t)$ wird mit einer verschobenen Version $x(t+tau)$ von sich selbst verglichen (in der Signalverarbeitung geht man allgemein von unendlichen Signalen aus) \
(wenn man $x(t)$ und $y(t-tau)$ betrachtet, heißt es "Kreuzkorrelationsfunktion", siehe z.B. Lock-In Verstärker)
$ Psi(tau) = limits(lim)_(T -> infinity) 1/(2T) integral^T_(-T) x(t) x(t + tau) dif t $

Die Autokorrelationsfunktion hängt mit dem Leistungsspektrum $S(f)$ über eine Fourier-Transformation zusammen (Wiener-Chintschin-Theorem):
$ Psi(tau) = integral^infinity_(-infinity) S(f) dot exp(i 2 pi f tau) dif f $

Verschiedene "Typen" des Rauschen werden oft über den funktionellen Verlauf des
Leistungsspektrums $S(f)$ (="Farbe") unterschieden.

#image("assets/daten_vs_autokorrelationsfkt.png")

==== Die Autokorrelationsfunktion im Interferometer

Beispiel: Messung der Kohärenzlänge eines Lasers. Signal ist periodisch, aber mit Phasensprüngen

#image("assets/kohaerenzlaenge_laser.png")

Ergebnis: $Psi$ ist eine abfallende Funktion mit charakteristischer Zerfallskonstante $gamma$ $arrow.double$ der Wegunterschied zwischen zwei Interferometer-Armen darf nicht länger als $c/gamma$ sein.

Funktionsprinzip des "Weißlicht-interferometers": Messung der Korrelationsfunktion als Kontrast Michelson Interferometer

#image("assets/weisslicht_interferometer.png")

==== Weißes Rauschen

Weißes Rauschen = konstantes Leistungsspektrum, $S(f) = "const"$

$arrow.double$ Autokorrelationsfunktion ist eine Delta-Funktion \
$arrow.double$ Signal zu Zeitpunkt $t$ ist unkorreliert zu jedem anderen Zeitpunkt $t' eq.not t$

Praktisch hätte ein wirklich weißes Spektrum eine unendlich hohe Leistung (sehr hohe Frequenzen), tritt also in reiner Form nicht auf (Näherung)

#image("assets/weisses_rauschen.png")

- Die einzelnen Messwerte können dabei eine Gauß-Verteilung haben, aber auch andere Verteilungen (Cauchy-, Poisson-) sind möglich
- Shot-noise ist eine Extremversion von weißem Rauschen (Step-function)

Akustisches Empfinden von weißem Rauschen: stark höhenbetont

Weißes Rauschen wird in der Psychoakustik und Tinitustherapie zur "Lärmbekämpfung" eingesetzt: Andere Störgeräusche werden als weniger Laut empfunden, wenn man sie mit weißem Rauschen überlagert

Prozesse, bei denen weißes Rauschen auftritt:
- thermisches Rauschen (unterhalb der Quanten-Grenzfrequenz)
- shot noise

==== Rosa Rauschen

Rosa Rauschen bzw. $1/f$ Rauschen bzw. Flickerrauschen = Leistungsdichte ist proportional zu $f^(-alpha)$

$a ~1$ (3 db pro Oktave) entspricht dabei etwa dem Hörempfinden, wird als "Alle Frequenzen kommen gleich stark vor" wahrgenommen

Bei rosa Rauschen sind benachbarte Messwerte statistisch nicht unabhängig die Autokorrelationsfunktion nimmt exponentiell mit der Verschiebung ab ($alpha = 1$)

#image("assets/pinkes_rauschen.png")

Prozessen, die zu rosa Rauschen führen:
- elektr. Widerstand bei schlecht leitenden Materialien (z.B. Halbleitern)
- generell sind die Ursachen für $1/f$ Rauschen nicht völlig geklärt

==== Rotes Rauschen

Rotes Rauschen bzw. $1/f^2$ Rauschen = Leistungsdichte ist proportional zu $f^(-alpha)$

$a ~2$ (6 db pro Oktave) hat einen starken Anteil im niederfrequenten oder Infraschall-Bereich $arrow$ schwer hörbar

#image("assets/rotes_rauschen.png")

Prozessen, die zu rotem Rauschen führen:
- Brownsche Molekularbewegung

=== Thermisches Rauschen

Oft als "Johnson noise" oder "Nyquist noise" bezeichnet (Johnson ist richtiger)

Grundlage: thermische Bewegung "freier" Ladungsträger
- fluktuierendes elektrisches Feld
- Spannung an einem Widerstand

Zwei Widerstände $R_1 = R_2 = R$ mit gleicher Temperatur $T$, verbunden durch ideal leitende Drähte ($R_L = 0$) der Länge $L$

#image("assets/thermisches_rauschen_schaltung.png")

Gemäß $T$ führen Atome/Moleküle innerhalb der Widerstände $R$ ungeordnete Wärmebewegungen aus. Durch Wechselwirkung ("Stöße") kommt es bei den freien Ladungsträgern (meist: Elektronen) zu statistischen Verschiebungen ihrer Ladungsschwerpunkte. \
$arrow.double$ Zwischen Enden eines jeden Widerstands: schnell fluktuierende Spannung $U_R (t)$, Rauschspannung

- Rauschspannung an $R_1$ führt im Kreis zum Strom $I_(R_1) = U_(R_1) / (2R)$
- Erzeugt in $R_2$ Joule'sche Wärmeleistung $P_2 = I^2 * R$
- Wegen 2. Hauptsatz der Thermodynamik $P_2 = P_1$
- Gleiche Leistung $P_(Delta v 2) = P_(Delta v 1)$ muss auch für jedes Frequenzintervall $Delta v$ gelten.
$arrow.double$ Beide Widerstände senden (im Zeitmittel) Wellen gleicher Amplitude aus. Entlang der ideal leitenden Drähte bilden sich stehende Wellen aus.

#image("assets/thermisches_rauschen_schaltung_stehende_welle.png")

$ arrow.double Delta n = (2 L)/v * Delta nu $
d.h. in jedem gleich großen Frequenzintervall $Delta nu$ gibt es gleich viele Schwingungsformen $Delta n$.

Für "normale" Frequenzen ($h nu << k_B T$) gilt, wobei $overline(P_nu)$ die mittlere Rauschleistung ist:
$ overline(P_nu) prop Delta nu arrow.double overline(P_nu) tilde.equiv Delta nu dot k_B T $

Außerdem gilt: $overline(P_nu) = overline(I_R^2) dot R = overline(U_R^2)\/4R$

Daraus folgt die Nyquist-Beziehung (für $h v << k_B T$):
$ sqrt(overline(U_R^2)) = sqrt(4 k_B T dot R dot Delta nu) $

Beispiel: $T = 300"K", R = 1"M"Omega, Delta nu = 1"MHz"$
$ sqrt(overline(U_R^2)) = sqrt(4 dot 4.1 dot 10^(-21)"Ws" dot 10^6Omega * 10^6\/s) approx 0.13"mV" $

$overline(U_R^2) prop R$ gilt völlig unabhängig von der Art des Widerstands!

#image("assets/thermisches_rauschen_frequenzen.png")

Aber: $overline(P_nu) prop Delta nu$ kann wegen Energiesatz nicht für beliebig große Bandbreiten (Frequenzintervalle) gelten.

Die stehenden Wellen müssen wie Photonen im thermodynamischen Gleichgewicht der Bose-Einstein-Statistik genügen, wobei $overline(N)$ die mittlere Besetzungszahl ist:
$ overline(N) = 1/(exp(h nu \/ k_B T) - 1) $

$arrow.double$ Die Funktion $(h nu \/ k_B T)/(exp(h nu \/ k_B T) - 1)$ ist proportional zur spektralen Rauschleistung: "weitgehend" weißes Rauschen

Johnson $arrow$ Nyquist: Vermeidung der UV-Katastrophe

#image("assets/thermisches_rauschen_besetzungszahl.png")

Nyquist Formel: $overline(U_R^2) = 4 k_B T dot R ((h f \/ k_B T)/(exp(h f \/ k_B T) - 1)) Delta f = 4 k_B T dot R ((f \/ f_Q)/(exp(f \/ f_Q) - 1)) Delta f $

mit $f_Q = (k_B T)/h$ die "Quantentheoretische Grenzfrequenz"

bei $300"K"$ ist $f_Q = 6.25 * 10^12"Hz"$ (das entspricht $lambda approx 49 mu"m"$)

Was passiert bei T = 0? Heisenbergs Unschärfe verbietet einen völligen Stillstand der Leitungselektronen! $arrow.double$ jeder Energienieveau muss mit mindestens $1/2 h f$ mitbesetzt sein.

$arrow.double$ Korrektur um die Nullpunktenergie:
$ overline(U_R^2) = 4 k_B T dot R ((h f \/ k_B T)/(exp(h f \/ k_B T) - 1) + 1/2 (h f)/(k_B T)) Delta f $

Diese Formel ist umstritten, weil dadurch die UV-Katastrophe wieder eingeführt wird Faktisch steht die Nullpunktenergie nicht für thermische Prozesse zur Verfügung.

==== Thermisches Rauschen im Labor

Offensichtlich misst man an einem Widerstand eine Rauschspannung, diese ist abhängig von der Bandbreite der Messung!

Thermische Ladung eines Kondensators:
$ overline(1/2 C U_R^2) = 1/2 k T $
$ 1/2 C overline(U_R^2) = 1/2 k T $
$ T = 290"K" arrow.double overline(U_R^2) = (4 dot 10^(-21))/C $

#image("assets/thermisches_rauschen_kondensator.png")

Thermischer Strom in einer Spule:
$ overline(1/2 L I_R^2) = 1/2 k T $
$ 1/2 L overline(I_R^2) = 1/2 k T $
$ T = 290"K" arrow.double overline(I_R^2) = (4 dot 10^(-21))/L $

#image("assets/thermisches_rauschen_spule.png")

Damit schwingt ein Schwingkreis immer ein wenig...

Gespeicherte Energie in zwei Freiheitsgraden:
- Elektrische Energie
- Magnetische Energie
$ overline(E) = 1/2 (L overline(I_R^2) + C overline(U_R^2)) = k T $

#image("assets/thermisches_rauschen_schwingkreis.png")

Das gilt selbstverständlich nicht nur für elektrische Systeme, Beispiel: schwingender Cantilever beim AFM

=== Schrotrauschen -- shot noise

Allgemeiner Begriff für Rauschen, welches durch einen Poisson-Prozess erzeugt wird. Immer ein Hinweis auf einen diskreten, stochastischen Prozess:
- einzelne Ladungsträger in einer Potentialbarriere
- einzelne Photonen auf einem Photodetektor
- Verstärkerröhren, Channeltron, Photomultiplier
- Regentropfen (alle ähnlich groß 2-3 mm)

#image("assets/poisson_verteilungen.png")

für höhere Mittelwerte $lambda$ nähert sich die Poisson-Verteilung der Normalverteilung an. Für die Breite der Verteilung gilt $Delta lambda = sqrt(lambda)$

Es besteht keine Korrelation zwischen aufeinanderfolgenden "Klicks" $arrow.double$ auch Schrotrauschen ist weißes Rauschen.

==== Shot noise in der Optik

#image("assets/shot_noise_pixel.png")

- Ein Messsystem registriert im zeitlichen Mittel $N$ Photonen in einem Pixel
- In einer Einzelmessung ("shot") werden die Messwerte mit $sqrt(N)$ um $N$ streuen
- Dies ist eine fundamentale Eigenschaft von Licht, hängt nicht mit dem Detektor zusammen! (der kann zusätzlich technisch rauschen)
- signal-to-noise $"SNR" = N/sqrt(N) = sqrt(N) arrow.double$ besonders "schlecht" bei kleinen Intensitäten
- Messung der Fluoreszenz von einzelnen Atomen/Ionen deshalb sehr schwierig

==== Shot noise bei elektrischen Strom

Völlig analog schwankt auch elektrischer Strom aufgrund der diskreten Elektronen (Dieser Prozess ist unabhängig von thermischem Rauschen und tritt auch bei $T=0$ auf)

Schottky-Formel für den Strom: $sqrt(overline(I_S^2)) = sqrt(2 dot e dot I_0 dot Delta f)$

Beispiel: $I_0 = 1 "pA", Delta f = 1 "MHz"$
$ sqrt(overline(I_S^2)) = 0.6 "pA" arrow.double "SNR" ~1 $

=== Quantenrauschen

"Rauschen" in der Quantenphysik: Betrachten wir das Quanten 2-Niveau-System für ein einzelnes Atom, Ion...

#image("assets/quantenrauschen_darstellungen.png")

Man bedenke:
- jede einzelne Messung kann nur $|0chevron.r$ oder $|1chevron.r$ als Ergebnis haben
- um den Zustandsvektor zu rekonstruieren, ("Tomographie") brauchen wir viele Messungen (Wiederholungen oder Ensemble)
- es gelten Unschärferelationen!
- $arrow.double$ unser Wissen über den Zustand hängt intrinsisch an der Zahl der Messungen/Teilchen
- wie beschreiben wir ein Ensemble?

Die Bloch-Kugel für N 2-Niveau-Systeme kann als ein "kollektiver" Zustandsvektor (spin) dargestellt werden

#image("assets/n2_niveau_bloch_kugel.png")

Auch für den kollektiven Spin gilt die Unschärferelation:
$ Delta S_y Delta S_z gt.eq abs(chevron.l S_x chevron.r) $

#image("assets/bloch_kugel_unschaerferelation.png")

der berühmte Überlagerungszustand (kohärenter Zustand) hat Fluktuationen:
$ Delta S_y^2 = abs(chevron.l arrow(S) chevron.r) = Delta S_z^2 arrow.double "Quanten-shot-noise!" $

Heisenberg macht Aussagen über das Produkt der Fluktuationen (="Fläche"). Man kann eine Observable "quetschen", auf Kosten der anderen Observablen (die "Fläche" der Fluktuationen bleibt konstant)

#image("assets/quantenrauschen_fluktuationen_quetschen.png")

=== Signal-to-noise

Das Signal hängt ab von:
- Intensität/Leistung der Quelle
- Absorption zwischengelagertem Material
- Gas, Staub, absorbierende Materialien
- (Kontakt)Widerstände
- Effizient des Detektors
- Integrationszeit

Das Rauschen wird bestimmt durch:
- Rauschen des Detektors (Temperatur)
- Rauschuntergrund (dark current)
- Shot noise der Quelle

Was hilft, um Signal-to-noise zu verbessern:
- Kühlen (reduziert thermisches Rauschen)
- Mitteln (SNR skaliert mit sqrt(N))
- Filtern/Bandpass (besonders bei 1/f noise)
- Lock-In-Verstärker

Vermeidung von technischen Störungen (= nicht fundamentale Prozesse):
- große Abstände zu Störquellen
- Einkoppeln von Störsignalen vermeiden (kapazitive, induktive Einkopplung)
  - Twisted Pair (Einstrahlung [auch Abstrahlung] minimieren)
  - BNC-Kabel, Abschirmleitung (low level) erden
  - sternförmig erden (Erdschleifen vermeiden)
  - elektrische/magnetische Abschirmkammern (z.B. Faradayscher Käfig)
  - Mikrofonie-, Schwingungsdämpfung
- Vermeiden von
  - Kontaktpotenzialen
  - Thermospannungen
  - Wirbelströmen
- Batterieversorgung bei Netz- und Messgeräten
- geeignete Messfrequenz wählen (z.B. wegen 1/f-Rauschen)
- zu kleine Ströme vermeiden (nicht nur wegen Schrotrauschen) $arrow.double$ Vorverstärker in die Nähe der Signalquelle
- Niederohmige Signalquellen/Verstärker (wegen Widerstandsrauschen)
- Trafo-Kopplung (fast rauschfreie Verstärkung um bis zu Faktor 100)
- geeignete Anpassung der Nachweiselektronik (bzgl. Dynamik, Bandbreite, Drift, usw.)
- tiefe Temperaturen (wenn möglich - z.B. Radioteleskop Effelsberg: Empfänger He-gekühlt)
- Verringern der Bandbreite (Frequenz-Filter einbauen)

==== Tiefpass-, Hochpass- und Bandpass-Filter

Zum zuvorerwähnten Verringern der Bandbreiten

#image("assets/tiefpass_filter.png")
#image("assets/hochpass_filter.png")
#image("assets/bandpass_filter.png")

==== Lock-In-Verstärker

Ein Lock-In-Verstärker stellt einen extrem schmalbandigen Bandpassfilter dar und verbessert dadurch das Signal-Rausch-Verhältnis. Er misst die Kreuzkorrelationsfunktion zweier elektronischer Signale $x(t)$ und $y(t)$
$ R_(x y)(theta) = limits(lim)_(T -> infinity) 1/(2 T) integral^T_(-T) x(t) dot y(t + theta) dif t, quad "x(t) und y(t) reell" $

Praktische Anwendung:
#image("assets/lock_in_verstaerker_anwendung.png")

Grundkomponenten des Lock-In-Verstärkers:
- Multiplikator - Mischer, Phase Sensitive Detector (PSD): bei analogem Lock-In-Verstärker mit rechteckigem $U_"Ref"$: periodisches Umschalten zwischen $+U_"Sig"$ und $-U_"Sig"$, d.h.(günstigenfalls) pulsierende Gleichspannung
- Integrator - Tiefpass: wirkt als Gleichrichter, aber: Integrationszeit $T < infinity$, bei analogem Lock-In-Verstärker mit RC-Glied: $tau = R C$ - Zeitkonstante, Integrationszeit

Grundschema des Lock-In-Verstärkers:
#image("assets/lock_in_verstaerker_grundschema.png")

Was ist der "Trick":
- es wird die Korrelation des (modulierten) Messsignals mit dem Referenzsignal bestimmt
- Damit tragen nur noch Rauschkomponenten bei, die in einem sehr engen Intervall um die Modulationsfrequenz liegen
- Die Modulationsfrequenz ist (innerhalb technischer Grenzen) frei wählbar, kann also in einen "rauscharmen" Bereich geschoben werden (je höher, desto besser bei 1/f noise)
- Auch die Phasenlage des Signals ist bestimmt $arrow.double$ noise mit ähnlicher Frequenz aber wechselnder Phase mittelt sich raus

Mit guten Lock-In-Verstärkern kann das SNR um bis zu $10^5$ verbessert werden!

== Relevante Altklausurfragen

gibts keine :( 


= Zeitmessung

== Folienwissen

=== Einführung

- Zeit wird als "fließend" wahrgenommen
- Darstellung als 4-dimensionale Raumzeit (Relativitätstheorie)
- Verknüpft mit Kausalität (Ereignishorizont)
- 2. Hauptsatz der Thermodynamik: Ansteigen der Entropie
- Zeitdefiniert über ihre Messmethode (SI Einheit)
- Definition ohne physische Implementierung
- die einzige "universelle Quanten-Einheit"

Messung einer Dauer:
$ Delta t_"mess" = t_"stop" - t_"start" $

==== Zeitmessung in der Wissenschaft

OPERA Kollaboration September 2011:
- Muon-Neutrinos $60.7 "ns"$ schneller als $c$
- "faster-than-light neutrino anomaly"

März 2012: 2 Fehlerquellen identifiziert
- Schlechte Verbindung von GPS-Empfänger und OPERA master clock
- "zu schnelle" $10 "MHz"$ Referenz

Juli 2012
- Abweichung von $c$: 6.5 +/- 15 ns (Null)

März 2013
- Rücktritt OPERA Sprecher Ereditato und physics coordinator Autiero
$arrow.double$ Falsches Messen kann den Job kosten!

Erforderliche Genauigkeit: $~10^(-6)$

$1 "ns" hat(eq) 30 "cm Weglänge!"$

==== Precision vs. Accuracy

#image("assets/precision_vs_accuracy.png")

Optische Atomuhren sind das (mit Abstand!) präziseste Messinstrument derzeit

Größenordnungen von Übergangsfrequenzen: Spektrum des (Wasserstoff) Atoms

- optische Frequenzen: $f ~ 600 "THz" = 6 dot 10^14 "Hz"$ ("grün")
- Spin-Bahn-Wechselwirkung: $6 "THz" 10^(-2)$ Effekt
- Hyperfein-Wechselwirkung: $6 "GHz" 10^(-5)$ Effekt
- Zeeman-Aufspaltung: $6 "MHz" 10^(-8)$ Effekt
- Schwarzkörper-Verschiebung: $10^(-14)$ Effekt
- Gravitationseffekte: $10^(-16)$ (für 1 m Höhenunterschied)
- Gravitationswellen, Variation der fundamentalen Naturkonstanten ... ???

Beste Atomuhr derzeit: $2 dot 10^(-18)$ (nach > 1 Tag Mittelung)

Balmer-Formel: $ h f = R y^* Z^2 [1/n_1^2 - 1/n_2^2] $

=== Funktion einer (passiven) Uhr

#image("assets/oszillator_vs_uhr.png")

Haupt-Element einer jeden Uhr: Ein "Resonator"

#image("assets/resonatorkurve.png")

Beste Uhr:
- höchstmögliche Schwingungsfrequenz ($f$ groß)
- Resonanz so genau als möglich definiert ($Delta f$ klein)
$arrow.double$ Atomuhren!

Die Physik dahinter: getriebener mech. Oszillator (mit Dämpfung)

Was man wissen sollte:
- Asymmetrie der Kurve
- Effekte der Dämpfung auf die Resonanz
  - reduzierte Amplitude
  - erhöhte Breite
  - Verschiebung des Peaks

Wie sieht das bei Atomen aus? $arrow.double$ Streurate

==== Was gibt es überhaupt...? (stark vereinfacht)

- Mechanische Uhren: Genauigkeit: 1s / Tag, Weltrekord NIST: 1s / Jahr
- Quarzuhren: Genauigkeit: 1s / Monat, Weltrekord: 10-12
- Atomuhren: Genauigkeit: 10-14, Weltrekord: 10-18
- Kernuhren?

Zeit ist, was die Uhr anzeigt! \
Implementierung der Zeit über Metrologieinstitute

=== Die globale Atomzeit TAI, Uhrenvergleich

Weltzeit "temps atomique international" (TAI) als Mittelung
- 250 Atomuhren in über 50 Instituten weltweit
- Koordination: BIPM (Bureau International des Poids et Measures) in Paris
- Vergleich der Uhren über GPS und TWSTFT (Two-way satellite Time and Frequency Transfer)
- Abgleich erfolgt alle 5 Tage
- TAI wird monatlich neu veröffentlicht: UTC-UTC(x)
- Forschungsgruppen stellen die Uhren nach
- und so weiter...

#image("assets/atomuhren_schwankungen.png")

==== Quantitativer Uhrenvergleich: Gangunterschied

Gangunterschied (wir nehmen eine "perfekte" Referenzuhr an) (relativer)
$ G = (Delta t_"mess" - Delta t_"ref")/(Delta t_"ref") $
Misst einen "offset" (konstant)

Übertragung auf den Frequenzvergleich...
$ G' = (f_"mess" - f_"ref")/f_"ref" $

ABER: verschiedene Fehlerquellen in einem periodischen Signal möglich:
$ U(t) = [U_0 + epsilon(t)] cos(2pi [f_0 + xi(t)] + phi(t)) $
wobei $epsilon(t)$ die Amplitude, $xi(t)$ die Frequenz und $phi(t)$ die Phase ist $arrow.double$ übliche Größen zur Charakterisierung von Fehlern. \
(Varianz, Standardabweichung) nicht anwendbar!

==== Quantitativer Uhrenvergleich: Allan-Varianz

Nach: David W. Allan, auch "Zweiwert-Varianz"

Die Allan-Varianz ist definiert als die Hälfte des Durchschnitts der Differenzquadrate jeweils zweier aufeinanderfolgender Messwerte der normierten Frequenzabweichung.

$ sigma^2_y(tau) = 1/2 chevron.l (y_(n+1) - y_n)^2 chevron.r "mit" y_n = chevron.l (partial f)/f chevron.r_n $

$y_n$ ist die normierte Frequenzabweichung gemittelt über $n$ Perioden (wobei $f$ ein "perfekter" Frequenzgenerator ist)

#image("assets/allan_varianz.png")
#image("assets/allan_varianz_schizo.png")

=== Cs-Atomuhr, Definition der Sekunde

Gültige Definition seit 1967: \
Eine Sekunde ist das 9 192 631 770-fache der Periodendauer der dem Übergang zwischen den beiden Hyperfeinstrukturniveaus des Grundzustandes von Atomen des Nuklids $""^133"Cs"$ entsprechenden Strahlung.

- "Universelle" Definition (keine physische Implementierung)
- Gebunden an ein spezifisches Atom (wird sich ändern...)
- Cs-Uhren am "Quantenlimit", technische Probleme vernachlässigbar

#image("assets/cs_atomuhr_diagramm.png")

Vorteile von Cs:
- höchste Übergangfrequenz aller Alkali-Atome
- nur ein stabiles Nuklid (133)
- niedriger Dampfdruck (intensiver Strahl bei 100 °C)

==== Das (Cäsium) Atom...ein paar Größenordnungen revisited

Beispiel: Atomphysik, Spektrum des (Wasserstoff) Atoms

- optische Frequenzen: $f ~ 600 "THz" = 6 dot 10^14 "Hz"$ ("grün")
- Spin-Bahn-Wechselwirkung: $6 "THz" 10^(-2)$ Effekt
- *Hyperfein-Wechselwirkung: $6 "GHz" 10^(-5)$ Effekt*
- Zeeman-Aufspaltung: $6 "MHz" 10^(-8)$ Effekt
- Schwarzkörper-Verschiebung: $10^(-14)$ Effekt
- Gravitationseffekte: $10^(-16)$ (für 1 m Höhenunterschied)

#image("assets/cs_atom_hyperfein_aufspaltung.png")

==== Das Cäsium Atom...die Hyperfein-Aufspaltung...Überlagerungen…

Konzepte der Quantenphysik
- nicht-kontinuierliche physikalische Größen
- insbesondere: diskrete Energien
- Schrödingergleichung, Energieeigenwerte
- $E_n = h times f_n arrow.double$ Frequenzmessung!
- Quantenmechnische Überlagerung
- (Verschränkung)
- Kollaps der Wellenfunktion, Rolle des Beobachters
- Heisenbergs Unschärferelation (o.ä.)
- ...

Quantenphysik: Zustandsvektor
#image("assets/bloch_kugel_zustandsvektor.png")

- "Überlagerung" von $arrow.t.filled$ und $arrow.b.filled$
- Zustandsvektor rotiert mit 9.2 GHz
- Geschwindigkeit exakt identisch für alle Cs Atome im Universum (im Prinzip)
- Limitiert durch Atom-Wechselwirkungen mit äußeren Feldern

==== Quanten-Manipulation des Zustandsvektors: Rabi-Oszillationen

#image("assets/rabi_oszillationen.png")

Auf dieser Art Manipulation basiert der "Quantencomputer":
- Zuständen $arrow.t.filled$ und $arrow.b.filled$ entsprechend den klassischen Bits 0 und 1
- Zusätzliche Informationen + "Parallelrechnen" durch Überlagerungen

==== Quanten-Manipulation des Zustandsvektors: Ramsey Sequenz

#image("assets/ramsey_sequenz.png")

Ramsey-Sequenz: Die Rolle des Frequenzgenerators

#image("assets/ramsey_sequenz_rolle_freqgen.png")

Sei die Ramsey-Zeit $T$ fix...

Der Quantenzustand nach der vollen Ramsey-Sequenz hängt an $(omega_0 - omega_L) T eq.triple Delta T$
- immer Zustand $|1chevron.r$, wenn $Delta T = n dot 2pi$
- "Ramsey fringes" beim Ändern der Frequenz $omega_L$
- Abstand der "fringes" $Delta = 2 pi \/ T$

Wechselwirkung mit einer "verstimmten" MW-Frequenz:

Der zweite $pi/2$ Puls realisiert einen vollständingen Zustandstransfer, wenn
$ (omega_L - omega_0) T = 2 pi n, quad n = 0, plus.minus 1, plus.minus 2, ... $

Abstand der Ramsey fringes: $Delta = (2pi)/T$ $arrow.double$ längere Ramsey-Zeit $T$ führt zu engeren (steileren) fringes

#image("assets/ramsey_fringe_abstand.png")

Problem: welches ist der "zentrale" fringe?

"Where bugs become features": die Atome sind nicht alle gleich schnell (thermische Quelle)!

Ramsey Zeit $T$ ist nicht die gleiche für alle Atome...

==== Die Cäsium Atomuhr

#image("assets/caesium_atomuhr_1.png")
#image("assets/caesium_atomuhr_2.png")

beschränkte Wechselwirkungszeit $approx 10 "ms"$ \
Reduziert den Q-Faktor $arrow.double Q approx 1 dot 10^8$
- eine Cs Atomuhr mit einem einzelnen Atom ist schlechter als eine Quarzuhr!
- Man gewinnt über möglichst viele Atome und eine lange Mittelungszeit

Fehlerquellen sind bekannt und "unter Kontrolle":
#image("assets/atomuhr_fehlerquellen.png")

Immer noch das "Arbeitspferd":
- 25 Jahre Arbeit ohne Unterbrechung
- steuert die Funkuhr
- kommerziell erhältlich (80-100 k€)

Allan deviation of CsII beam clock (measured against CsI):
#image("assets/allan_deviation_cs2.png")

==== Die Cäsium Fontäne

Wie erhöhen wir die Flugzeit?
- vertikale Trajektorie, verwende Gravitation
- Wechselwirkungszeit bis zu 1s

Problem: transversale Ausbreitung des Strahls

Lösung:
- Laser Kühlung zu 2 μK (Nobelpreis 1997)
- Beschleunigung über "optische Melasse"
- Optische Zustandsdetektion (einzelne Atome)

#image("assets/caesium_fontaene.png")

=== Optische Atomuhren

...Übergänge im Atom:
#image("assets/cs_atom_uebergaenge.png")

Bisher haben wir uns nur mit MW-Übergängen beschäftigt
$ Q = f_0/(Delta f) = f_0/(1\/tau) $

Wenn $tau$ sich nicht ändert (z.B. 1s): \
$Q$ wächst um einen Faktor > 10.000 für optische Übergänge!

Warum war das bisher nicht möglich? \
Wir brauchen einen "Frequenzgenerator" im optischen Bereich (= Laser)

Lösung: Frequenzkamm

==== Optische Atomuhren: Ionen vs. Atome

#image("assets/optische_atomuhren_ionen_vs_atome.png")

==== Optische Atomuhren: Die Thorium-Uhr

#image("assets/thorium_uhr.png")

=== Anwendungen von Atomuhren

==== GPS

Derzeitige Technologie:
- "thermische" Dampfzellen-MW-Atomuhren
- Rubidium + Cäsium
- GPS und GLONASS aktiv
- Galileo, Beidou, IRNSS im Aufbau
$arrow.double$ Genauigkeit der Lokalisierung: 1 - 10m

Ziel: Lokalisierung auf Zentimeter -- Millimeter
- Autonome Fahrzeuge
- Fracht- Maschinentracking
- ...

Anforderungen:
- bessere Uhren ($10^(-16)$ -- $10^(-18)$)
- robust, klein, leicht, geringer Stromverbrauch, ...

==== relativistische Geodäsie

Potentialdifferenz durch Frequenzvergleich: $dif W = (dif f)/f dot c^2$

$10^(-18)$ entspricht $0.1 "m"^2/"s"^2$ entspricht $1 "cm"$

#image("assets/relativistische_geodaesie.png")

Derzeitige Technologie:
- optische Nivellierung
- Satelliten GRACE, GOCE

Ziel: Fixierung des globalen Geoid auf cm Level
- Dynamiken im Erdkern
- Suche nach Bodenschätzen
- ... 

Anforderungen:
- hochpräzise Uhren ($10^(-18)$)
- transportable Einheiten
- präziser Uhrenvergleich (Glasfaser, GPS)

==== Variation der Fundamentalkonstanten

Mehrere Quanten-Feldtheorien behaupten:
- EM-Wechselwirkung war während Urknall stärker/schwächer
- leichte Änderungen sollten noch heute sichtbar sein
- dies könnte dunkle Masse/Energie erklären
- bisher sehr spekulativ!

Feinstrukturkonstante bestimmt die Zusammensetzung der Elemente:
- Coulomb Abstoßung ist ein Element in der Bindungsenergie der Atomkerne $arrow.double$ Nucleosynthese
- $alpha > 0.1$ würde die Entstehung stabiler Kerne komplett verhindern
- auch minimale Änderungen würden eine Änderung in der Verteilung der Elemente im Universum bedeuten

=== Zeitmessung History

#image("assets/zeitmessung_history.png")

== Relevante Altklausurfragen

gibts keine :( 


= Temperatur

== Folienwissen

=== Was ist Temperatur?

Was wissen wir:
- Objekte unterschiedlicher Temperatur gleichen sich an
- Kompression (bei einem Gas) erhöht die Temperatur
- Erhöhung der Temperatur führt zu Erhöhung von Druck/Volumen
- Temperatur ist offenbar eine innere Eigenschaft
- Eine dritte Größe neben Druck ($p$) und Volumen ($V$) die ein Gas beschreibt
- Aus dem Teilchenmodell für das Gas entspricht ein Angleichen der Temperatur einem Angleich der mittleren kinetischen Energie
- Energiezufuhr $arrow$ höhere Temperatur

=== Temperatur -- ideales Gas

Ideales Gas $arrow$ Temperatur ist nur kinetische Energie!
- Nur die mittlere Geschwindigkeit ist relevant
- Berechnung aus der Maxwell-Boltzmann-Verteilung
- Quadratisch gemittelte Geschwindigkeit ist nur von Temperatur und Masse abhängig!

=== Temperatur -- Definition

- Definition über die thermische Energie
- Nullpunkt ergibt sich daraus automatisch (0 Energie bedeutet 0K)
- Verknüpfung mit Celsius fixiert: $t_"Celsius" = T - T_0, quad T_0 = 273.15"K"$
- "Skalierung" über $k$

==== Offizielle Definition

The Kelvin, symbol K, is the SI unit of thermodynamic temperature. It is defined by taking the fixed numerical value of the Boltzmann constant $k$ to be $1.380649 dot 10^(-23)$ when expressed in the unit $"J" "K"^(-1)$, which is equal to $"kg" "m"^2 "s"^(-2) "K"^(-1)$, where the kilogram, metre and second are defined in terms of $h$, $c$ and $Delta nu_"Cs"$.

Kurz gefasst: Einer thermische Energie von $k T$ kann durch die Festlegung von $k$ eine Temperatur in Kelvin zugeordnet werden.

=== Interpretation

Das Erklärungsmodell über das ideale Gas bricht im Alltag zusammen (ist aber gültig!)
- Wasserdampf ($373.15"K"$) bewegt sich im Mittel mit $2500 "km"/"h"$
- Energiezufuhr erhöht die Temperatur? Nicht beim Phasenübergang!

#image("assets/temperatur_phasenuebergaenge.png")

Wenn ich mit $12 "km"/"h"$ laufe wären das $1025 "K"$! \
⇒ Thermische Energie $eq.not$ absolute Temperatur!

Beeinflusst durch Stöße, potentielle Energie, Schwingungen, ...

=== Realisierung

Primäre Thermometer: Zusammenhang zwischen Messwert und Temperatur ist explizit bekannt bzw. berechenbar mit der nötigen Genauigkeit. Meist über Gase: 
$ p V = n R T = N k_B T $

Arten von Thermometern:
/ CVGT: Constant Volume Gas Thermometer
/ RIGT: Refractive Index Gas Thermometer
/ DCGT: Dielectric Constant Gas Thermometer
/ AGT: Acoustic Gas Thermometer
... Strahlungsthermometer, Doppler Broadening Thermometer, Coulomb Blockade Thermometer

==== Dielectric Constant Gas Thermometer

Clausius-Mossotti-Gleichung verknüpft relative Dielektrizitätskonstante $epsilon_r$ mit der elektrischen Polarisierbarkeit $alpha_0$:
$ (epsilon_r - 1)/(epsilon_r + 2) = N/V alpha_0/(3 epsilon_0) $

Im idealen Gas gilt $N/V = (k_B T)/p$und mit $epsilon_r epsilon_0 = epsilon$ und der Näherung $e_r + 2 approx 3$ gilt:
$ p = (k_B T (epsilon - epsilon_0))/alpha_0 $

- Messung der Druckabhängigkeit von $epsilon$
- Festgelegte Temperatur: Triplepunkt von Wasser
- $alpha_0$ von $""^4"He"$ aus QED bekannt
- Berücksichtigung der Abweichung von idealem Gas durch Virialgleichungen (Erweiterung)

#image("assets/dielectric_constant_gas_thermometer.png")

==== Acoustic Gas Thermometer

- Mittlere quadratische Geschwindigkeit ↔ Schallgeschwindigkeit $u_0$
$ v^2 = 3/gamma_0 u_0^2; quad gamma_0 = limits(lim)_(p arrow 0) C_p/C_v $

- Temperatur ↔ $k_B T$
$ 1/2 m v^2 = 3/2 k_B T $
$ k = (M u_0^2)/(gamma_0 N_A T) $

Für monoatomische Gase gilt $gamma_0 = 3/5$. D.h. die Bestimmung von $k$ erfolgt über die Messung von:
- $M$ (Isotopie!)
- $u_0$
Bei $T$ von Triplepunkt von Wasser.

Aufbau:
- Sphärisch oder Quasisphärischer Resonator
- Argon oder Helium als Gas
- Bestimmung des Volumens über Mikrowellen-Resonanz (thermische Stabilität!)
- Bestimmung der akkustischen Resonanz für $u_0$

=== Messmethoden

- Realisierung dient zur Messung von $k_B$
- Nach der Festlegung können andere Methoden zur Bestimmung von $T$ genutzt werden:
  - Kapillarthermometer und Bimetallthermometer nutzen Ausdehnung
  - Thermoelemente nutzen Seebeckeffekt
  - Pyrometer (Strahlungsthermometer) nutzen (Infrarot)Strahlung
  ⇒ Spezifische Methoden für spezifische Anwendungen

=== Spezialfälle: Tiefe Temperaturen

- Grundsätzliches Problem bei tiefen Temperaturen (mK):
  - Berührungslosigkeit
  - Stark isolierte Systeme
  - Messung kann Temperatur verändern
  - Praktisch nur Festkörper
⇒ Nuclear Orientation Thermometry

=== Nuclear Orientation Thermometry

- Gammastrahlung wird von angeregten Kernen emittiert
- Bei Kernen mit Spin $eq.not 0$ ist die Emission anisotrop (Multipolverteilung)
- Bei "normalen" Temperaturen sind aber die Spins der einzelnen Kerne nicht ausgerichtet
- Im thermischen Equilibrium können die Spins aufgrund der (wenigen) möglichen Besetzungszustände angeordnet werden
⇒ Bei sehr niedrigen Temperaturen wird die Anisotropie $prop T$

Anisotropie der Gammastrahlung:
$ W(theta) = sum^(lambda_max)_(lambda = 0) B_lambda(I) U_lambda A_lambda Q_lambda P_lambda (cos(theta)) $

- $U_lambda, A_lambda$: Koeffizienten abhängig vom Zerfallsschema (const.)
- $P_lambda$: Legendre Polynome, beschreiben die Winkelabhängigkeit
- $Q_lambda$: Korrektur für Detektor
- $B_lambda (I)$: Ausrichtungsparameter (Spin-abhängig)

$ B_lambda (I,T) = (sum_m (-1)^(I-m))/(sum_m exp(-E_m/(k_B T))) [(2 lambda + 1) (2 I + 1)]^(1/2) mat(I, I, lambda; m, -m, 0) exp(-E_m/(k_B T)) $

- Energie $E_m$ der $m$ können berechnet/gemessen werden
⇒ Berechnung der $B_lambda (T)$ \
⇒ Messung von $W(theta)$ liefert $T$

==== Nuclear Orientation Thermometry -- praktisch

- Kobalt-Einkristall
- Dotiert mit $""^60"Co"$
- Emission von 2 Photonen ($1173$ und $1332 "keV"$)
- Messung der Gamma-Intensität parallel zur Kernspinachse (Kristall!)
- Intensität $prop T$
- $[1.5, 50] "mK"$

=== Spezialfälle: Even colder!

Nukleares Suszeptibilitätsthermometer
- $["µK", "mK"]$!
- Messung mit Nuclear Magnetic Resonance (NMR)
- Probe in homogenem Feld einer Spule
- Zweite Spule gibt starken Magnetimpuls im rechten Winkel
- Nukleare Dipole relaxieren zurück in ursprüngliche Orientierung
- Relaxation liefert Spannung (S) in Anregungsspule $prop$ Suszeptibilität
- $T_2/T_1 = S_1/S_2$ Kalibrierung notwendig!

== Relevante Altklausurfragen

*Nennen Sie mindestens drei verschiedene Methoden der Temperaturmessung und das jeweils verwendete physikalische Prinzip.*

- Widerstandsthermometer: El. Widerstand ändert sich mit $T$
- Thermoelement: Seebeck-Effekt, Spannungsdifferenz zweier verschiedener Metalle
- Strahlungspyrometer: Planck'sches Strahlungsgesetz / Wien'sches Verschiebungsgesetz
- Kapillarthermometer: Thermische Ausdehnung von Flüssigkeiten
- Gasthermometer: Ideales Gasgesetz $p V = N k_B T$

*Wie messen Sie tiefe Temperaturen unter 50 K?*

- Nuclear Orientation Thermometry $arrow.double$ [1.5,50] mK
  - Kobalt-Einkristall dotiert mit $""^60"Co"$
  - Anisotropie der Gammastrahlung $prop T$
  - Messung der Gamma-Intensität parallel zur Kernspinachse
- Nukleares Suszeptibilitätsthermometer $arrow.double$ [μK,mK]
  - NMR-basiert, Relaxation nuklearer Dipole $prop$ Suszeptibilität

*Wie messen Sie hohe Temperaturen über 1500 K?*

- Strahlungspyrometer (berührungslos!)
  - Gesamtstrahlungspyrometer: integriert über alle Wellenlängen $arrow.double$ Stefan-Boltzmann: $P prop T^4$
  - Teilstrahlungspyrometer: misst bestimmten Wellenlängenbereich $arrow.double$ Wien'sches Verschiebungsgesetz $lambda_"max" prop 1\/T$
  - Anwendungsbereich: $> 600"K"$ bis zu vielen tausend K

*Wie ist der Zusammenhang zwischen elektrischem Widerstand und Temperatur in einem PlatinWiderstandsthermometer?*

Zusammenhang:
$ R(T) = R_0 (1 + A (T - T_0) + B (T - T_0)^2 + ...) $
- Widerstand von Metallen steigt (näherungsweise linear) mit $T$

*Welcher systematische Fehler ist beim Widerstandsthermometer zu berücksichtigen?*

- Messstrom erwärmt den Widerstand selbst $arrow.double P = I^2 R arrow.double Delta T$
- Korrektur: möglichst kleinen Messstrom wählen, 4-Leiter-Messung

*Thermoelemente: Was ist die Ursache des Seebeckeffekts?*

- Elektronen diffundieren von der heißen zur kalten Seite
- Unterschiedlich stark für zwei verschiedene Metalle
- $arrow.double$ Spannungsdifferenz entsteht

*Skizzieren und erklären Sie den Aufbau eines Thermoelements und wie damit die Temperatur gemessen werden kann. Welche elektrische Größe wird gemessen? Wie ist der funktionale Zusammenhang mit der Temperatur? In welchem Temperaturbereich werden Thermoelemente angewendet?*

Skizze:
#image("assets/thermoelement.svg")

- Zwei verschiedene Metalldrähte an Messstelle verbunden
- Andere Enden (Referenzstelle, bekannte $T$) bleiben getrennt
- Gemessene Größe: Thermospannung $U_"th"$
- Funktionaler Zusammenhang: $U_"th" = sigma dot Delta T$
- Anwendungsbereich: bis einige hundert K (bzw. -200 bis +1700°C je nach Typ)

*Erklären Sie Gesamtstrahlungspyrometer und Teilstrahlungspyrometer. In welchem
Temperaturbereich werden sie eingesetzt?*

Gesamtstrahlungspyrometer:
- Erfasst die gesamte emittierte Strahlung über alle Wellenlängen
- Nutzt Stefan-Boltzmann-Gesetz: $P = epsilon sigma T^4$
- Anwendungsbereich: $gt.eq 600"K"$

Teilstrahlungspyrometer:
- Erfasst nur einen bestimmten Wellenlängenbereich
- Nutzt Planck'sches Strahlungsgesetz / Wien'sches Verschiebungsgesetz: $lambda_"max" = b\/T$
- Vorteil: Wellenlänge wählbar $arrow.double$ gezielt auf Emissionsmaximum der Probe abstimmbar
- Anwendungsbereich: $gt.eq 700"K"$

Gemeinsame Eigenschaften:
- Berührungslose Messung $arrow.double$ ideal für sehr hohe Temperaturen ($> 1500"K"$)
- Systematischer Fehler: Emissionsgrad $epsilon<1$ (kein idealer schwarzer Körper) muss bekannt sein

*Wie funktioniert ein Gasthermometer und welches physikalische Gesetz wird genutzt? Auf welche physikalische Größe wird die Temperatur abgebildet? Welche absolute Genauigkeit wird erreicht?*

- Bildet $T$ auf Druck $p$ ab (bei konstantem Volumen: CVGT)
- Physikalisches Gesetz: $p V = N k_B T$ (ideales Gasgesetz)
- Reales Gas: Korrektur durch Virialgleichungen
- Genauigkeit: Primärthermometer, MikroKelvin-Bereich möglich

*Zeichnen Sie den funktionalen Zusammenhang zwischen der jeweils genutzten elektrischen Messgröße und der absoluten Temperatur im Bereich 0-300 K für a) ein GermaniumWiderstandthermometer, b) Platin-Widerstandthermometer und c) ein Thermoelement (AuFe-CrNi). Welches ist im Bereich unter 100 K am empfindlichsten?*

#image("assets/temperaturwiderstaende.png")

Germanium-Widerstandsthermometer ist unter 100 K am empfindlichsten, Widerstand steigt bei tiefen $T$ stark an

= Stoffmenge

== Folienwissen

=== Einführung

- Einheit der Stoffmenge: 1 Mol [1 mol]
- Verbindung atomare und makroskopische Eigenschaften
- Enge Verknüpfung mit Masse

Ein Beispiel:
- Ein Dutzend sind 12 "Stück"
- 12 Donuts sind ein Dutzend Donuts
- 12 Soldaten sind ein Dirty Dozen
- 12 Studierende sind eine Lerngruppe

=== Stoffmenge -- Eigenschaften

Ein Dutzend ist eine Menge von 12 gleichartigen Objekten
- Wieviele Dutzend Studierende sind heute im Hörsaal?
- Wieviele Dutzend Duplo sind in einer Verpackungseinheit? (1.5)
- Wenn eine Verpackungseinheit 327 g wiegt, was wiegt dann ein Dutzend? ($327/1.5=218$)

=== Stoffmenge -- Verhältnisse

- Um aus "einfachen Studierenden" "motivierte Studierende" zu machen, braucht es je zwei Duplo 
- Wir haben $x$ Dutzend Studierende im Hörsaal, wieviele Dutzend Duplo brauchen wir? ($2x$)
⇒ Die jeweiligen und genauen Massen sind egal! \
⇒ Das Verhältnis ($1:2$) ist wesentlich!

=== Stoffmenge -- jetzt im Ernst!

$ "Cu""O" + "H"_2"SO"_4 arrows.lr "Cu""SO"_4 + "H"_2"O" $
$ 79.545"g"/"mol" + 98.079"g"/"mol" arrows.lr 159.609"g"/"mol" + 18.01528 "g"/"mol" $
$ 1 "mol" + 1 "mol" arrows.lr 1 "mol" + 1 "mol" $

ABER:
$ 2"H"_2"O" arrows.lr 2"H"_2 + "O"_2 $
$ 2 dot 18.01528 "g"/"mol" arrows.lr 2 dot 2.01588 "g"/"mol" + 31.9988 "g"/"mol" $
$ 2 "mol" arrows.lr 2 "mol" + 1 "mol" $

=== Definition

The mole, symbol mol, is the SI unit of amount of substance. One mole contains exactly $6.02214076 dot 10^23$ elementary entities. This number is the fixed numerical value of the Avogadro constant, $N_A$, when expressed in the unit $"mol"^(-1)$ and is called the Avogadro number.

Kurz gefasst: $1 "mol"$ sind $6.02214076 dot 10^23$ Teilchen (ein Chemiker-Dutzend)

=== Rechenbeispiel

Wir wollen $4"g"$ Kupfersulfat herstellen. Wieviel Schwefelsäure und wieviel Kupferoxid brauchen wir dafür?

$ "Cu""O" + "H"_2"SO"_4 arrows.lr "Cu""SO"_4 + "H"_2"O" $
- $1"g" "Cu""SO"_4$: Molare Masse ist $159.609"g"/"mol"$, $4"g"$ sind dann $2.506 dot 10^(-3)"mol"$
- Verhältnis $"Cu""O":"H"_2"SO"_4:"Cu""SO"_4$: 1:1:1
- $"Cu""O"$: $2.506 dot 10^(-3)"mol" "Cu""O"$ sind $1.993"g"$
- $"H"_2"SO"_4$: $2.506 dot 10^(-3)"mol" "H"_2"SO"_4$ sind $2.458"g"$
- Rest?: $1.993"g" + 2.458"g" = 4.451"g"$
- Wasser: $2.506 dot 10^(-3)"mol" "H"_2"O"$ sind $0.451"g"$

=== Avogadro-Projekt

Avogadro-Projekt zur Realisierung des Kilogramms

Idee: Avogadro-Konstante verknüpft Masse mit Teilchenzahl (kann über Volumen und Dichte realisiert werden)
$ N_A = (M V n)/m $
mit Masse $m$, Volumen $V$, Dichte $n$, molare Masse $M$.

==== Realisierung

- Einkristall aus Silizium (angereichertes $""^28"Si"$)
- Einkristall bedeutet bekannte Zahl Atome pro Einheitszelle ($8$)
- Bestimmung des Gesamtvolumens
- Quotient mit Volumen der Einheitszelle
- $N = (8 V_S)/(a(""^28"Si")^3)$

==== Realisierung -- Labormaßstab

- Avogadro Projekt hat $N_A$ festgelegt
- Bestimmung von Stoffmengen im Labor meist über:
  - Wägung (Voraussetzung sind bekannte Molmassen)
  - Gasgleichung $p V = n R T$ [1 + B(T)n/V + ... ]
  - Elektrolyse $N = Q/(z e)$

=== Beispiele

==== kleinste Stoffmengen

- Atome/Ionen in Falle fangen
- Bestrahlung/Anregung mit Laser
- Messung des emmittierten Lichts $I prop N$

#image("assets/atom_in_falle.png")

==== Massenspektroskopie

- Probe wird atomisiert und ionisiert
- Beschleunigung der Ionen in elektrischem Feld
- Separation der Ionen nach $m/q$
- Messung des Stroms beim Auftreffen in einem Faraday Cup

#image("assets/massenspektroskopie.png")

== Relevante Altklausurfragen

gibts keine :( 


= Lichtmenge

== Folienwissen

=== Einführung Lichtstärke

- Helligkeit messen
- Ist meine Lichtquelle heller als deine?
- Relevant für Menschen!
⇒ Berücksichtigung von Auge \
⇒ 1 Kerze ist Grundeinheit!

=== Radiometrisch vs photometrisch

- Radiometrische Messung als Energie/Sekunde (Watt)
- Lässt aber photometrische Wirkung (Frequenz, Empfindlichkeit des Auges) unberücksichtigt
- Verknüpfung über frequenzabhängige Faktoren:
- $phi.alt_"photo" = phi.alt_"radio" V(nu)$

=== Definition

Was braucht die Definition?
- Verknüpfung von radiometrischem Wert (W) mit photometrischem Wert (lm)
- Verknüfung ist aber frequenzabhängig!
- Frequenzabhängigkeit ist aber Normierung! (im Sinne einer Norm)
  ⇒ Festlegung einer Frequenz auf die Bezug genommen wird
- $nu = 540 dot 10^12"Hz"$ (entspricht "grün" in Normalluft, $555 "nm"$)

The candela, symbol cd, is the SI unit of luminous intensity in a given direction. It is defined by taking the fixed numerical value of the luminous efficacy of monochromatic radiation of frequency $540 dot 10^12, "Hz", "K"_"cd"$, to be $683$ when expressed in the unit $"lm" "W"^(-1)$, or $"cd" "sr" "kg"^(-1) "m"^(-2) "s"^3$, where the kilogram, metre and second are defined in terms of $h$, $c$ and $Delta nu_"Cs"$.

Kurz gefasst: Bei $540 dot 10^12"Hz"$ wird die Leuchtstärke mit $683 "lm"\/"W"$ festgelegt. Candele (cd) sind als Lumen (lm) pro Steradiant (sr) definiert.

==== Historisches

- 1 cd entspricht der Leuchtkraft einer Kerze
- ca. 1890 Definition der Normalkerze oder Hefnerkerze (Kerzentyp, Dochtbreite, Flammenhöhe, Betrachtungsrichtung)
- 1949 Definition über Schwarzkörperstrahlung (erstarrendes Platin bei gegebenem Druck und Beobachtungrichtung)
- 1979 Definition über radiometrische Strahlungsmessung: $K(555"nm") = 683 "lm"\/"W"$
- aktuelle Definition ist nur Angleichung in der Formulierung

=== Nutzung

Messung/Nutzung ist mehrstufig:
1. Radiometrische Messung der Strahlungsleistung (W)
2. Tabelle der normierten Faktoren für die Empfindlichkeit nutzen und pro Wellenlänge berechnen (Spektrum!)
3. Berücksichtigung des Betrachtungswinkels

== Relevante Altklausurfragen

gibts keine :( 


= Länge

== Folienwissen

=== Geschichte der Länge

um 3000 v. Chr. Ersten Überlieferungen nach stammt das Längenmass aus Ägypten. Grundmaß für die Längenmessung war die königliche Elle, die Länge des Arms vom Ellbogen bis zur Spitze des Mittelfingers. Sie wurde beim Bau von Gebäuden und Monumenten sowie zur Landvermessung verwendet.

2000 v. Chr. Auf einem Kupferstab "EIle von Nippur" mit einer Länge von $1103.5 "mm"$ sind Längenmaße fixiert: Elle, Ziegel, Fuß, Hand und Fingerbreite. Hier sind $1103.5 "mm"$ in 4 Fuß = 16 Hand = 64 Fingerbreiten eingeteilt. Die Griechen übernehmen das Längenmaß von den Ägyptern.

um 25 v. Chr. Die Römer führten zur Messung der großen Entfernungen in ihrem Straßennetz die Meile als neues Längenmaß hinzu.

807 Das Messwesen wird von Karl der Große vereinheitlicht, z.B. durch die Einheit Fuß (mit seiner Schuhgröße). Zahlreiche willkürliche Änderungen durch die Feudalherren bewirken in der Folgezeit, dass jedes Herzogtum seine eigenes Maße hat. Im Jahre 1101 führt Heinrich I. von England die Längeneinheit Yard (Abstand von seiner Nasenspitze bis zum Daumen seines ausgestreckten Armes) und Inch (Breite seines Daumens) ein. Der Mathematiker J. Kölbel schlägt an Stelle eines Körpermaßes ein sogenanntes Naturmaß vor: "16 Männer groß und klein", die nach einer Messe der Reihe nach aus der Kirche kommen, stellen ihre Füße hintereinander. Der sechzehnte Teil der Gesamtlänge soll dann ein Fuß sein.

1792 beschließt eine aus Mitgliedern der Französischen Akademie der Wissenschaften bestehende Kommission den 40millionsten Teil des durch Paris gehenden Längengrads als Maßeinheit festzusetzen.

1793 erließ Ludwig XVI. von Frankreich ein Dekret, in dem die neue Längeneinheit 1 Meter als der zehnmillionenste Teil des Erdmeridianquadranten definiert wird. Dies ist die Geburtsstunde des Metermaßes. Die neue Längeneinheit wurde durch einen aus Platin bestehenden Stab verkörpert, dessen Länge genau 1 Meter betrug.

1799 wird der Prototyp des Meters in Form eines Platinstabes hergestellt.

1831 schlägt Carl Friedrich Gauß ein absolutes Einheitensystem vor mit den Einheiten Millimeter, Milligramm und Sekunde vor.

1875 wird ein internationales Büro für Maße und Gewichte (BPIM) gegründet.

1889 werden die Prototypen für Meter und Kilogramm durch das BPIM festgelegt.

1960 Die 11. Generalkonferenz für Maße und Gewichte beschließt folgende Definition: 1 Meter ist das 1650763,73-fache der Vakuumwellenlänge des orangefarbenen Lichts, das von Atomen des Krypton-Isotops Kr86 beim Übergang vom $5d^5$-Zustand in den $2p^10$-Zustand ausgesendet wird.

Seit 1983: Ein Meter ist definiert als die Länge der Strecke, die das Licht im Vakuum während der Dauer von 1/299 792 458 Sekunde zurücklegt. Dabei ist $c = 299 792 458 "m"\/"s"$ als universelle Konstante definiert. \
$arrow.double$ Rückführung auf eine Zeitmessung

...in der Praxis: $1 "m" = 3.335 "ns"$ oder ~1 foot in 1 ns (Achtung! das gilt in Vakuum!) 

...nur für große Strecken praktikabel, z.B. CERN-Gran Sasso

=== Methoden der Längenmessung

#rotate(90deg, image("assets/methoden_laengenmessung.png"), reflow: true)

=== Direkte Längenmessung

Vergleich mit einem Maßstab ähnlicher Dimension, kleinste Dimension Mikrometer, größte Dimension ca. 100m

Umwandlung in ein elektrisches Signal? der "Längengeber"

==== Widerstandsgeber

Widerstandsgeber: Abgriff eines Potentiometers wird entlang zu messender Länge $l$ verschoben

$ U(l)/U_0 = R/R_0 = l/l_0 $

#image("assets/potentiometer.png")

Ausführungen:
- Widerstandsdraht oder Metallfilm:
  - Vorteil: $R$ kontinuierlich
  - Nachteile: wird durch Abschleifung nichtlinear
- Feindrahtpotentiometer:
  - viele Drahtwindungen mit Schleifer
  - Vorteile: kaum Einfluss der Abschleifung
  - Nachteil: $R$ diskret, da Abgriff nur nach jeweils einer Windung (typisch 500-1000)

==== Induktive Weggeber

Prinzip: Änderung der Induktivität $L$ einer Spule, die Teil eines elektrischen Schwingkreises ist, wenn sich ein ferromagnetischer Kern in der Spule verschiebt. Aus Veränderung der Resonanzfrequenz des Schwingkreises, oder der Spannungsamplitude bei fester Frequenz, kann auf Veränderung der Position des Kerns und damit des Weges geschlossen werden.

$ L = (mu_0 mu_r N^2 A)/l $

#image("assets/induktive_weggeber.png")

Messwege: mm - cm  \
Auflösung: ca. $10^(-4)$ des Messwegs

Induktive Sensoren: \
Spule mit fixem Kern, aber offen. Keine Präzisionsmessung. Nur als Annäherungsschalter, oder Zähler ferromagnetischer Objekte (Verkehrszählung)

==== Kapazitive Weggeber

Änderung der Kapazität möglich durch Änderung des Plattenabstandes $d$, der Fläche $A$, und der Dielektrizitätskonstante $epsilon$.

$ C = epsilon A/d $

1. Änderung des Plattenabstandes $d$ (nur sehr kleine Wege möglich)

Veränderung von $d$ um $x$ (nur für kleine $x$, lineare Änderung von $C$):
$ (C(d+x))/(C(d)) = d/(d+x) = [1/(1 + x/d)]_(x<<d) approx 1 - x/d $

#image("assets/laengenmessung_durch_plattenabstand.png")

Wenn in elektrischem Kreis mit Wechselstrom fester Amplitude und Frequenz, ist die Spannung über den Kondensator:
$ U(x) = I dot Z = I dot 1/(j omega C (d+x)) = I dot (d+x)/(j omega epsilon A) $

Die Amplitude der Wechselspannung $U$ ist nun linear in $x$.

2. Änderung der Plattenfläche $A$ (bis cm möglich)

Platten mit Länge $a$, Breite $b$. Eine wird entlang Länge um $x$ verschoben. Abstand $d$ bleibt gleich. (auch Anordnungen mit drehbaren Platten zur Winkelmessung möglich)

#image("assets/laengenmessung_durch_plattenflaeche.png")

Wenn Randeffekte vernachlässigbar (gilt wenn $d$ sehr klein gegen die anderen Dimensionen):
$ C(x) = epsilon (x b)/d, quad C_0 = epsilon (a b)/d, quad C(x)/C(a) = C(x)/C_0 = x/a $

Kapazitätsänderung proportional der Verschiebung $x$

==== Optisch-digitale Längenmessung

Strichspur und Codespurscheiben

Am einfachsten: Abzählen von äquidistanten Strichen mit Fotodiode, während diese entlang Strichskala bewegt wird. Richtung und 0-Punkt nicht erkennbar.

#image("assets/strichcode.png")

Besser: 2 (oder mehr) Fotodioden, und unterschiedliche Strichstärken bzw. Abfolgen 
- Absolutposition errechenbar
- Codespurscheibe: 10 Spuren mit jeweils Verdoppelung der Striche erlaubt eine Umdrehung in $2^10 = 1024$ Winkel aufzulösen

#image("assets/codespurscheibe.png")

Begrenzung dieser Systeme: Beugungseffekte des Lichtes an sehr dünnen bzw. engen Strichen

=== Laufzeitmessung

Längenmessung = Zeitmessung, Beispiel Gewitter:

- Donner breitet sich mit Schallgeschwindigkeit $v approx 343 "m"/"s"$ (ca. 3 s für 1 km) aus.
- Licht breitet sich mit Lichtgeschwindigkeit $c approx 300000 "km"/"s"$ (3 μs für 1 km) aus.

Länge (Abstand: Blitz - Beobachter):
$ l approx v ["m"\/"s"] dot t ["s"] approx 0.343 ["km"\/"s"] dot t ["s"] = t ["s"] \/ 2.91 $

Daraus folgt die bekannte Faustregel: die Zeit t zwischen Blitz und Donner (angegeben in Sekunden) geteilt durch 3 ergibt den Abstand zum Gewitter in Kilometer.

Für große Längen: Längenmessung erfolgt durch Zeitmessung

==== Anwendungsbereiche

- Astronomie: $~1$ Lichtsekunde (entspricht ca. dem Abstand Erde-Mond (400 000 km)) bis zu mehr als 14 Milliarden Lichtjahre (Entfernungen im Weltall)
- Satellitennavigation: $~1"m" ... ~ 10000"km"$
- Geodäsie: $~1"m" ... ~ 100"km"$
- Technik (Flugzeug-, Automobil-, Maschinenbau): $~1"nm" ... ~ 100"m"$
- Optik: $~0.1"nm" ... ~ 1"mm"$
- Halbleiterelektronik: $~1"nm" ... ~ 1"mm"$
- Atomphysik: $~1"fm" ... ~ 1"nm"$

Laufzeitmessung basiert auf dem Zusammenhang zwischen Länge $l$, Geschwindigkeit $v$ und Zeit $t$: $l = v dot t$

Für Messung wird hauptsächlich elektromagnetische Strahlung benutzt (z.B. Laserlicht, Radiowellen, ...), die sich mit Lichtgeschwindigkeit ($v = c$) ausbreitet.

Beispiel: lunar laser ranging

- 532 nm pulslaser (90 ps, 100 mJ, 3e18 Photonen)
- aufgeweitet auf 350 cm Teleskop
- Ausgeleuchtete Fläche am Mond: 70 km2 (Luft-Turbulenzen)
- wenige Photonen werden auf dem Rückweg detektiert
- Pulsrate 10 Hz
- Genauigkeit begrenzt auf \~1 cm (Schrägstellung der Reflektoren)
- Bestimmung der Position der Bodenstationen: Reflektoren an allen Galileo-Satelliten
- Mondentfernung nimmt pro Jahr um 4 cm zu (Gezeitenreibung)
- Mehrere Bodenstationen auf denselben Reflektor: Bestimmung der Kontinentaldrift 

Beispiel: GPS

- Die Erde wird ständig von mindestens 24 GPS Satelliten umkreist, deren Position zu jedem Zeitpunkt sehr genau bekannt ist
- Satelliten senden ihre Position und genaue Zeit als kodierte Radiosignale aus (jeder Satellit hat eigene Atomuhren, alle Atomuhren sind synchronisiert)
- Empfänger (GPS-Gerät auf der Erde) empfängt die Signale von den Satelliten. Aus der Laufzeit des Signals lässt sich der Abstand vom Satelliten bestimmen. Der Empfänger befindet sich auf einer Sphäre (oder in einem Kreuzpunkt von mehreren Sphären), die einen bestimmtem Abstand zu den Satelliten haben
- Empfängerposition ergibt sich aus Laufzeitdifferenzen, die aus 4 Parametern ausgerechnet werden (3 Raumkoordinaten x, y, z, die den Kreuzungspunkt von 3 Umkreissphären bestimmen, und Zeitdifferenz). Es werden deswegen Signale aus 4 Satelliten benötigt, um die Position zu bestimmen

#image("assets/laufzeitmessung_gps.png")

Weitere Beispiele:
- Echolot, Sonar (Schall)
- Radar
- LIDAR (light detection and ranging)
- Laserpistole (über Pulsrate)

Erreichbare Genauigkeit begrenzt durch:
- $1 "m" = 3.335 "ns" arrow.double$ kurze Pulse/Flanken benötigt
- Detektoren und Elektronik mit >GHz Bandbreite
- Laufzeit hängt am Brechungsindex des Mediums
$arrow.double$ meist begrenzt auf mm Bereich

=== Triangulation

Zutaten:
- bekannter Abstand zweier Messbunkte (Basislänge $b$)
- 2 Winkelmessungen $alpha$ und $beta$

$ b/(sin(180° - alpha - beta)) = overline(B P)/sin(alpha) = overline(A P)/sin(beta) $

#image("assets/triangulation.png")

offensichtliche Nachteile:
- erfordert freie Sicht
- Reduktion auf ein ebenes Problem

Noch immer das vorherrschende Messverfahren in der Geodäsie

Konstruktion eines "Dreiecksnetzes":
- Geodätische Festpunkte (Bergkuppen oder Türme)
- Winkelmessungen erzeugen ein (meist überbestimmtes) Netzwerk
- Netz 1. Ordnung: 25 - 50 km Abstand
- \2. Ordnung 10 km ... 5. Ordnung < 1 km
- Absolut-Positionen noch durch Astronomische Verfahren bestimmt (zuerst Fotos vor Himmelshintergrund, dann Satellitenfotos, heute GPS)
- zusätzlich wird ein Mathematisches Modell zur "Erdfigur" benötigt
- Genauigkeit in der Ebene 1 cm (Höhe bis zu 5 cm, Anschlussproblem)

==== Triangulation ... in your pocket

#rotate(90deg, image("assets/triangulation_in_your_pocket.png"), reflow: true)

- oversampling des spots auf dem Detektor erhöht die Genauigkeit
- Genauigkeit begrenzt durch Abstand Laserdiode - Sensorarray
- Genauigkeit nimmt mit Abstand ab ($tan(alpha) ~ alpha^4$)
- Messbereich bis 50 m, Genauigkeit \~1 mm (besser bei kleinen Abständen)

=== Interferometrie

Beispiel: Michelson-Interferometer

#image("assets/michelson_interferometer.png")

- der Detektor misst bei Verschiebung des Verschiebespiegels abwechselnd keine oder maximale Intensität
- Die Strecke, die der Verschiebespiegel zwischen zwei Intensitätsmaxima(minima) zurücklegt entspricht der halben Wellenlänge: (Hin-Rückweg verdoppelt die Wegstrecke)
- $Delta d = lambda/2$ (Achtung auch hier: in Vakuum!)
- Wegstrecken werden als Vielfache von $lambda/2$ gemessen (typisch $~0.3 "µm"$)
$arrow.double$ genaue Kenntnis der Wellenlänge erforderlich!

Praktische Implementierung: 50 m Interferometer am BEV
- Bestimmung der Start/Endpunkte mit Mikroskop ($<0.02 "mm"$)
- Zählung von Interferenzmaxima entlang der Fahrstrecke
- Genauigkeit : $max[0.02 "mm", 5 dot 10^(-6) "L"]$
- Erfordert:
  - Temperaturstabilisierung des Raumes auf 1°C
  - Feuchte +/- 5%
  - (Luftdruck über post-selection)

Nachteil der Methode: Strecke muss abgefahren werden

#image("assets/interferometer_bev.png")

...was ist, wenn man die Strecke nicht abfahren kann/möchte?

Kombination von Interferometrie und Laufzeitmessung:
- Laserfrequenz wird kontinuierlich verschoben
- ausgesandtes und reflektiertes Licht haben nicht dieselbe Frequenz
- Das Interferenzsignal ist periodisch moduliert mit der Differenzfrequenz, die Proportional zur Länge ist
- (Erfordert genaue Kontrolle und Kenntnis des Frequenzhubs)

Sehr hohe Messgenauigkeit (1 µm) aber begrenzte Reichweite (< 20 m) und sehr aufwändig \
$arrow.double$ nur bei kritischen industriellen Prozessen (Präzisionsfräsen, CNC bei iPhone 200 µm)

Interferometrie in der Wissenschaft ... LIGO

Laser Interferometer Gravitational-wave Observatory (Washington und Louisiana)
#image("assets/interferometer_ligo.png")

Stabilisiert auf "slope of fringe", Messsignal im Feedback-signal

Variation der Armlänge: $10^(-22)$ relativ, 1/1000 Protonenradius absolut

Interferometrie in der Wissenschaft ... LISA

Laser Interferometer Space Antenna (planned for 2034)
- 3 spacecrafts, each containing:
  - 2 telescopes, 2 lasers, 2 test masses pointing at two other crafts
  - 46 mm, 2 kg cold /platinum cubes as cornerstones in Michelson-like interferometers
- arm length 2.5 million km
- tailing earth orbit with 50 million km distance
- arrangement has 10 times the moon orbit
- required coherence: 0.12 Hz, 8.3 s

keine aktive Stabilisierung des Interferometers geplant, kontinuierliches Zählen von fringes

Sagnag-Interferometer (Georges Sagnac, 1869-1926):

#image("assets/sagnag_interferometer.png")

Phasenschub $Delta phi.alt$ bei Rotation des Aufbaus mit Winkelgeschwindigkeit $Omega$

eine Wegrichtung wird durch Drehung effektiv ein Stück $dif x$ kürzer
$dif x = Omega dot r dot dif t = (Omega dot r)/c dif l$

für den ganzen Umlauf
$ x = integral.cont dif x = integral.cont (Omega dot r)/c dif l = Omega/c integral.cont r dif l = Omega/c dot 2A $

mit $A$ die vom Strahlengang eingeschlossene Fläche

Für den Phasenschub:
$ Delta phi.alt = (2 pi)/lambda dot 2x = (8 pi A)/(lambda c) Omega $

Beispiel: $A = 1 "m"^2$, $lambda = 633 "nm" arrow.double Delta phi.alt = pi$ für $Omega = 1360°\/s$ (227 RPM)

Weiteres Beispiel: der Ringlaser am geodätischen Observatorium Wettzell
- Cavity-verstärkter Ringlaser zur Messung
der Erdrotation
- Lasing in beiden Umlaufrichtungen mit einem Frequenzunterschied $Delta f = sqrt(A)/lambda Omega$
- Armlänge 4 x 4 m, Erdrotation $348.6 "Hz"$
- misst Variation der Taglänge vom 0.1 ms ($10^(-8)$ der Erdrotation)

==== Materiewellen-Interferometrie

Typical optical setup:
- coherent photon source (laser)
- beam splitter
- "propagation", interferometer arms
- re-combiner
- detectors

#image("assets/interferometer_materiewellen.png")

== Relevante Altklausurfragen

*Wie funktioniert die momentan genaueste Methode um kleinste Längenänderungen zu messen? (Auch Skizze)*

Interferometrie (z.B. Michelson-Interferometer / LIGO)

Prinzip:
- Laserstrahl wird an Strahlteiler aufgeteilt $arrow.double$ zwei Arme
- Reflexion an Spiegeln, Überlagerung am Detektor
- Verschiebung eines Spiegels um $Delta d = lambda \/ 2 arrow.double$ ein Intensitätsmaximum zu -minimum
- Wegstrecke wird als Vielfaches von $lambda \/ 2 approx 0.3$μm gemessen

Skizze:
#rotate(image("assets/michelson_interferometer.png"), 90deg, reflow: true)

Genauigkeit: bis $10^(-22)$ relativ (LIGO: 1/1000 Protonenradius!)

Voraussetzungen: genaue Kenntnis der Wellenlänge, Temperaturstabilisierung, Feuchte- und Druckkontrolle (Brechungsindex der Luft!)

*Wie funktioniert ein Widerstandsgeber und in welchem Längenbereich wird er zur
Längenmessung herangezogen?*

Prinzip: Abgriff eines Potentiometers wird entlang der Messstrecke $l$ verschoben:
$ U(l)/U_0 = l/l_0 $

Typen:
- Widerstandsdraht/Metallfilm: kontinuierlich, aber Abschleifung $arrow.double$ nichtlinear
- Feindrahtpotentiometer: robust, aber diskrete Schritte (500-1000 Windungen)

Längenbereich: direkte Messung, kleinste Dimension \~Mikrometer, größte\ ~100 m

*Was ist das Messprinzip eines induktiven Weggebers? Für welchen Längenbereich wird er eingesetzt?*

- Spule mit ferromagnetischem Kern
- Verschiebung des Kerns $arrow.double$ Änderung der Induktivität:
$ L = (mu_0 mu_r N^2 A)/l $
- Spule ist Teil eines Schwingkreises $arrow.double$ Änderung der Resonanzfrequenz oder Spannungsamplitude bei fester Frequenz $arrow.double$ Rückschluss auf Position
- Bereich: mm -- cm
- Auflösung: $10^(-4)$ des Messwegs

*Wie funktionieren kapazitive Weggeber? Welche drei wesentlichen Typen gibt es, und welchen Parameter der Basisformel variieren sie?*

Basisformel: $C = epsilon A/d$

Typen:
- Plattenabstand, variierter Param. ist $d$, Messbereich: sehr kleine Wege
- Plattenfläche, variierter Param. ist $A$, Messbereich: bis cm
- Dielektrikum, variierter Param. ist $epsilon$, Messbereich: z.B. Füllstandsmessung

= Masse

== Folienwissen

=== Schwere und träge Masse

Die Masse von Materie äußert sich in 2 fundamentalen Phänomenen:
- auf den Körper wirkende (bzw. von ihm verursachte) Gravitationskraft ("schwere Masse"), bestimmende Formel: $F = G (m_1 dot m_2)/r^2$ (Newtons Gravitationsgesetz)
- Trägheitskraft, die ein Körper einer Beschleunigung entgegensetzt ("träge Masse"), bestimmende Formel: $F = m dot a$ (2. Newtonsches Axiom)

Äquivalenzprinzip: schwere = träge Masse
- experimentell überprüft bis $10^(-13)$ (lunar ranging)
- ongoing, Gravity Probe A, STEP-Mission

=== Eigenschaften der Masse

/ Trägheit: Aufgrund seiner Masse setzt ein System einer Kraft, die seine Geschwindigkeit in Größe und/oder Richtung ändert, einen Widerstand entgegen: Die Geschwindigkeitsänderung ist umgekehrt proportional zur Masse, hängt aber in Richtung und Größe auch von der Größe der Geschwindigkeit und dem Winkel zwischen der Kraft und der Geschwindigkeit ab.
/ Gravitationsladung: Zwei Systeme ziehen sich aufgrund der in ihnen enthaltenen Massen, Energien und Impulse gegenseitig an.
/ Invariante Größe Masse: Die Masse eines Systems hängt nicht von seiner Geschwindigkeit ab; sie bleibt unverändert, wenn man durch eine LorentzTransformation das Bezugssystem wechselt, in dem das System betrachtet wird.
/ Additivität: Die Masse eines zusammengesetzten Systems ist gleich der Summe der Massen seiner Einzelteile, abzüglich des Massenäquivalents der Bindungsenergie, die zur vollständigen Trennung der gebundenen Einzelteile zugeführt werden müsste, und zuzüglich des Massenäquivalents der kinetischen Energien derjenigen Einzelteile, die als freie Teilchen zum System gehören. (Ersetzt Additivität aus klass. Physik)
/ Energieerhaltung: Bei allen Prozessen bleibt die Summe aller Energien erhalten. Die mit den Massen verknüpften Ruheenergien sind darin enthalten. Die Summe der Massen allein bleibt nicht immer erhalten. (Ersetzt Massenerhaltung aus klass. Physik)

=== "Relativistische" vs. "Ruhemasse"

Ansatz von Lorenz: "relativistische Masse" als Summe von Masse und Energie \
$arrow.double$ "relativistische Masse" (oft auch einfach nur als "Masse" bezeichnet)

Problem: kinetische Energie ist abhängig vom Bezugssystem, "relativistische
Masse" nicht eindeutig.

Einstein an Lincoln Barnett:

"Es ist nicht gut, von der Masse $M = m/sqrt(1 - v^2/c^2) $ eines bewegten Körpers zu sprechen, da für $M$ keine klare Definition gegeben werden kann. Man beschränkt sich besser auf die "Ruhe-Masse" $m$. Daneben kann man ja den Ausdruck für momentum und Energie geben, wenn man das Trägkeitsverhalten rasch bewegter Körper angeben will"

Es ist also nicht möglich, einem System durch Beschleunigung Masse hinzuzufügen.

=== SI-Einheit Kilogramm

Aktuelle Definition: \
Das Kilogramm, Symbol kg, ist die SI-Einheit der Masse. Sie ist definiert über die Planck-Konstante $h$ als $6.62607015 dot 10^(-34)$, mit der Einheit Js, was $"kg" "m"^2 "s"^(-1)$ entspricht. Dabei sind der Meter und die Sekunde über $c$ und $Delta nu_"Cs"$ definiert.

Implementierung:
- Historisch: Kubik-Dezimeter reines Wasser bei 4°C
- Kilogramme des Archives aus Platin (1799)
- 1875 Meterkonvention mit 17 Teilnehmerstaaten beschließt einheitliches Maßsystem mit Meter, Kilogramm, Sekunde
- 1884 Internationales Kilogrammprototyp (IPK): 39 mm Zylinder aus 90% Platin, 10% Iridium
- ursprünglich 40 Kopien, bis 2003 insg. 84 Kopien
- Vergleich ca. alle 40 Jahre

Abweichungen nicht geklärt $arrow.double$ Neue physische Implementierung muss her

=== Avogadro-Projekt

Avogadro-Projekt zur Realisierung des Kilogramms

Idee: Avogadro-Konstante verknüpft Masse mit Teilchenzahl (kann über Volumen und Dichte realisiert werden)
$ N_A = (M V n)/m $
mit Masse $m$, Volumen $V$, Dichte $n$, molare Masse $M$.

Physische Implementierung: Kugel aus isotopenreinem Si-28
- russ. Atomministerium, 6 kg für 1.2 Mio € ("teuerste Kugel der Welt")
- 2 Kugeln mit 93.7 mm Durchmesser und 30 nm Gestaltabweichung
- Bestimmung der Dichte über Gitterparameter (Röntgen-Interferometer)
- Immer noch Probleme mit metallischen Kontaminationen an der Oberfläche
- relative Messungenauigkeit: $2 dot 10^(-8)$

=== Gravitation(smessung)

Messung der Gravitationskonstante $G$:

$G = 6.674 dot 10^(-11) "Nm"^2\/"kg"^2$

CODATA: $G = (6.67384 plus.minus 0.00080) dot 10^(-11) "Nm"^2\/"kg"^2$

- die am schlechtesten bekannte Fundamentalkonstante (4 Ziffern!) (alle anderen sind bei 8 Ziffern)
- extrem schwierig, direkt zu messen
- die schwächste der 4 fundamentalen Wechselwirkungen

$ abs(F_"Gravitation"/F_"elektrisch") = (G m^2_"Proton")/(e^2 \/(4 pi epsilon_0)) approx 10^(-36) $

Problem bei der Messung: Gewichtskraft auf der Erde! \
2 Massen 100 kg, Abstand 1 m haben untereinander nur $10^(-9)$ der jeweiligen Gewichtskraft 

==== Cavendish-Experiment

1798, Gravitationswaage

Auslenkung einer Torsionswaage bei Annäherung von Testmassen wird gemessen (heute über Laser)

#image("assets/cavendish.png")

=== Schweremessung

...sei nun $m_2$ ($=M$) die Masse der Erde (ca. $5.97 dot 1024 "kg"$)

Gravitations-, Schwerebeschleunigung: 
$ a = G (m_"Erde")/r^2 $

Fall-, Erdbeschleunigung: $g = a + Z$

mit $Z$ die Zentrifugalbeschleunigung aufgrund der Erdrotation (Gezeitenkräfte aufgrund anderer Himmelskörper meist nicht berücksichtigt)

Fallbeschleunigung variiert aufgrund von:
- Zentrifugalbeschleunigung wirkt tangential
- Höhenabhängigkeit
- Inhomogenitäten der Massenverteilung
  - Abplattung der Pole
  - Lokale Dichtevariationen im Erdmantel
  - Dynamiken im Erdinneren
  - Himmelsmechanik+Gezeiten

#image("assets/freefall_acceleration_earth.png")

In Wien: $g = 9.81 "m"/"s"^2 = 981 "Gal"$, am Äquator: $g = 9.76 "m"/"s"^2$

$g$ können wir mit $(Delta g)/g ~ 10^(-10)$ messen!

räumliche Variation des Gravitationspotentials ... der Geoid:
#image("assets/geoid.png")

zeitliche Variation des Gravitationspotentials:
#image("assets/variation_gravitationspotential.png")

Gezeitenkorrektur beträgt bis zu +/- 150 μGal

Zwei grundlegende Messmethoden:
- Relative Schweremessung
- Absolutschweremessung

=== Relativgravimeter

... zur Bestimmung der räumlichen oder zeitlichen Änderung der Schwere
- Veränderung gegenüber einem (bekannten) Nullpunkt
- Messung: Federauslängung
- Genauigkeit: +/- wenige μGal

Änderung der Schwere $delta g$ erzeugt (messbare) Längenänderung $delta s$
$ m delta g = k delta s = k (l - l_0) = k delta s arrow.double delta g = k/m (l - l_0) $

Probleme:
- erforderliche Messgenauigkeit $(delta g)/g ~10^(-9) arrow.double$ eine 10 cm Feder müsste auf +/- 0.1 nm gemessen werden
- Absolute Kalibrierung sehr aufwändig
- historisch etwas überholt, lediglich praktische Vorteile (portabel, einfach, Preis)

==== Lacoste-Romberg Gravimeter

Trick 1: "Zero-length" Feder

Überträgt auf eine Winkelmessung

Drehmoment-Gleichgewicht:
$ m dot g dot cos(alpha) times a = k (l - l_0) sin(theta) times b $

Empfindlichkeit ist stark erhöht für $alpha ~ 0°$

Für $a = 10"cm"$, eine Winkeländerung von 100" bzw. einer Höhenänderung von 2 μm entspricht $(delta g)/g ~ 10^(-8)$

Kann "leicht" mit Hilfe eines Lasers ausgelesen werden

#image("assets/lacoste_romberg_gravimeter.png")

Einsatz-Bandbreite: 7000 mGal \
Messgenauigkeit: \~ 10 μGal ("big buildings")

limitiert durch Einstellung der Horizontalen (Tiltmeter)

Vollautomatische Versionen:
- self-levelling (elektronische Neigungssensoren)
- Korrektur der Federsteife (drift)
- Gezeitenkorrektur
- hohe Datenrate + Mittelung

Einsatzgebiete:
- Feldmessung
- (unter) Wasser Messungen
- Geographische Sondierung (Öl!)
- (Flugzeuge und Helikopter)

==== Scintrex-Quarzgravimeter (CG-3M oder CG-5)

Trick 2: just do it...

Arbeitsprinzip: Quarzfeder mit elektrisch geladener Testmasse, die in einem Kondensator "levitiert" wird, elektronisches feedback registriert Positionsänderungen von $10^(-10)"m"$

Einsatz-Bandbreite: 8000 mGal \
Messgenauigkeit: \~ 1-5 μGal

limitiert durch Temperaturstabilisierung der Quarzfeder (50° C +/- 0.5 mK)

Da Nivellierung nicht entscheidend ist, kann das Gerät auch von nicht-Fachleuten leicht bedient werden.

#image("assets/scintrex_quarzgravimeter.png")

==== Supraleitende Gravimeter

Arbeitsprinzip: die Feder wird komplett weggelassen, eine Testmasse wird magnetisch levitiert, aus der Stabilität der Supraleitenden Ströme (persistent) ergibt sich die hohe Messgenauigkeit

Performance:
- Bis zu 0.1 μGal nach 1 Stunde Mittelung! ("small buildings", sogar Personen) $arrow.double$ empfindlichstes Messinstrument derzeit
- Drifts < 0.5 μGal/Monat
- Sensitiv auf äußere Magnetfelder
- Absolutkalibrierung erforderlich, kann nur zeitliche Verläufe messen
- Österreich: BEV im Conrad-Observatorium

=== Absolutgravimeter

==== Pendelgeräte

- Entwickelt von Galileo Galilei
- ab dem 17. Jahrhundert zur Messung der Absolutschwere, bis ca. 1950

$ F = -m g sin(phi) = m L (dif^2 phi)/(dif t^2) $
$ (dif^2 phi)/(dif t^2) = -g/L sin(phi) $
mit $(dif phi)/(dif t) = sqrt(g/L) cos(phi) = omega$, für sehr kleine Winkel $phi$, $omega = sqrt(g/L)$ folgt:
$ T = (2pi)/omega = (2pi)/sqrt(g/L) arrow.double g = 4 pi^2 L/T^2 $

mit $L$ die Pendellänge, $T$ die Schwingungsdauer

Faustformel: 1 m Pendel \~ 1 "Schlag" $arrow.double$ Halbschwingung realisiert Sekunde $arrow.double$ T \~2 s

$arrow.double g ~ pi^2 "m"/"s"^2$ (Genauigkeit limiert durch Genauigkeit der Pendellänge ($~ 10^(-6)$))

==== Ballistische Gravimeter

basiert auf der Bewegungsgleichung eines frei fallenden Körpers: $m dot.double(z) = m g z$

Sei $g$ (erstmal) konstant auf der betrachteten Fallstrecke mit $z_0$ Anfangsposition, $dot(z)_0$ Anfangsgeschwindigkeit
$ arrow.double z = z_0 + dot(z)_0 t + g/2 t^2 $

Nachdem Anfangsposition/Geschwindigkeit oft nicht einfach (genau) zu messen sind, braucht man drei Paare $z_i$, $t_i$ zur Bestimmung von $g$
$ g = 2 ((z_3 - z_1)(t_2 - t_1) - (z_2 - z_1)(t_3 - t_1))/((t_3 - t_1)(t_2 - t_1)(t_3 - t_2)) $

Für einen symmetrischen vertikalen Wurf genügen 2 Zeitmessungen $Delta t_1$, $Delta t_2$ bei fixen Höhen:
$ g = (8 Delta z)/(Delta t^2_2 - Delta t_1^2) $

#image("assets/wurf_graph.png")

Eine Messung von $g$ auf $10^(-9)$ erfordert für $20 "cm"$ Fallstrecke (0.2s Dauer): Ortsauflösung 0.2 nm, Zeitauflösung 0.1 ns $arrow.double$ nur interferometrisch möglich

==== Ballistische Gravimeter -- Funktionsprinzip

Misst sehr viele Paare $z_i$, $t_i$ in einem Wurf
- He-Ne Laser, auf Jod-Gaszelle stabilisiert
- Rubidium-Atomuhr für timing-Stabilität
- Experiment in Hochvakuum
- Mittelung über 1000de "drops"
- Extrem empfindlich auf Erschütterungen (Verlust der Phase)
- Nur fixe Installation im Labor

#image("assets/ballistische_gravimeter.png")

Ballistisches Gravimeter (IMGC-02) Rekonstruktion der Flugparabel:
#image("assets/ballistische_gravimeter_rekonstruktion_flugparabel.png")

Fehlerquellen:
- Laserorientierung und Divergenz
- Temperaturstabilität (Ausdehnung)
- "balancing" des Retroreflektors (3.6 μGal)
- Gezeiten, Luftdruck
- Coriolis Kraft

Unsicherheit ~4.5 μgal ("small buildings") \
Aber: Absolutmessung!

==== Ballistische Gravimeter -- LaCoste FG5

- keine Parabel, nur "drop"
- vertikales Mach-Zehnder Interferometer reduziert einige Fehlerquellen
- "transportabel": 240 kg in 8 Containern

#image("assets/ballistische_gravimeter_lacoste_fg5.png")

Performance:
- 2 μgal Accuracy (verschiedene FG5)
- Precision 15 μgal/sqrt(Hz)
  - 1 μGal in 3.75 Minuten
  - 0.1 μGal in 6.25 Stunden
$arrow.double$ Schwere Testmassen können detektiert werden

=== Atomgravimeter

Teilchen als Welle??

Energie-Impuls-Beziehung: $E^2 = p^2 c^2 + m_0^2 c^4$

für Photonen: $E = p c$

Zusammen mit Photoeffekt:
$ E = h f arrow.double lambda = h/p $
(für Photonen)

Louis de Broglie behauptet 1924: $lambda = h/p$ auch für Materieteilchen!

==== Cold Atom Gravimeter

Cold Atom Gravimeter -- Überlagerungen von Bewegungszuständen

Streuung von "Materiewellen" an einem bewegten periodischen Potential

#image("assets/cold_atom_gravimeter.png")

Stimulierte Raman-Übergänge: \
Zwei metastabile Zustände nötig: $|"a"chevron.r$, $|"b"chevron.r$
- Hyperfein-Zustände im Grundzustand erfüllen Kriterium, haben aber nur kleine Rückstoßgeschwindigkeit
- optische Übergänge haben große Rückstoßgeschwindigkeiten, aber technisch schwer zu realisieren (ultra-stabile Laser nötig) 
$arrow.double$ Lösung: Kopplung zweier Hyperfein-Zustände über zwei optische Übergänge

#image("assets/rabi_raman_bullshit.png")

HIER NERDET DER PROF EINFACH, NO WAY, DASS DAS SO ZUR PRÜFUNG KOMMT

[ ... ]

Das Rauschen des Atominterferometers ist viermal kleiner als das eines "herkömmlichen" Gravimeters

== Relevante Altklausurfragen

gibts keine :( 


= Strom, Spannung

== Folienwissen

=== SI-Einheit Ampere

Definition 1898: 1 Ampere ist derjenige Strom, der bei der Elektrolyse von wässriger Silbernitrat-Lösung in 1 Sekunde 1.118 mg Silber abscheidet \
$arrow.double$ Rückführung auf eine Wägung, nicht von Konzentration der Lösung abhängig, basiert auf Diskretisierung der Ladung

Definition 1948: 1 Ampere ist derjenige Strom, der im Vakuum zwischen zwei parallele, unendlich langen gerade Leitern mit vernachlässigbar kleinem, kreisförmigen Querschnitt und dem Abstand von 1 m zwischen diesen Leitern eine Kraft von $2 dot 10^(-7)$ Newton pro Meter leiterlänge hervorrufen würde \
$arrow.double$ Rückführung auf eine Kraftmessung über die Lorenzkraft, legt zugleich die magnetische Feldkonstante $mu_0$ fest, praktisch nicht durchführbar

#image("assets/definition_ampere.png")

Definition 2019 (26. Generalkonferenz für Maß und Gewicht): \
(Definition des Coulomb):
$ 1 "C" = 1 "As", quad 1 "A" = 1 "C"\/"s" $

Mit der festgelegten Elementarladung $e = 1.602 176 634 dot 10^(-19) "As"$ ist 1 Ampere ein Fluss von $1/(1.602 176 634 dot 10^(-19))$ Elementarladungen pro Sekunde, also $~6.2 dot 10^18$ (Trillionen) pro Sekunde

$arrow.double$ Rückführung auf eine "Zählung pro Zeiteinheit": $1 A ~ 679 dot 10^6 Delta nu_"Cs" e$

$arrow.double$ Magnetische Feldkonstante $mu_0$, damit eine Messgröße mit Fehler (neu!): $mu_0 = 1.256 637 062 12(19) dot 10^(-6) "N"/"A"^2$ \
($mu_0 = 4pi dot 10^(-7) "N"/"A"^2$ weiterhin nützlich aber formal nicht mehr gültig)

Wie sieht die praktische Implementierung aus…? $arrow.double$ siehe nächster Abschnitt

=== Elektronik mit einem Elektron

Aktuelle Forschung, Festkörper-Quantenelektronik

Konzept: "clocked single electron sources"
$ I = n e f = (n e)/T $

#image("assets/clocked_single_electron_source.png")

Basiert auf zwei physikalischen Effekten:
- Tunneleffekt (einzelne Elektronen)
- Coulomb Blockade

==== sidenote: Das Metrologische Dreieck

#image("assets/metrologisches_dreieck.png")

==== Single electron Tunnelling

Ausgangspunkt: \
de-lokalisierte Elektronen in Metall $arrow.double$ Ladung Q auf einem Kondensator mit Kapazität $C$ ist kontinuierlich $Q = C U$

#image("assets/single_electron_tunnelling_1.png")

Öffnen des Stromkreises erzwingt eine Lokalisierung auf $n$ Elementarladungen

#image("assets/single_electron_tunnelling_2.png")

Statt eines Schalters wird eine Tunnelbarriere (dünner Isolator) mit sehr hohem Widerstand $R_T$ und geringer Kapazität $C_T$ verwendet

#image("assets/single_electron_tunnelling_3.png")

Ziel: einzelne Elektronen kontrolliert in die "quantum box" laden und extrahieren

2 Bedingungen:
1. Unterdrückung von thermischem Transfer in die Box: Energieunterschied pro Elektron $E_C^(1e)$ muss größer als thermie Energie $k_B T$ sein: $E_C^(1e) = e^2/C >> k_B T$. Benötigt sehr kleine Kapazitäten (0.1 - 1 fF) und damit extrem kleine Kondensatoren (nanometer), Temperatur im Millikelvin-Bereich

2. Unterdrück von Transfer durch Quantenfluktuationen:
$E_C^(1e) >> E_"QF" = planck/(R_T C_T)$ und damit $R_T >> 1/pi h/e^e approx R_K/4$ mit $R_K$ die von Klitzing Konstante $R_K = 25812.807 4999(59) Omega$ (kommt später) $arrow.double$ hohes $R_T$

deswegen braucht es:
- advanced nanofabrication
- sophisticated cooling

Wie bekomme ich jetzt genau 1 Elektron "on demand"?

=== Single electron transistor (SET) und Coulomb-Blockade

- gate voltage $U_G$
- source-drain voltage $U_"SD"$
- finite (small) number of electrons $N$ on island
- Coulomb-Wechselwirkung auf der Insel diskretisiert das chemische Potential in Stufen der Coulomb-Energie $e^2 \/ C_Sigma$
- Eine kleine source-drain Spannung $U_"SD"$ erzeugt einen Potentialunterschied $mu_L - mu_R = e U_"SD"$
- Stromfluss (source-drain) nur möglich wenn $mu_L > mu_C (N+1) > mu_R$
- Kann erzeugt werden durch Einstellung des gate voltage...

#image("assets/single_electron_transistor.png")

- gate voltage bestimmt, wie viele Elektronen auf der Insel "sitzen"
- kontinuierliches Erhöhen des gate Voltage erzwingt "electron hopping"

#image("assets/single_electron_transistor_graph.png")

Single electron transistor (SET) Pumpe...
- zwei verschaltete SETs machen eine gepulste Elektronenpumpe
- Pulsform kann mit wenig Signalaufbereitung direkt aus einem elektronischen Sinussignal generiert werden
- $arrow.double$ Frequenz-Strom-transfer

#image("assets/single_electron_transistor_pumpe.png")

Realisierung des Ampere mit Elektronenpumpen:
- Genauigkeit gegeben durch den Transferfehler
- state-of-the-art: 1.5 Schaltfehler in $10^8$ Operationen bei 5.05 MHz
- Größenordnung $I approx 1 "pA"$
- Begrenzung durch thermisches Heizen
- Erhöhung der Schaltsicherheit durch Verschaltung weiterer SETs

Forschungsthemen:
- Supraleitende SETs
  - Cooper-Paare
  - reduzierte Heizleistung $arrow.double$ höhere Frequenzen

=== Das Volt -- Josephson Effekt

1 Volt ist diejenige elektrische Potentialdifferenz (elektrische Spannung), die anliegt, wenn bei einer Stromstärke von 1 Ampere die Leistung 1 Watt abgegeben wird.
$ 1 "V" = 1 "W"/"A" = 1 ("N" dot "m")/("A" dot "s") = 1 ("kg" dot "m"^2)/("A" dot "s"^3) $

Praktisch implementiert über die Josephson-Frequenz:
$ f_J = (2 e U)/h = K_J dot U $

Seit der Generalkonferenz 2019 sind $e$ und $h$ festgelegte Größen, und damit
$ K_J = 1/Phi_0 = (2e)/h = 4.835 978 484 ... dot 10^18 "Hz"/"V" $

Dabei ist $Phi_0 = h/(2 e)$ das magnetiche Flussquantum

Beispiel: elektrischer Kreisstrom im Supraleiter
#image("assets/elek_kreisstrom_supraleiter.png")

"Zutaten" für die Herleitung der Flussquantisierung:
- Makroskopische Wellenfunktion für den Stromfluss im Supraleiter
- Cooper-Paare als Ladungsträger der Supraleitung (daher $2e$)
- London-Gleichung: konstante Amplitude der Wellenfunktion, nur Phasenfaktor
- Meißner-Ochsenfeld Effekt: magn. Induktion verschwindet im Supraleiter

Der Josephson-Effekt "macht aus einer Spannung eine Frequenz"

Basiert auf dem Tunneleffekt: endliche Durchgangswahrscheinlichkeit durch einen klassisch verbotenen Bereich

#image("assets/josephson_effekt.png")

Schrödinger-Gleichung für getrennte Bereiche ($Psi$ ist eine "Kondesatwellenfunktion der Cooper-Paare"):
$ i planck partial/(partial t) Psi_L = E_L Psi_L, quad i planck partial/(partial t) Psi_R = E_R Psi_R $

Für dünne Isolatorschicht ($~1"nm"$) überlappen die Wellenfunktionen leicht $arrow.double$ gekoppelte SGL:
$ i planck partial/(partial t) Psi_L = E_L Psi_L + K Psi_R, quad i planck partial/(partial t) Psi_R = E_R Psi_R + K Psi_L $

$K$ ist die Tunnel-Kopplungsstärke, hängt ausschließlich von der Geometrie und den Materialien ab

Ansatz für die Wellenfunktionen ($rho$ Cooper-Paar-Dichte, $phi.alt$ Phase der WF):
$ Psi_L = sqrt(rho_L) exp(i phi.alt_L), quad Psi_R = sqrt(rho_R) exp(i phi.alt_R) $

...führt auf gekoppelte Differentialgleichungen:
$ partial/(partial t)(rho_L) = (2K)/planck sqrt(rho_R rho_L) sin(phi.alt_R - phi.alt_L) $
$ partial/(partial t) (phi.alt_R - phi.alt_L) = 1/planck (E_R - E_L) + K cos(phi.alt_R - phi.alt_L) (sqrt(rho_L/rho_R) - sqrt(rho_R/rho_L)) $

unter Erhaltung der Cooper-Paare $partial/(partial t) rho_L = - partial/(partial t) rho_R$

#image("assets/josephson_effekt_isolator.png")

Wir verwenden die relative Phase $phi.alt = phi.alt_R - phi.alt_L$ und beidseitig identische Supraleiter $rho_L = rho_R = rho$:
$ partial/(partial t) (rho_L) = -partial/(partial t) (rho_R) = (2K)/planck rho sin(phi.alt) $
$ partial/(partial t) (phi.alt) = 1/planck (E_R - E_L) $

Hier gibt es eine Absonderlichkeit: $rho$ ist constant, hat aber trotzdem eine endliche Zeitableitung! Eine Stromquelle "füttert" neue Cooper-Paare nach, um die Getunnelten zu ersetzen. Diese "Quelle" wird in der Herleitung berücksichtigt, ändert aber nichts an den dynamischen Gleichungen.

Typischer Anteil der Tunnel-Paare an der Gesamtwellenfunktion: $10^(-10)$

Wir bekommen $2e$ pro Cooper-Paar, somit kann der Energieunterschied als Spannung $U$ ausgedrückt werden:
$ U = (E_R - E_L)/(2e) $

Die Josephson-Gleichungen für die Stromdichte durch den Tunnel-Kontakt (mit $J_0 = (4 e K)/planck$):
$ J = J_0 sin(phi.alt), quad partial/(partial t) phi.alt = (2 e U)/planck $

Was wird nun passieren?
- Keine externe Spannung $U$: $phi.alt$ kann einen beliebigen Wert haben
  - konstanter Strom durch die Barriere, max. $I_0 = J_0 A$ ($A$ ist die Kontaktfläche des Kontaktes)
$arrow.double$ DC Josephson Effekt (demonstriert 1963 von Anderson / Rowell)

- konstante externe Spannung $U eq.not 0$: $phi.alt$ steigt linear mit der Zeit: $phi.alt = phi.alt_0 + (2 e U)/planck t$
  - es ensteht ein Wechselstrom mit der Frequenz $omega = (2 e U)/planck = 2pi dot 483.6 "MHz"/(mu"V")"U"$
$arrow.double$ AC Josephson Effekt (demonstriert 1963 von Shapiro)

- Wechselspannung: diskrete Stufen im DC Strom
$arrow.double$ Shapiro Effekt (inverser Josephson Effekt)

#image("assets/josephson_effekt_graph.png")

Spannungs-Standards mit Josephson Tunnelkontakten:

AC Josephson: Direkte Übersetzung einer Spannung in eine Frequenz:
$ omega = (2 e U)/planck = 2pi dot 483.6 "MHz"/(mu"V")"U" $
erreicht sehr hohe Genauigkeiten bis zu $10^(-18)$

Praktisches Problem: \
Schon sehr geringe Spannungen führen zu sehr hohen Frequenzen

Aktuelle Forschung: Verwendung des inversen Josephson (Shapiro) Effekts:
- Einstrahlung einer genau definierten Frequenz (z.B. 70.1 GHz)
- $arrow.double$ diskrete "shapiro-Steps" im Tunnelstrom (stabilisiert auf $n=5$)
- Reihenschaltung von 14000 Josephson-Junctions realisiert 10.1 V

=== Das Ohm -- Quanten-Hall Effekt

Im SI-Einheitensystem ist das Ohm definiert als: \
Derjenige Widerstand, der zwischen zwei Punkten eines elektrischen Leiters besteht, wenn eine konstante Potentialdifferenz (Spannung) von 1 Volt in dem Leiter einen Strom von 1 Ampere erzeugt.
$ 1 Omega = 1 "V"/"A" $

Definition 1908: $14.4521 "g"$ Quecksilber in einer Säule von $106.3 "cm"$ Länge und konstantem Durchmesser, bei der Temperatur des schmelzenden Eises

Durch rasante Entwicklung im Bereich Strom/Spannungsmessung wurde diese Definition zunehmend obsolet.

Definition ab 1990: Quanten-Hall-Effekt...

==== Der klassische Hall-Effekt

1879 von Edwin Herbert Hall beobachtet: Spannungsabfall an einer Stromführenden Struktur in einem externen Magnetfeld

#image("assets/hall_effekt.png")

Ursache: Lorentzkraft wirkt auf bewegte Ladungsträger (Elektronen). Nachdem kein net. Strom fließt, muss ein el. Feld $E_y$ kompensieren.

$ (-e) E_y = (-e) v_x B_z arrow.double E_y = v_x B_z $

und damit die Hall-Spannung $U_H = E_y L_y = v_x B_z L_y$.

Für den Strom gilt: $I_x = j_x L_y L_z = (-e) n_(3D) v_x L_y L_z$ \
mit $j_x$ die Stromdichte und $n_(3D)$ die Elektronendichte. Damit gilt:
$ U_H = -1/(e n_(3D)) 1/L_z I_x B_z = R_H/L_z I_x B_z $
(das kann sowohl für Strom- als auch Magnetfeldmessungen verwendet werden)

Man definiert einen "Hall Widerstand" $R_(x y) = U_H/I_x$ (steigt linear, kontinuierlich mit externem Magnetfeld)

Das ist ein "transversaler" Widerstand, nicht mit dem "longitudinalen" Widerstand $R_(x x) = U_x/I_x $ zu verwechseln.

Übergang zum 2D Fall (weiterhin klassisch): \
Annahme eines 2D Elektronengases, die Dimension $L_z$ verschwindet, $n_"3D" arrow.double n_"2D"$, die Hall-Spannung wird
$ U_H = -1/(e n_"2D") I_x B_z $

==== Der QUANTEN Hall-Effekt

Nimmt einen 2-dimensionalen supraleitenden Halbleiter an
- Bewegungszustände des 2D Elektronengases sind quantisiert $arrow.double$ Landau-Niveaus
- Hall-Widerstand steigt nicht mehr linear mit dem ext. Magnetfeld sondern in ganzzahligen Vielfachen der von-Klitzung-Konstanten
$ R_K = h/e^2 = 25812.807 459 3045 Omega $
- $R_K$ hängt weder von Materialeigenschaften (z.B. $n_"2D"$), noch Probenform/Größe, noch Temperatur, noch Magnetfeldstärke ab
$arrow.double$ kann überall perfekt mit $10^(-8)$ Genauigkeit reproduziert werden ("Bauanleitung" vs. Objekt)

#image("assets/quanten_hall_effekt_graph.png")

=== Quantenmetrologisches Dreieck

Alle 3 SI-Einheiten sind (einzeln) mit $10^(-8)$ relativer Genauigkeit messbar/definiert

Überprüfung, ob auf diesem Niveau auch konsistent ist bisher gescheitert

Ansätze:
- Frequenzvergleich:
  - Frequenz $f_"SET"$ in SET pump erzeugt $I_"SET"$
  - $I_"SET"$ an einem Hall-probe erzeugt diskrete Hall-Spannung $U_H$
  - diese wiederum an eine Josephson Junction angelegt erzeugt Frequenz $f_J$
  - $f_"SET" \/ f_J$ muss strikt ganzzahlig sein (Abhängig vom gewählten Hall-Plateau)
- Ladungsvergleich/Spannungsvergleich:
  - Frequenz $f_"SET"$ in SET pump läd über Zeit $T$ einen cryogenen Kondensator $Q_"SET" arrow.double Q_"CR"$
  - Frequenz $f_"SET"$ an (inverser) Josephson junction erzeugt diskrete Gleichstrom
  - Dieser erzeugt über diskretem Hall-Widerstand eine Spannung, die mit der Ladespannung des Kondensators verglichen wird

Verifikation bisher auf $10^(-6)$ level (PTB, NIST)

#image("assets/quantenmetrologisches_dreieck.png")

=== (Praktische) Messverfahren für elektrische Größen

Wie messe ich nun Strom, Spannung, Widerstand? \ 
$arrow.double$ Multimeter, na eh

4-Leitungs-Messung:
#image("assets/4_leitungs_messung.png")

==== Analog-Digital-Wandlung -- sampling

Shannon Abtasttheorem (\~1940)

Überführung eines kontinuierlichen analogen Signals in eine Folge zeitdiskreter Werte durch Musterentnahme (Sampling) in zeitlich gleichen Abständen (Abtastintervalle)
- Die Abtastfrequenz $f_s$ muss mindestens den doppelten Wert der höchsten im abzutastenden Signal enthaltenen Frequenz $f_"max"$ haben: $f_s gt.eq 2 dot f_"max"$
- Im Originalsignal darf keine Frequenz vorhanden sein, die größer ist als die Hälfte der Sampling-frequenz (Umkehrung)

#image("assets/sampling.png")

==== sampling vs. Quantisierung

#image("assets/sampling_vs_quantisierung.png")

Faustregel: 7 Punkte für einen Sinus

Die Quantisierung erzwingt (in der Regel) eine Darstellung als ganzzahliges Vielfaches eines Bruchteil einer (stabilen, externen!) Referenzspannung
$ U_"signal" ~ (n dot U_"Ref")/n_"max" $

für $n_"max"$ gilt: \
8-Bit-ADC: 255, 10-Bit-ADC: 1023, 12-Bit-ADC: 4095, 16-Bit-ADC: 65535

Das ist oft verblüffend wenig, Bandbreiten-Anpassung über $U_"Ref"$ und/oder $U_"signal"$

Beispiel: 
- 3-Bit-Sampling ($n = 3$) eines Signals 0-8 V
- Bereich 2.5-3.5 V wird auf 011 abgebildet
- Quantisierungsfehler: $plus.minus$ 0.5 LSB (least significant bit), daraus ergibt sich $U_"LSB" = U_"Ref"/(2^n)$
- ... wird auch als Auflösung bezeichnet

Achtung: Die Genauigkeit des Wandlers ist zwar durch die Auflösung bestimmt, aber nicht gleich der Auflösung $arrow.double$ Summe aller Fehler
- Quantisierung ... meist dominierend
- Linearitätsfehler: Abweichung in der Stufenbreite $U_"LSB"$ der Wanderkennlinie, vom Hersteller in Bruchteilen von LSB abgegeben (bis zu skipped code)
- Verstärkungsfehler: Abweichung in der Steigung der Wandlerkennlinie, beeinflusst die relative Genauigkeit nicht, aber Abweichungen zwischen verschiedenen Wandlern, abgleichbar
- Offsetfehler: Versatz der Übertragungskennlinie um Ursprung $arrow.double$ konstanter Fehler im Wandlungsbereich, beeinflusst die relative Genauigkeit nicht, Angabe vom Hersteller in Mikrovolt bzw, Anteilen von LSB, abgleichbar
- Umsetzrate: max. Wiederholrate, mit der der Wandler zyklisch arbeiten kann (Ergebnis bei zu schneller Abtastung beliebig)

==== Vergleich von A/D-Wandlern

#image("assets/ad_wandler_vergleich.png")

==== Zusammenfassung

Beachte!
- misstraue digitalen Messgeräten!
- Wähle den richtigen Messbereich ($U_"Ref"$ nahe an $U_"Signal"$)
- Trim your signal to your bandwidth (Spannungsteiler, Verstärker)
- Fast alles ist eine Spannungsmessung (auch Strom/Widerstand)
- Das Messgerät wird Teil des Stromkreises!
  - Innenwiderstand ist endlich (nicht unendlich, Spannungsmessung)
  - Innenwiderstand ist endlich (nicht null, Strommessung)
  - Messkabel+Kontakte haben Widerstand (Widerstandsmessung - 4-wire)

... das alles gibt auch für die umgekehrte Digital-Analog-Wandlung!

== Relevante Altklausurfragen

gibts keine :( 


= Magnetfeld

== Folienwissen

=== Einleitung

Magnetismus beschreibt die Kraftwirkung zwischen Magneten $arrow.double$ vektorielles Magnetfeld, Feldlinien
(anders als Gravitation, ähnlich wie E-Feld)

z.B. Lorentzkraft $arrow(F) = q arrow(v) times arrow(B)$, Ladung $q$ bewegt sich mit Geschwindigkeit $arrow(v)$ in Magnetfeld $arrow(B)$

2 primäre Ursachen:
- bewegte Ladungen (Elektronen, Strom)
  - klassisch, kontinuierlich, Maxwell-Gleichungen
  - Spulen, Motoren...
- Spin/Drehmomente von Elementarteilchen
  - quantisiert (Ladung und Bewegungszustand)
  - Permanentmagneten, Paramagnetismus...

2 Einheiten weiterhin gebräuchlich:
- Magnetische Flussdichte (Induktion):
  - $[arrow(B)] = 1 "Tesla" = 1 ("V" dot "s")/"m"^2 = 1 "kg"/("A" dot "s"^2)$
  - Für kleine Felder oft ausgedrückt in Gauss $1 "Gs" = 1 "G" = 10^(-4)"T"$
- Magnetische Feldstärke (CGS):
  - $[arrow(H)] = 1 "Oersted" = 1 "A"/"m"$
  - Im Vakuum sind beide Größen verbunden über $arrow(B) = mu_0 arrow(H)$ mit $mu_0$ die magnetische Feldkonstante $mu_0 approx 4 pi dot 10^(-7) "N"/"A"^2$

==== Größenordnungen Magnetfeld

#image("assets/groessenordnungen_magnetfeld.png")

==== Definition

Es gibt keine "Definition" im Sinne von: 1 Tesla/Gauss ist dasjenige Magnetfeld, welches ...? (Definition über "Probe-Magneten", analog Probeladungen)

Historisch: \
In der Magnetostatik gibt es den "Einheitspol" $p$ als Analogon zur elektrischen
Ladung

Es gilt ein "coulombsches Gesetz für Magnetpole": $F = (p_1 p_2)/r^2$. 
Dabei haben zwei gleiche Einheitspole eine Polstärke $1 p = 1"cm"sqrt("dyn")$, wenn sie sich im Abstand $r = 1"cm"$ im Vakuum mit der Kraft $F = 1"dyn"$ abstoßen. $1"dyn"$ ist dabei eine (veraltete) Krafteinheit $1"dyn" = 1"g" dot "cm"/"s"^2 = 10^(-5)"N"$

Heute: \
Magnetisches Dipolmoment $arrow(m)$: Auf einen magnetischen Dipol $arrow(m)$ wirkt in einem externen Magnetfeld der Flussdichte $arrow(B)$ ein Drehmoment $arrow(D)_arrow(m) = arrow(m) times arrow(B)$. In der QM meist als $arrow(mu)$ bezeichnet.
$ [arrow(m), arrow(mu)] = "A" dot "m"^2 $

==== Magnetische Momente von Elementarteilchen

- quantisierter Bahnsping (klass. analog. Kreisstrom) von Elektronen
$ arrow(mu_l) = -g_l mu_B arrow(l)/planck $
$l$ quantisiert in Einheiten von $planck arrow.double mu_l$ quantisiert in Einheiten von $mu_B$
$ mu_B = 9.2741 dot 10^(-24) "A" "m"^2 "Bohr Magneton" $ 

- Spin (Eigendrehimpuls) von Elementarteilchen
#image("assets/magnetisches_moment_fermionen.png")

==== "Externe" Effekte auf Atome

- mechanische Ablenkung: Stern-Gerlach-Versuch (remember Cs Atomuhr)
#image("assets/stern_gerlach_versuch.png")

- Verschiebungen der Energieniveaus: Zeemann-Effekt -- Paschen-Bach-Effekt (again, remember: Cs Atomuhr)
#image("assets/zeemann_effekt_graph.png")

==== "Interne" Effekte auf Atome

Magnetische Dipol-Dipol-Wechselwirkung

Elektronen Spin-Bahn-Kopplung $arrow.double$ Feinstruktur

Elektronen-Kern-Kopplung $arrow.double$ Hyperfeinstruktur

==== Magnetismus in Materialien

Magnetismus in Materialien … really messy…

Diamagnetismus, Paramagnetismus, Ferromagnetismus, ...

=== Erdmagnetfeld

Das Erdmagnetfeld entspricht vereinfacht dem Feld eines (gekippten) Stabmagneten, der ca. 450 km aus dem Erdmittelpunkt in Richtung 140° östlicher Länge verschoben ist (Südatlantische Anomalie, wandert 0.3°/Jahr nach Westen)

Achtung: der magnetische Nordpol ist eigentlich ein Südpol

Stark vereinfacht:
$ abs(arrow(B)(r, lambda)) = mu_0/(4pi) m/r^3 sqrt(1 + 3 dot cos^2(lambda)) $
mit dem magnetischen Dipol $m = 7.746 dot 10^22 "A""m"^2$ und $lambda$ der magnetischen Breite

3 Ursachen:
- Geodynamo: flüssiges Eisen im Erdkern (95%)
- Elektrische Ströme in der Ionosphäre/Magnetosphäre (1-3 %)
- höhere Multipolkomponenten + lokale Magnetisierung (metallische Einlagerungen) (1-5 % lokal)

Stärke des Erdmagnetfeldes
- \~30 μT am Äquator
- \~60 μT an den Polen
- Wien: 48 μT (20 μT horizontal, 44 μT vertikal)

Wanderung des magn. Nordpols \~90 m/Tag \
Ursache weitgehend ungeklärt, Umpolung steht bevor

=== Induktionsmessung

#image("assets/feldmessspule.png")

Zwei verschiedene Anordnungen:
1. Sensoren mit stationären Spulen (für $B(t)$)
2. Sensoren mit bewegten (rotierenden) Spulen (für Gleichfelder)

==== Luft Spulen -- ohne magnetisierbaren Kern

Vorteile:
- linear über "unendlichen" Feldbereich
- geringe Temperaturempfindlichkeit
- mathematisch korrigierbar

Nachteile:
- Spulen mit hoher Empfindlichkeit -- große Flächen -- groß und schwer
- Spulen haben schlechte räumliche Auflösung
- Feldinhomogenitäten werden nicht detektiert

Spulen müssen gegen elektromagnetische Störungen geschirmt werden.

Höhere Frequenzen $arrow.double$ Spulen bestehen aus $R, L$ und Streukapazität $arrow.double$ Übertragungsfehler

Abschätzung der Empfindlichkeit:
- Ein sich ändernder magnetischer Fluss $Phi$ mit $Phi = Phi_0 cos(omega t)$ induziert in einer Spule mit $n$ Windungen eine Spannung $U(t) = U cos(omega t)$ mit $U = n omega Phi_0$
- Es gilt $Phi_0 = A mu_0 H$ mit $A = (D^2 pi)/r$, $omega = 2 pi f$.
- $arrow.double U = omega n A mu_0 H = pi^2/2 n D^2 mu_0 f H$
- Die Empfindlichkeit einer Induktionsspule ist $S = U/(f H) = pi^2/2 n D^2 mu_0$
- Nachdem das Rauschen eines Systems normalerweise von der Bandbreite abhängt gibt man die Empfindlichkeit meist in $[f H] = 1 "nT" dot "Hz"$ an: 
$ S = U/(f H) = (pi^2/2 n D^2 mu_0)/(10^(-9)) $
$arrow.double$ Empfindlichkeit linear in Spulenfläche und Windungszahl

Induzierte Spannung $U$ bei Windungszahl $n$ und Spulendurchmesser $D$ bei einem Magnetfeld-Frequenzprodukt von $1 "nT" dot "Hz"$:

#image("assets/induktionsmessung_graph.png")

Abschätzung Signal-Rauschen:
- Eine Spule mit Durchmesser $D$, Windungszahl $n$, Drahtdurchmesser $d$ und spezifischem Widerstand des Drahtes $rho$ hat einen ohmschen Widerstand $R = (4 rho n D)/d^2$.
- Dieser Widerstand führt zu thermischen Rauschen und damit einer Rauschspannung $U_N = sqrt(overline(u_N^2)) = sqrt(4 k_B T R Delta f)$.
- Signal/Noise ergibt sich direkt aus der Geometrie und Temperatur: 
$ S/N = U/U_N = (pi^2 mu_0 d sqrt(n D^3) f H)/(8 sqrt(k_B rho T Delta f)) $

Diese "Sorte" Abschätzungen muss man in der Planung eines Experimentes machen...

Trick zur Erhöhung der Empfindlichkeit: \
Einführen eines Materials mit hoher Permeabilität in die Induktionsspule $arrow.double$ "Flusskonzentrator"

Faktor x10-100 kann erreicht werden, leider stark nichtlinear in $H$ und frequenzabhängig

=== Hall-Sensor

Der klassische Hall-Effekt: \
1879 von Edwin Herbert Hall beobachtet: Spannungsabfall an einer Stromführenden Struktur in einem externen Magnetfeld

#image("assets/hall_effekt.png")

Ursache: Lorentzkraft wirkt auf bewegte Ladungsträger (Elektronen). Nachdem kein net. Strom fließt, muss ein el. Feld $E_y$ kompensieren.

$ (-e) E_y = (-e) v_x B_z arrow.double E_y = v_x B_z $

und damit die Hall-Spannung $U_H = E_y L_y = v_x B_z L_y$.

Für den Strom gilt: $I_x = j_x L_y L_z = (-e) n_(3D) v_x L_y L_z$ \
mit $j_x$ die Stromdichte und $n_(3D)$ die Elektronendichte. Damit gilt:
$ U_H = -1/(e n_(3D)) 1/L_z I_x B_z = R_H/L_z I_x B_z $

Empfindlichkeit der Hall-Sonde hängt lediglich von der Hallkonstanten $R_H$ ab.
- Verwendet werden dünnschicht-Halbleiter oder Grenzflächen-Leiter

#align(center)[
  #table(
    columns: 5,
    table.header(
      [*Halbleiter*],
      [InSb],
      [InAs],
      [Si],
      [GaAs]
    ),
    [*$R_H$ ($"cm"^3 "A"^(-1) "s"^(-1)$)*],
    [380], [100], [3000], [60],
  )
]

=== Magnetowiderstand

Der "magnetoresistive Effekt" bezeichnet (etwas diffus) die Änderung des elektrischen Widerstandes eines Materials durch anlegen eines äußeren Magnetfeldes (oft stark nicht-linear/sättigend):
- In nicht-magnetischen Materialien: Hall-Effekt
- In magnetischen/hybriden Materialien:
  - Anisotroper magnetoresistiver Effekt (AMR): Ausrichtung der Spins durch externes Magnetfeld, dadurch Änderung des Streuquerschnitts für Leitungselektronen $arrow.double$ Widerstand
  - Riesenmagnetowiderstand (GMR, CMR): Tritt in Dünnschichtsystemen auf (magnetisch/nichtmagnetisches Material). Elektrischer Widerstand hängt von der relativen Magnetisierung der magnetischen Schichten ab.

Magnetowiderstände werden meist über ihre maximale prozentuale Widerstandsänderung mit/ohne externes Feld charakterisiert:
$ (Delta R)/R [%] = (R(H) - R(0))/R(0) dot 100 $

- AMR: 3-4 %
- GMR: 6 ... 100 % 

...weniger ein Sensor, quasi "binär"

Massive industrielle Anwendung in Festplatten. Hier geht es nicht um den expliziten Wert des magnetischen Feldes, sondern "high" vs "low"

Auch massive industrielle Anwendung in der Automotivindustrie: Geschwindigkeitsmesser von Rädern, Drehzahlmesser im Getriebe, ...

=== SQUIDs

Super-Conducting Quantum Interference Device - SQUID

Empfindlichster Sensor für magnetische Feld- oder Flussmessungen -- Auflösung bis zu $10^(-14)$ Tesla. (Magnetfeld Herz: $10^(-10)"T"$, Magnetfeld Hirn: $10^(-13)"T"$)

Ein SQUID/Supraleiter hat folgende Eigenschaften:
- Verschwindender Widerstand $R=0$
- Meißner-Ochsenfeld-Effekt: Im Inneren des Supraleiters gilt $B=0$ wegen Abschirmstrom Feld aus Supraleiter -- idealer Diamagnet $chi = -1$.
- Flussquantisierung in supraleitenden Ring: Fluß durch supraleitenden Ring ist quantisiert, d.h. ganzzahliges Vielfaches von Flussquant $Phi_0 = h/(2e) = 2.067 dot 10^(-15) "Wb"$
- Josephson Effekt

#image("assets/squid.png")

==== History

/ 1911: K. Onnes beobachtet Supraleitung
/ 1961: Magnetische Flussquantisierung in supraleitenden Zylindern
/ 1975: SQUIDS kommen auf den Markt
/ 1986: SQUIDS mit "Hochtemperatur" Supraleitern $arrow.double$ läuft mit $"LN"_2$

==== Aufbau

- Ein SQUID besteht aus einem Supraleitenden Ring mit 1 oder 2 Josephson Tunnel-Kontakten
- Die Flussquantisierung erzwingt eine Quantisierung des Tunnelstroms (DC Josephson Effekt)

==== Funktionsweise

#image("assets/squid_graph.png")
#image("assets/squid_graph_2.png")

- bei jedem "Sprung" dringt ein weiteres Flussquant in den Ring ein
- der Suprastrom schafft jeweils das "fehlende" Gegenfeld um das innere des Rings feldfrei zu halten (Meißner-Ochsenfeld)
- Suprastrom kann (vereinfacht gesagt) als Spannung über dem SQUID abgegriffen werden $arrow.double$ "zählt" das externe Feld in Einheiten von $2.067 dot 10^(-15) "Wb"$ (keine direkte Absolutmessung)
- Um die Empfindlichkeit des SQUIDs zu steigern, wird ein supraleitender Flusstransformator verwendet. Dieser schließt mit seiner größten Schleife einen größeren magnetischen Fluss ein und bündelt diesen in der kleineren Spule in der Nähe des SQUIDs.
- Die Empfindlichkeit des SQUID hängt von der Fläche des umschlossenen Flusses ab.
- SQUIDs werden vielfältig angewendet, wenn es gilt, winzige magnetische Flüssen zu messen.

Myriaden von Anwendungen (leider alle kryogen)...
- Medizintechnik (Hirnströme, Herz, MRT, ...)
- Geologie (Erdmagnetfeld)
- Materialprüfung
- SQUID-Mikroskope

=== Atom-Magnetometer

Größenordnungen von Übergangsfrequenzen: Spektrum des (Wasserstoff) Atoms

- optische Frequenzen: $f ~ 600 "THz" = 6 dot 10^14 "Hz"$ ("grün")
- Spin-Bahn-Wechselwirkung: $6 "THz" 10^(-2)$ Effekt
- Hyperfein-Wechselwirkung: $6 "GHz" 10^(-5)$ Effekt
- Zeeman-Aufspaltung: $6 "MHz" 10^(-8)$ Effekt
- Schwarzkörper-Verschiebung: $10^(-14)$ Effekt
- Gravitationseffekte: $10^(-16)$ (für 1 m Höhenunterschied)
- Gravitationswellen, Variation der fundamentalen Naturkonstanten ... ???

Beste Atomuhr derzeit: $2 dot 10^(-18)$ (nach > 1 Tag Mittelung)

- die drei "dominierenden" Effekte sind magnetisch
- $arrow.double$ jede Atomuhr ist (auch) ein Magnetometer

Konkret: welches Feld können wir messen?: (A)normaler Zeemann-Effekt
$ Delta E_(m_j, m_(j-1)) = -g_j dot mu_B dot abs(B) $

- $g_j$ Landé Faktor (Beiträge zum Gesamtdrehimpuls, zwischen >0 und 2)
- $mu_B = 9.2741 dot 10^(-24) "Am"^2$ Bohr Magneton
- $abs(B)$ externes Magnetfeld

Größenordnung: \~ 0.1-1 MHz/G

- Energie-Shift \~ 100 kHz/G
- Genauigkeit \~ 1 Hz
- $arrow.double$ Sensitivität $10^(-5) "G" = 10^(-9) "T"$
- kann um \~2 Größenordnungen gesteigert werden, wenn um die magnetische 0 gemessen wird
- Sensivität steigt mit zeitlicher Mittelung (wie Atomuhr)

Miniaturisierte, optische Atommagnetometer "Chip-Scale Atomic Magnetometers":
- Vorteile (im Vergleich zu SQUIDs):
  - Gleiche (oder besser) Sensitivität
  - Raumtemperatur (evtl. sogar heizen)
  - Optisches Auslesen reduziert elektrische Störungen
- Nachteile
  - optischer Zugang (kein Multiplexing)
  - Nur bei nahezu Nullfeld

== Relevante Altklausurfragen

*Skizzieren und beschreiben Sie die vorgestellten Methoden zur Erzeugung von Magnetfeldern und geben Sie die dazugehörigen maximalen Feldstärken an*

#align(center)[
  #table(
    columns: 2,
    table.header(
      [*Effekt*], [*Sensortypen*],
    ),
    [Faradaysches Induktionsgesetz], [Induktionsspule, Fluxgate-Sensor], 
    [Galvanomagnetisch (Lorentzkraft)], [Hall-Sonde, Magnetowiderstand (AMR, GMR)],
    [Flussquantisierung + Josephson-Effekt], [SQUID],
    [Zeeman-Effekt], [Atom-Magnetometer],
  )
]

*Welche physikalischen Effekte werden zur Magnetfeldmessung genutzt? Nennen Sie zu jedem Effekt mindestens zwei Sensortypen in denen er zur Anwendung kommt.*

Galavanomagnetisch (Lorentzkraft): Hallsonde, Magnetowiderstand \
Faradaysches Indutionsgesetz: Induktionsspule, Fluxgate Sensor

*Wie funktioniert eine Feldmessspule? Wie misst man damit Wechselfelder und wie konstante Felder? Was sind ihre Vor- und Nachteile?*

Wechselfelder: stationäre Spule, induzierte Spannung direkt messbar:
$ U = n omega Phi_0 = pi^2/2 n D^2 mu_0 f H $

Gleichfelder: Spule wird rotiert $arrow.double$ periodisch induzierte Spannung $arrow.double$ Amplitude $prop$ B

Empfindlichkeit (Formel):
$ S = U/(f H) = pi^2/2 n D^2 mu_0 $

In Worten: induzierte Spannung pro Magnetfeld-Frequenz-Produkt; linear in Windungszahl und Spulenfläche

Vorteile: linear über großen Feldbereich, geringe Temperaturempfindlichkeit, mathematisch korrigierbar

Nachteile: große Fläche $arrow.double$ groß/schwer, schlechte räumliche Auflösung, störanfällig bei hohen Frequenzen (Streukapazitäten)

Empfindlichkeit erhöhen: Kern mit hoher Permeabilität (Flusskonzentrator) $arrow.double$ Faktor 10-100, aber: stark nichtlinear in $H$ und frequenzabhängig

*Wie ist die Empfindlichkeit einer Feldmessspule definiert? (In Worten und als Formel.)*

siehe oben

*Wie kann die Empfindlichkeit einer Feldmessspule erhöht werden? Welche Vorteile gewinnt man, welche Nachteile treten auf?*

siehe oben

*Was sind zwei typische galvanomagnetische Effekte und worauf beruhen sie?*

Beide beruhen auf der Lorentzkraft auf bewegte Ladungsträger in einem Magnetfeld: $arrow(F) = q arrow(v) times arrow(B)$

Hall-Effekt:
- Stromführender Leiter im Magnetfeld $arrow.double$ Lorentzkraft lenkt Elektronen quer zur Stromrichtung ab
- Ladungsanhäufung erzeugt Querfeld $E_y$, bis Gleichgewicht: $e E_y = e v_x B_z$
- Messbare Querspannung (Hall-Spannung) $U_H prop I dot B$

Magnetowiderstandseffekt:
- Lorentzkraft krümmt Elektronenbahnen $arrow.double$ längere effektive Weglänge
- $arrow.double$ erhöhte Streuwahrscheinlichkeit $arrow.double$ Widerstand steigt mit $B$
- In magnetischen Materialien zusätzlich durch Spin-Ausrichtung (AMR/GMR)

*Skizzieren und erklären Sie das Messprinzip des Halleffekts. Was ist der typische Messbereich in Luft (\~Vakuum) in Tesla? Wie lautet die Formel für die Hallspannung? Welche Halbleiter werden eingesetzt?*

Skizze:
#image("assets/hall_effekt.png")

Prinzip: Lorentzkraft auf bewegte Elektronen in Magnetfeld $arrow.double$ Ladungsverschiebung $arrow.double$ Kompensation durch el. Querfeld
$ U_H = R_H/L_z I_x B_z $

- $R_H = 1 \/ (e n_"3D")$: Hall-Konstante (materialabhängig)
- Empfindlichkeit steigt mit kleiner Schichtdicke $L_z$ und großem $R_H$

Eingesetzte Halbleiter: InSb, InAs, GaAs, Si (Dünnschicht oder Grenzflächenleiter)

Messbereich: $~ 10^(-4)"T"$ bis mehrere Tesla

*Welche zwei typischen Bauformen für Hallsonden gibt es? Skizzieren Sie wie das Hallplättchen jeweils eingebaut sein muss.*

- Flaches Hallplättchen: $B$ senkrecht zur Platte (senkrecht zum Strom)
- Nadel-/Stabform: für tangentiale Feldmessung

*Was versteht man unter dem Magnetowiderstandseffekt? Welche zwei Arten unterscheidet man und wie hängen sie vom Magnetfeld ab?*

Elektrischer Widerstand ändert sich mit externem Magnetfeld:
$ (Delta R)/R [%] = (R(H) - R(0))/R(0) dot 100 $

AMR (Anisotroper Magnetowiderstand):
- Ausrichtung der Spins $arrow.double$ Änderung des Streuquerschnitts für Leitungselektronen
- $Delta R \/ R approx 3-4 %$

GMR (Riesenmagnetowiderstand):
- Dünnschichtsystem: abwechselnd magnetische/nichtmagnetische Schichten
- Widerstand abhängig von relativer Magnetisierung der Schichten (parallel = niedrig, antiparallel = hoch)
- $Delta R \/ R approx 6-100 %$

*Wie lautet die relative Änderung des elektrischen Widerstands für den Fall dass das Magnetfeld normal auf die Stromrichtung ist, wie wenn es parallel dazu ist? Welches Problem ergibt sich wenn man -- wie meistens -- Halbleiter einsetzt?*

Magnetfeld normal zur Stromrichtung (transversal):
$ (Delta R)/R = (R(B) - R(0))/R(0) > 0 quad "(Widerstand steigt)" $

Magnetfeld parallel zur Stromrichtung (longitudinal):
$ (Delta R)/R approx 0 quad "(kaum Änderung)" $

Problem bei Halbleitern: Nichtlinearität, Sättigung $arrow.double$ eher binärer Einsatz ("high/low")

*Für welchen Feldstärkebereich werden Halleffekt-Sensoren eingesetzt, wie weit reichen Magnetowiderstand-Sensoren? Was ist etwa die untere Grenze in beiden Fällen?*

Hall-Effekt-Sensoren:
- Untere Grenze: $~10^(-4)"T"$ (begrenzt durch Rauschen und Offsetspannung)
- Obere Grenze: viele Tesla (linear, kein Sättigungseffekt)
$arrow.double$ breiter Messbereich, gut für quantitative Messung

Magnetowiderstand (AMR/GMR):
- Ähnliche untere Grenze: $~10^(-4)"T"$
- Sättigung bereits bei kleinen Feldern (AMR 3-4%, GMR 6-100%)
$arrow.double$ eher binärer Einsatz ("high/low"), nicht für präzise Absolutmessung

*Wie ist ein Sensor aufgebaut, der den Giant Magneto Resistance (GMR) Effekt ausnutzt? Was ist die Ursache für diesen Effekt?*

Aufbau:
- Dünnschichtsystem aus abwechselnden magnetischen und nichtmagnetischen Schichten
- Zwei magnetische Schichten: eine fest (Referenzschicht, fixierte Magnetisierung), eine frei (dreht sich mit externem Feld)
- Dazwischen: dünne nichtmagnetische Leiterschicht (z.B. Cu)

Ursache des Effekts:
- Elektronen haben Spin $arrow.double$ werden je nach relativer Ausrichtung von Spin und Magnetisierung unterschiedlich stark gestreut
- Parallel ausgerichtete Schichten: geringe Streuung $arrow.double$ niedriger Widerstand
- Antiparallel ausgerichtete Schichten: starke Streuung $arrow.double$ hoher Widerstand
- Externes Magnetfeld dreht freie Schicht $arrow.double$ ändert relative Ausrichtung $arrow.double Delta R \/ R$ bis $100%$

*Wo wird der GMR-Effekt heute eingesetzt?*

Festplatten (Lesekopf), Automotive (Rad-/Drehzahlsensor)

*Welche Effekte nutzt ein SQUID? Skizzieren Sie den Aufbau eines SQUIDs und kennzeichnen Sie auch Zu-und Abführung des Stroms sowie die Punkte zur Spannungsmessung. Welche Feldstärken kann man damit messen?*

Flussquantisierung, d.h. magn. Fluss durch supraleitenden Ring nur in ganzen Flussquanten möglich, Josephonseffekt, d.h. Cooper-Paare können durch Isolator/Normalleiter Tunneln, Skizze von Ring mit Josephsonkontakten und Stromzu/abführung, Spannungsmesspunkte, Josephsonkontakt ist dünner Isolator/Normalleiter, Messprinzip: SQUID zählt Flussquanten bei Erhöhung des magn.Flusses [eine Spannunsgoszillation pro Flussquant], Messen bis $10^(-15) "Wb"$

*Skizzieren Sie die funktionale Abhängigkeit des magnetischen Flusses durch ein SQUID als Funktion des externen Flusses. Erklären Sie wie es dazu kommt.*

#image("assets/squid_graph.png")

Der interne Fluss ist durch die Flussquantisierung auf ganzzahlige Vielfache von $Phi_0$ beschränkt. Der Suprastrom im Ring kompensiert die Differenz zum externen Fluss (Meißner-Ochsenfeld-Effekt)

*Wie wird die Empfindlichkeit eines SQUIDS noch weiter gesteigert?*

Supraleitender Flusstransformator -- große Einkoppelschleife bündelt Fluss in kleine Spule am SQUID