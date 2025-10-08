#let category-title(title, body) = {
  show heading.where(level: 1): it => block(width: 100%)[
    #set text(12pt, weight: "regular")
    #smallcaps(it.body)
    #v(-0.8em)
    #line(length: 100%, stroke: stroke(thickness: 0.2pt))
    #v(-0.3em)
  ]

  [= #title]
  body
  v(-0.5em)
}

#let awards-container(awards) = {
  for (title, date) in awards [
    #grid(columns: (1fr, auto), [#title], align(right)[*#date*])
    #v(-0.6em)
  ]
}

#let job-container(role, company, description, start-date, end-date, location, body) = {
  grid(
    columns: (1fr, auto), grid(
      rows: 2, row-gutter: 0.35em, [*#role*], [#company #h(0.5em) #box(description)],
    ), align(right)[*#start-date – #end-date* \ #location],
  )
  v(-0.8em)
  body
  v(-0.4em)
}

#let project-container(links, title, body) = {
  text(size: 1em)[*#title*]
  h(0.25em)

  "("
  for (label, url) in links {
    link(url, [*#label*])
    if links.last() != (label, url) {
      ","
      h(0.3em)
    } else {
      ")"
    }
  }

  linebreak()

  body
  v(-0.3em)
}

#let school-container(school, location, meta, start-date, end-date, body) = {
  grid(
    columns: (70%, 30%), [*#school* \ #meta], align(right)[*#location* \ #start-date - #end-date],
  )
  v(-0.9em)
  set par(leading: 0.4em)
  set list(indent: 0.3em)
  body
  v(-0.5em)
}
#show list: set list(marker: [•], tight: true, spacing: 0.1em)
