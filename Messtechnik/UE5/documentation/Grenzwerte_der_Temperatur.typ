#import "../../../TypstStuff/Basic_Template.typ": report, code

#show: report.with(
  title: "PMT1",
  subtitle: "Grenzwerte der Temperatur",
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

= Tiefste Temperatur

*Gibt es diese tiefste Temperatur tatsächlich? Wenn es sie gibt, wie könnte sie theoretisch erreicht werden (was muss erreicht werden), wenn nicht, wieso?*

Im Teilchenmodell für ein ideales Gast ist die Temperatur nichts anderes als die mittlere Geschwindigkeit der Teilchen bzw. deren mittleren kinetischen Energie. 

Temperatur ist über die Entropie $S$ definiert. Wenn das Volumen und die Teilchenzahl konstant sind, sieht das Verhältnis folgend aus:
$ 1/T = (partial S)/(partial E) $

Damit eine Temperatur von $0 "K"$ erreicht wird, muss ein System eine Entropie von 0 erreichen. Der dritte Hauptsatz der Thermodynamik besagt, dass es unmöglich ist, ein System in endlich vielen Schritten auf eine Entropie $S = 0$ zu bringen, d.h. auf $0 "K"$ zu kühlen. Das ist so, weil jeder Kühlprozess eine Entropiedifferenz $Delta S$ zwischen zwei Zuständen nutzt, aber:
$ lim_(T arrow 0) (Delta S) = 0 $

Das heißt die Entropiedifferenz zwischen je zwei Zuständen verschwindet bei Annäherung an $0 "K"$, jeder weitere Schritt wird wirkungsärmer, man braucht unendlich viele Schritte. Somit ist die tiefste Temperatur mathematisch als Grenzwert wohldefiniert, aber als erreichbarer Zustand unmöglich.

= Höchste Temperatur

*Gibt es eine theoretische höchste Temperatur? Von welchen Parametern würde das abhängen?*

Ab der Hagedorn-Temperatur (ca. $10^12 "K"$) wird jedes System aus Hadronen zu einem Quark-Gluon-Plasma. Die Temperaturskala setzt sich hier zwar noch fort, aber mit anderen Freiheitsgraden.

Heutzutage wird die Planck-Temperatur als die fundamentale Grenze für eine höchste Temperatur angenommen. Bei $T_P$ hat ein typisches thermisches Photon eine Wellenlänge von der Planck-Länge, wodurch gleichzeitig Quantenmechanik und allgemeine Relativitätstheorie versagen, dieses System zu beschreiben, denn die Raumzeit selbst hätte keine wohldefinierte Struktur mehr.

Die Planck-Temperatur lässt sich folgend berechnen:
$ k_B T_P = sqrt((planck c^5)/G) arrow.double T_P = 1/k_B sqrt((planck c^5)/G) approx 1.4 * 10^32 "K" $
Die Parameter hierbei wären die Planck-Konstante $planck$, die Lichtgeschwindigkeit $c$, die Gravitationskonstante $G$ und die Boltzmann-Konstante $k_B$. D.h. alle Parameter sind fest verankerte Konstanten.

