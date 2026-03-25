// stolen and adapted from https://typst.app/universe/package/hannes-thesis

#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.7": *
#show: codly-init.with()

#let text-normal = 10pt
#let text-small = 9pt
#let text-sub = 12pt
#let text-subsub = 11pt
#let text-big = 14pt
#let text-huge = 18pt
#let text-title = 22pt

#let build-author-grid(
  authors,
  max-columns: 3,
  spacing: 1em,
  show-email-links: true,
) = {
  // Helper to render a single author entry
  let render-author(author) = {
    let name = author.at("name", default: "")
    let email = author.at("email", default: none)

    // Get additional fields excluding name and email
    let extra-fields = author
      .pairs()
      .filter(
        ((key, val)) => (
          key not in ("name", "email") and val != none and str(val) != ""
        ),
      )

    align(center)[
      #if name != "" [
        #strong(name) \
      ]

      // Email
      #if email != none [
        #if show-email-links [
          #link("mailto:" + email, email) \
        ] else [
          #email \
        ]
      ]

      #for (key, val) in extra-fields [
        #val \
      ]
    ]
  }

  let num-cols = calc.min(authors.len(), max-columns)

  block(
    above: 10mm,
    grid(
      columns: (1fr,) * num-cols,
      gutter: spacing,
      ..authors.map(render-author)
    ),
  )
}

#let report(
  title: [Title],
  subtitle: "",
  authors: (),
  abstract: none,
  logo: none,
  footer-logo: none,
  bibliography: none,
  lang: "en",
  outlines: (),
  toc: outline(),
  font-heading: "Libertinus Serif",
  font-normal: "New Computer Modern",
  date-format: "[day].[month].[year]",
  doc,
) = {
  assert(authors.len() > 0, message: "Authors array cannot be empty")

  set document(
    title: title,
    author: authors.first().name,
    date: datetime.today(),
  )

  set page(
    header: [
      #block(below: .6em)[
        #title
        #h(1fr)
        #subtitle
      ]
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer: [
      #grid(
        columns: (1fr, 1fr),
        rows: 100%,
        align: (left + horizon, right + horizon),

        footer-logo, context counter(page).display("1"),
      )
    ],
    numbering: "1",
  )

  set heading(numbering: "1.1")
  show heading: set text(font: font-heading, weight: "bold")
  show heading: set block(below: 1.2em, above: 2.4em, sticky: true)
  show heading.where(level: 1): set text(size: text-big)
  show heading.where(level: 2): set text(size: text-sub)
  show heading.where(level: 3): set text(size: text-subsub)

  set text(lang: lang)
  set text(font: font-normal)
  set par(justify: true, justification-limits: (
    spacing: (min: 66.67% + 0pt, max: 150% + 0pt),
    tracking: (min: -0.01em, max: 0.02em),
  ))

  show std.title: set align(center)
  show std.title: set block(below: 0mm)
  show std.title: set text(
    size: text-title,
    weight: "bold",
    font: font-heading,
  )

  show outline.entry.where(level: 1): it => {
    text(font: font-heading)[#strong(it)]
  }

  {
    set page(header: none, footer: none)
    set align(center)
    v(3em)

    logo

    v(5em)
    std.title()
    linebreak()
    text(subtitle, text-huge, weight: "semibold", font: font-heading)

    build-author-grid(authors)
    block(datetime.today().display(date-format))

    set align(left)
    toc
  }
  pagebreak()

  for outline in outlines [
    #outline
    #pagebreak()
  ]

  doc

  if bibliography != none {
    pagebreak()
    bibliography
  }
}

#let code(caption: none, description: none, skips: none, body) = {
  let nested() = {
    codly(
      header: description,
      skips: skips,
    )
    body
  }
  return figure(
    nested(),
    caption: caption,
    supplement: [Quellcode],
    kind: "code",
  )
}

#let code-file(
  caption: none,
  filename: none,
  lang: none,
  text: none,
  range: none,
  ranges: none,
  skips: none,
) = {
  let nested() = {
    codly(
      header: filename,
      ranges: ranges,
      range: range,
      skips: skips,
    )
    raw(text, block: true, lang: lang)
  }
return figure(
    nested(),
    caption: caption,
    supplement: [Quellcode],
    kind: "code",
  )
}