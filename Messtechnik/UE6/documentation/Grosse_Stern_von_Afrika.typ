#import "../../../TypstStuff/Basic_Template.typ": report, code

#show: report.with(
  title: "PMT1",
  subtitle: "Der große Stern von Afrika",
  lang: "de",
  authors: (
    (
      name: "David Koch",
      email: "e12503857@student.tuwien.ac.at",
      matrikelnr: "12503857",
    ),
  ),

  logo: image("../../../TypstStuff/assets/Logo_TU.png", width: 30%),
  footer-logo: image("../../../TypstStuff/assets/Logo_TU-Signet.png", width: 10%),
)

#show image: img => {
  align(center, scale(50%, reflow: true)[#img])
}
#show table: t => {
  align(center, t)
}

= Angabe und Recherche

*Der große Stern von Afrika ist einer der größten Diamanten der Welt. Er hat $530.2$ Karat und wir nehmen an, dass er ein reiner Kohlenstoff-Diamant, ohne Verunreinigungen ist. Berechnen Sie die Anzahl der Atome in einer Einheitszelle, wenn die Seite der Einheitszelle $a=3.57 "Angstrom"$ lang ist.*

"Karat" hat mehrere Definitionen, einmal den Goldfeingehalt und das Edelsteingewicht. Da für die Rechnung die Karatzahl eines Kohlenstoff-Diamants gegeben ist, wird die Edelsteingewicht-Definition verwendet. Diese ist das metrische Karat, eine Gewichtseinheit, die exakt $0.2 "g" hat(eq) 200 "mg"$ entspricht. Somit hat der gegebene Diamant folgendes Gewicht (in Kilogramm):
$ 1 "Kt" = 0.2 * 10^(-3) "kg" arrow.double 530.2 "Kt" = 530.2 * 0.2 * 10^(-3) "kg" = 106.04 * 10^(-3) "kg" $

Das Ångström ist dagegen eine Maßeinheit der Länge, die exakt $0.1 "nm"$ entspricht, d.h.:
$ 1 angstrom 10^(-10) "m"$.

Um aus dem Gewicht des Diamanten auf das Volumen zu schließen, ist ebenfalls die Dichte benötigt. Die Dichte eines reinen Diamanten entspricht (laut Wikipedia #footnote[https://de.wikipedia.org/wiki/Diamant]) ca. $3.52 "g"/"cm"^3$.

= Rechnung

Das Volumen ist Masse durch Dichte, d.h.:
$ V = m/rho = (106.04 * 10^(-3) "kg")/(3.52 * 10^3 * "kg"/"m"^3) = 30.125 * 10^(-6) "m"^3 $

Als nächstes muss die Anzahl der Einheitszellen berechnet werden:
$ a = 3.57 angstrom arrow.double V = a^3 = (3.57 angstrom)^3 approx 45.5 * 10^(-30) "m"^3 = 4.55 * 10^(-29) "m"^3 $
$ N_Z = V_"ges"/V_Z = (30.125 * 10^(-6) "m"^3)/(4.55 * 10^(-29) "m"^3) approx 6.621 * 10^(23) $

Die Gesamtanzahl lässt sich nun durch die Avogadro-Konstante $N_A$ und die Molmasse $M_C$ von Kohlenstoff berechnen. $N_A$ gibt an, wie viele Atome in einem Mol eines Stoffes enthalten sind, und $M_C approx 12.01 "g"/"mol"$ ist einfach eine Naturkonstante:
$ N_"Atome" = m/M_C * N_A = (106.04 * 10^(-3) "kg")/(12.01 * 10^(-3) "kg"/"mol") * 6.022 * 10^23 "mol"^(-1) $
$ N_"Atome" approx 8.83 "mol" * 6.022 * 10^23 "mol"^(-1) approx 5.316 * 10^24 $

Für die Atome pro Einheitszelle gilt somit:
$ n = N_"Atome"/N_Z = (5.316 * 10^24)/(6.621 * 10^(23)) approx 0.8 * 10^1 = 8 $

Somit enthält die Einheitszelle eines Kohlenstoff-Diamants ziemlich genau jeweils 8 Kohlenstoff-Atome.

= Interpretation

Das Ergebnis $n=8$ ist exakt die bekannte Struktur des kubisch-diamantenen Gitters:
- Es gibt 8 Eckatome mit Gewichtung $1/8$, d.h. effektiv gilt $8 * 1/8 = 1$
- Es gibt 6 Flächenatome mit Gewichtung $1/2$, d.h. effektiv gilt $6 * 1/2 = 3$
- Es gibt 4 Innenatome mit Gewichtung $1$, d.h. effektiv gilt $4 * 1 = 4$
$ arrow.double 1 + 3 + 4 = 8 "(effektive) Atome" $

#image("assets/kristallstruktur_diamant.gif", width: 50%)