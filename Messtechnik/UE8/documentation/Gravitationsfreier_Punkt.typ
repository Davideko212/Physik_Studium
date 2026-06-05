#import "../../../TypstStuff/Basic_Template.typ": report, code

#show: report.with(
  title: "PMT1",
  subtitle: "Gravitationsfreier Punkt",
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

*Irgendwo auf der Verbindungslinie zwischen Erde und Mond muss es einen Punk geben, an dem sich die Gravitationskraft das Mondes und die der Erde entgegengesetzt kompensieren und völlige Schwerelosigkeit herrscht (andere Himmelskörper werden vernachlässigt).*

*Wo liegt dieser Punkt?*

*Erde und Mond dürfen als punktförmige, ruhende Massen angenommen werden.*

Masse der Erde: $M_E = 5.972 * 10^24 "kg"$

Masse des Mondes: $M_M = 7.346 * 10^22 "kg"$

Distanz zwischen Erde und Mond: $d = 384.400 "km"$

= Rechnung

Das allgemeine Gravitationsgesetz lautet:
$ F = G * (m_1 * m_2)/r^2 $

Da Erde und Mond als punktförmige, ruhende Massen angenommen werden dürfen, liegt der gravitationsfreie Punkt dort, wo die Anziehungskräfte beider Körper gleich sind (auf eine Testmasse mit $1"kg"$ z.B.):
$ F_E = F_M $ 
$ arrow.double G * (M_E * 1"kg")/r_1^2 = G * (M_M * 1"kg")/r_2^2 $

Wenn $r$ die Distanz der Testmasse zur Erde ist, dann ist $d-r$ die Distanz der Testmasse zum Mond:
$ G * (M_E * 1"kg")/r^2 = G * (M_M * 1"kg")/(d-r)^2 $
$ (M_E)/r^2 = (M_M)/(d^2 - 2*d*r + r^2) $
$ M_E * (d^2 - 2*d*r + r^2) = M_M * r^2 $
$ (M_E - M_M) * r^2 - 2*d*M_E * r + M_E * d^2 = 0 $

Quadratische Gleichung nach $r$ lösen:
$ r_(1,2) = (2*d*M_E plus.minus sqrt((-2*d*M_E)^2 - 4 * (M_E - M_M) * M_E*d^2))/(2*(M_E - M_M)) $
$ r_1 approx 4.324 * 10^5 "m", quad r_2 approx 3.46 * 10^5 "m" $

Der Punkt muss sinnvollerweise zwischen Erde und Mond liegen, d.h. es muss $r < d$ gelten. Somit kommt nur $r_2$ in Frage, d.h. der gravitationsfreie Punkt zwischen Erde und Mond befindet sich bei einer Distanz von ca. $346000 "km"$ von der Erde (auf einer geraden Linie zum Mond).