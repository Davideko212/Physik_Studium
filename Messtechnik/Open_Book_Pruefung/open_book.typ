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
    TODO
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

#set page(margin: (
  top: 1cm,
  bottom: 1cm,
  x: 1.5cm,
))
#set text(size: 9.5pt)

#show: body => title-page(
  title: [Physikalische Messtechnik 1],
  subtitle: [Open Book Informationssammlung],
  name: "David Koch",
  email: "mailto:e12503857@student.tuwien.ac.at",
  body
)

#set page(columns: 2)

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

TODO