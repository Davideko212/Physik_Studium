#import "../../../TypstStuff/Basic_Template.typ": report, code

#show: report.with(
  title: "PMT1",
  subtitle: "Einzelmessung bei shot noise",
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

= Ausgangssituation

Thorsten hat am Freitag Nachmittag eine Lieferung Thorium-229 aus Oak-Ridge bekommen.

Dieses stellt er in Johannes Sterba's Radiochemielabor in einen Chemie-Abzug, um damit am Montag weiter zu arbeiten.

Allerdings hat dieses Labor einen fix installierten Detektor (Geigerzähler), der für eine Sekunde lang misst und einen fiesen Alarmton abgibt, wenn in dieser Zeit mehr als 50 Impulse (oder genau 50) gezählt werden.

Thorsten's Thorium-Probe ist zu aktiv, der Detektor springt an.

Also baut Thorsten eine Bleiabschirmung um sein Thorium, welches die Zählrate am Detektor auf 40 Impulse/Sekunde (gemittelt über viele, viele Messungen) reduziert.

Allerdings ist die Zahl der Impulse in einer 1-Sekunden-Einzelmessung ja statistisch verteilt (mit welcher Verteilung?).

Also springt der Detektor doch immer mal wieder an - deshalb schaltet Thorsten ihn über das Wochenende aus (das gibt sicher Ärger...).

Wie hoch ist die Wahrscheinlichkeit, dass Johannes am Montag in sein Labor geht, denn Detektor wütend wieder einschaltet und in der allerersten Messung (1 Sekunde) ein Alarmsignal bekommt?

= Wahrscheinlichkeit für Alarmsignal

Die Zahl der Impulse in einer 1-Sekunden-Einzelmessung ist Poisson-verteilt. 

Laut Wikipedia: "Die Poisson-Verteilung $P_lambda$ ist eine diskrete Wahrscheinlichkeitsverteilung. Sie wird durch einen reellen Parameter $lambda > 0$ bestimmt, der den Erwartungswert und gleichzeitig die Varianz der Verteilung beschreibt. Sie ordnet den natürlichen Zahlen $k = 0,1,2,...$ folgende Wahrscheinlichkeiten zu:"
$ P_lambda (k) = (lambda^k)/(k!) e^(-lambda) $

Thorsten hat durch die Abschirmung die mittlere Zählrate auf 40 Impulse/Sekunde reduziert, d.h. $lambda = 40$. Um nun die Wahrscheinlichkeit für eine Einzelmessung über $50$ Impulse/Sekunde zu erhalten, könnte man bei einer stetigen Gauß-Verteilung diese von $0$ bis $50$ integrieren und von $1$ subtrahieren. Da die Poisson-Verteilung hingegen jedoch diskret ist, können wir diese nicht integrieren. 

Es gilt $k in NN$ und somit können wir einfach über alle $k$ in $[0,49]$ die Wahrscheinlichkeiten der Funktion $P_lambda (k)$ aufsummieren und von 1 subtrahieren, um die Wahrscheinlichkeit für eine Einzelmessung für $k gt.eq 50$ zu erhalten:

$ 1 - sum^49_(k=0) P_40 (k) = 1 - sum^49_(k=0) (40^k)/(k!) e^(-40) tilde.eq 1 - 0.92966 = 0.07034 arrow.double 7.034% $

Es besteht eine Wahrscheinlichkeit von $7.034%$, dass Johannes in der allerersten Messung (1 Sekunde) ein Alarmsignal bekommt.

= Visualisierung der Poisson-Verteilung

#image("assets/poisson_graph.png")