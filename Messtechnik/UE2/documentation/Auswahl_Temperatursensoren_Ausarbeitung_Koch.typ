#import "../../../TypstStuff/Basic_Template.typ": report, code

#show: report.with(
  title: "PMT1",
  subtitle: "Auswahl Temperatursensoren",
  lang: "de",
  authors: (
    (
      name: "David Koch",
      email: "david.koch@student.tuwien.ac.at",
      matrikelnr: "12503857",
    ),
  ),

  logo: image("../../../TypstStuff/assets/Logo_TU.png", width: 30%),
  footer-logo: image("../../../TypstStuff/assets/Logo_TU-Signet.png", width: 10%),
)

= Sensoren und ihre Charakteristika

Folgende Temperatursensoren sind gegeben:

#figure(
  grid(
    columns: (auto),
    rows: (auto, auto),
    gutter: 3pt,
    image("../FrageKL01.png", width: 73%),
    image("../FrageKL02.png", width: 73%),
    image("../FrageKL03.png", width: 73%),
  ),
  caption: "Die Kennlinien der drei Temperatursensoren"
)

#align(center)[
  #table(
    columns: 4,
    table.header(
      [],
      [*Sensor 1*],
      [*Sensor 2*],
      [*Sensor 3*],
    ),
    [Ansprechverhalten],
    [0.5 #math.mu\s], [0.7 #math.mu\s], [0.05 #math.mu\s],
    [Messbereich],
    [-10-50°C], [0-50°C], [0-250°C]
  )
]

= Anwendung im Kühlhaus

Ein Kühlhaus soll im Temperaturbereich 0-4°C stabilisiert werden.

Für diesen Anwendungsfall würde ich *Sensor 1* nehmen, denn dessen Messbereich ist der einzige, der bis in die Minusgrade geht. Da das Kühlhaus von 0-4°C stabilisiert werden soll, ist es wichtig, dass der Sensor bei \<0°C nicht direkt aufhört zu messen. Unter anderem zeigt die Kennlinie von Sensor 1, dass dieser im Bereich 0-25°C genaue Messungen (im Vergleich zu 25-50°C) liefert. Ich nehme mal an, dass das Kennliniendiagramm bis -10°C gehen sollte und der Sensor bis -10°C genau messen kann. Das Ansprechverhalten des Sensors spielt bei diesem Anwendungsfall keine Rolle, denn die Temperaturänderungsrate in einem Kühlhaus ist sehr langsam.

= Anwendung in einer Bohrvorrichtung

Die Bohrspitze einer automatischen Bohrvorrichtung soll überwacht werden, es wird in organischem Material gebohrt, die Temperatur darf 47°C nicht überschreiten.

Hier kommen meiner Meinung nach Sensor 2 sowie Sensor 3 in Frage.

Vorteile von Sensor 2:
- Genauere Messungen im Rahmen 25-50°C

Vorteile von Sensor 3:
- Besseres (schnelleres) Ansprechverhalten
- Größerer Messbereich (0-250°C)

Da das Ansprechverhalten bei allen Sensoren bei \<1 #math.mu\s liegt und keiner der Anwendungsbereiche so eine hohe Zeitpräzision braucht, ist dieser Vorteil von Sensor 3 vernachlässigbar. Auch der größere Messbereich ist nicht unbedingt von Vorteil, denn wenn der Bohrkopf eine Temperatur von 47°C nicht überschreiten darf und somit bei einer spätmöglichsten Unterbrechung der Bohrung (also bei Überschreitung von 47°C) trotzdem noch ein Pufferbereich von 3°C existiert, ist der größere Messbereich ebenfalls von wenig Nutzen. Letztendlich habe ich mich für *Sensor 2* entschieden, da genauere Messungen im relevanten Temperaturbereich für mich am wichtigsten sind und die Vorteile von Sensor 3 beide vernachlässigbar sind.

= Anwendung im Wasserbad

Ein Wasserbad (105 Liter) soll stabil in einem Temperaturbereich von 30-45°C gehalten werden.

Hierbei würde ich mich erneut für *Sensor 2* entscheiden, mit der gleichen Begründung wie bei der Bohrvorrichtung. Wenn der Temperaturbereich nicht bei 45°C enden würde sondern bei >50°C, müsste hier klarerweise Sensor 3 verwendet werden, da dieser als einziger Sensor so hohe Temperaturen messen kann.