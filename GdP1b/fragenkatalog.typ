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

= Reale feste Körper

== Atomares Modell der Aggregatzustände

TODO: Dichte, mittlere Intermolekularabstände, Verhältnis der potentiellen und kinetischen Energien, Verschiebbarkeit der Moleküle, Fern- und Nahordnung

=== Atomares Wechselwirkungspotential

TODO: AWP, Konkrete Beispiele: starre Kugeln, Lennard-Jones. Charakterisierung der Aggregatzustände anhand vom AWP

== Deformierung von Festkörpern

=== Elastische vs Plastische Deformationen

=== (I-)Reversibilität der Deformationen (mikroskopische Erklärung)

== Hooke'sches Gesetz

TODO: Geltungsbereich (makroskopisch und mikroskopisch), Elastizitätsmodul,
Spannung, relative Dehnung

== Spannungs-Dehnungs-Diagramm

== Kompressionsmodul/Kompressibilität, Scher- und Torsionsmodul

== Biegung eines Balkens

TODO: nur allg. Betrachtungen mit Formel [ohne Herleitung], Def.
Flächenträgheitsmoment. Materialersparnis bei speziellen Balkenprofilen.

== Elastische Hysterese. Deformationsarbeit. (Nicht)Erhaltung der gesamten mechanischen Energie.


= Hydrostatik

== Freie Verschiebbarkeit von Molekülen in Flüssigkeiten, Schubmodul von Flüssigkeiten, Statischer Druck in einer Flüssigkeit (Isotropie). Was bestimmt die Form der Flüssigkeitsoberfläche?

== Kräfte auf ein Flüssigkeitselement.

== Hydraulische Presse

== Schweredruck

TODO: Erklärung, Formel, hydrostatisches Paradoxon

== Auftriebskraft

TODO: Entstehungsmechanismus, Archimedisches Prinzip

== Oberflächenspannung

TODO: mikroskopische Erklärung, phänomenologische Folgen

== Äquivalenz Oberflächenspannung und spez. Oberflächenenergie

TODO: ohne Beweis

== Grenzflächen, Entstehen eines Meniskus beim Kontakt der Flüssigkeitsoberfläche mit Gefäßwand (Randwinkel)

TODO: "qualitative Erklärungen"

== Kapillarität

TODO: "nur qualitative Erklärungen"


= Reibung zwischen festen Körpern

== Haftreibung

== Gleitreibung

== Rollreibung

== Reibungskraft als Bsp. für eine nichtkonservative Kraft


= Gase und kinetische Gastheorie

== Makroskopische und mikroskopische Betrachtung, allgemeine Gasgleichung (thermische Zustandsgleichung)

TODO: makroskopische und mikroskopische Form, Kompressibilität, Druck (Definition), Druckeinheiten

== Luftdruck und barometrische Höhenformel (makroskopisch und mikroskopisch). Entmischung der Atmosphäre. Vergleich der funktionellen Abhängigkeiten von der Höhe für Gasen und Flüssigkeiten.

== Modell des idealen Gases (Hartkugelgas)

== Grundgleichungen der kinetischen Gastheorie

TODO: Herleitungsansatz, mittlere kin. Energie und abs. Temperatur

== Gleichverteilungssatz

TODO: Formulierung und Anwendung (spezifische Wärme eines Gases, eines Festkörpers)


= Maxwell-Boltzmannsche Geschwindigkeitsverteilung

== Verteilungsfunktion allgemein

== Verteilungsfunktion für die Geschwindigkeitskomponente und den Geschwindigkeitsvektor

TODO: ohne Herleitung

== Verteilungsfunktion für den Absolutbetrag der Geschwindigkeitskomponente

TODO: Ableitung aus den vorigen Verteilungsfunktionen

== Temperaturabhängigkeit, Molekülmassenabhängigkeit

== Wahrscheinlichste und mittlere Geschwindigkeit, Wurzel aus dem mittleren Geschwindigkeitsquadrat

TODO: Definitionen und Werte

== Stoßquerschnitt und mittlere freie Weglänge

TODO: Definitionen; Mittlere freie Weglänge: von welchen Größen abhängig

== Molekularstrahl, Lichtmühle


= Transportprozesse in Gasen

== Diffusion (Transport von Teilchen). Phänomenologische Beschreibung: Teilchenstromdichte, Diffusionskonstante (= Diffusionskoeffizient), 1. und 2. Ficksche Gesetze (ohne Herleitung)

== Wärmeleitung in Gasen

TODO: mikroskopische Erklärung: Transport von kinetischer Energie

== Viskosität (Zähigkeit) von Gasen

TODO: mikroskopische Erklärung: Transport von Impuls. 


= Strömende Flüssigkeiten und Gase

== Allgemeine Betrachtungen (Strömungsfeld, Stromlinie)

== Strömungstypen

== Substantielle Beschleunigung

== Euler-Gleichung für ideale Flüssigkeiten

== Kontinuitätsgleichung (für Röhren und allgemein)

TODO: Erklärung des Begriffes der Divergenz.

== Bernoulli-Gleichung

TODO: Herleitung (nur Ansatz). Beispiele wo der Bernoulli Effekt vorkommt.


= Laminare Strömungen

== Innere Reibung

TODO: Reibungskraft, Def. dynamische Zähigkeit/Viskosität, Grenzschicht.

== Laminare Strömung durch Rohre

=== Strömungsprofil (Rotationsparaboloid)

=== Hagen-Poiseuille-Gesetz (nur Erklärungen ohne Herleitungen)

== Stokes'sches Gesetz

=== Prinzip des Kugelfallviskosimeters


= Turbulente Strömungen

== Navier-Stokes-Gleichung

TODO: im Vergleich mit der Euler-Gleichung

== Wirbel und Zirkulation

TODO: Entstehung von Wirbeln, Strömungswiderstand/Widerstandsbeiwert


= Aerodynamik

== Dynamischer Auftrieb

== Magnus-Effekt

== Reynoldsche Zahl


= Temperatur und Wärmemenge

== Temperaturmessung, Thermometer und Temperaturskalen

== Thermische Ausdehnung fester und flüssiger Körper 

TODO: Ursasche anhand des atomaren Wechselwirkungspotentials

== Thermische Ausdehnung von Gasen, Gasthermometer, absolute Temperaturskala

== Wärmemenge und spezifische Wärme, spezifische Molwärme

== Molvolumen, Avogadrozahl

== Innere Energie (mikroskopisch), $C_V$, $C_p$, $kappa$

== Molekulare Deutung der spezifischen Wärme, spezifische Wärme fester Körper, Dulong-Petitsches Gesetz


= Wärmetransport

== Wärmeleitung in Flüssigkeiten und Gasen, Konvektion

== Wärmeleitung fester Körper

TODO: bes. (besonders?) von Metallen

== Fourier- und Wärmeleitungsgleichung


= Erster Hauptsatz der Thermodynamik

== Def. TD- System und Zustandsgrößen, Wiederholung allg. Zustandsgleichung und innere Energie, Def. isotherme, isobare und isochore Prozesse

== Formulierungen des 1. HS (Thomson, Plank), matematische Formulierung

== Genaue Behandlung spezieller Prozesse als Beispiele für den 1. HS

=== Isochore Prozesse

=== Isobare Prozesse (Enthalpie)

=== Isotherme Prozesse (Boyle-Mariottesches Gesetz; Arbeitsleistung)

=== Adiabatische Prozesse

TODO: Adiabatengleichung, Gegenüberstellung Isothermen und Adiabaten


= Zweiter Hauptsatz der Thermodynamik

== Carnotscher Kreisprozess

TODO: Wirkungsweise, Teilschritte, Carnotscher Wirkungsgrad, Carnotsche Proportionen, Carnotsche Satz

== Unterscheidung Exergie und Anergie

== Äquivalente Formulierungen des 2. HS

== TD-Temperaturskala aufgrund des 2. HS


= Entropie

Carnotsche Proportion, ein belibiger Kreisprozess als Summe von infinitesimalen Carnotprozessen, Def. als Zustandsgröße, $Delta S$ beim reversiblen Kreisprozess, $Delta S_"isobar"$ und $Delta S_"isochor"$; Mikroskopische Deutung der Entropie. Boltzmannsche Formel, Zusammenhang Entropie und Wahrscheinlichkeit eines TD-Zustandes, Beispiel Temperaturausgleich, Gasexpansion ins Vakuum, Mischungsentropie; reversible und irreversible Prozesse


= Thermodynamische Potentiale (dritter Hauptsatz der Thermodynamik)

Def. freie Energie, Def. freie Enthalpie (= Gibbssches Potential); Gleichgewichtszustände (Merksätze); dritter HS der TD