#import "Basic_Template.typ": report

#show: report.with(
  title: "Beispieldokument zum Ausprobieren",
  subtitle: "Typst ist so viel besser als LaTeX",
  lang: "de",
  authors: (
    (
      name: "David Koch",
      email: "david.koch@student.tuwien.ac.at",
      matrikelnr: "12503857",
    ),
  ),

  logo: image("assets/Logo_TU.png", width: 30%),
  footer-logo: image("assets/Logo_TU-Signet.png", width: 10%),

  outlines: (
    outline(title: [Abbildungsverzeichnis], target: figure.where(kind: image)),
    outline(title: [Tabellenverzeichnis], target: figure.where(kind: table)),
    outline(title: [Quellcode], target: figure.where(kind: raw)),
  ),

  toc: outline(title: [Custom Outline Title]),
)