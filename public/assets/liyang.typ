#import "./resume_template.typ": *
#import "@preview/fontawesome:0.6.0": *

// Load shared data (single source of truth — same files used by the website).
#let pubs = yaml("../../data/publications.yaml")
#let exps = yaml("../../data/experiences.yaml")
#let awds = yaml("../../data/awards.yaml")
#let edus = yaml("../../data/education.yaml")

// Render helpers

#let author-name(a) = {
  if type(a) == str { a } else if a.at("me", default: false) { strong(a.name) } else { a.name }
}

#let authors-list(xs) = {
  xs.map(author-name).join(", ")
}

// Render one publication entry matching the previous compact format.
#let publication(p) = {
  // Derive CV tag: replace 4-digit year in badge.text with 2-digit form; or append if missing.
  let yr2 = "'" + str(p.year).slice(-2)
  let tag = if "cv_tag" in p { p.cv_tag }
    else if "badge" in p and p.badge != none {
      let t = p.badge.text
      if t.contains(str(p.year)) { t.replace(str(p.year), yr2) } else { t + " " + yr2 }
    } else { yr2 }
  grid(
    columns: (1fr, 5fr),
    align(center)[ [#tag] \ ],
    align(left)[
      #authors-list(p.authors). #p.title. #emph(p.venue), #p.year.
      #if "cv_note" in p and p.cv_note != none { link(p.cv_note.href, p.cv_note.label) }
    ],
  )
}

// Render a minimal Markdown-ish inline markup: *bold*, _italic_, [label](url).
#let md-inline(s) = eval(
  s
    .replace(regex("\[([^\]]+)\]\(([^)]+)\)"),
      m => "#link(\"" + m.captures.at(1) + "\")[" + m.captures.at(0) + "]")
    .replace(regex("\*([^*]+)\*"), m => "#strong[" + m.captures.at(0) + "]")
    .replace(regex("_([^_]+)_"),   m => "#emph["   + m.captures.at(0) + "]"),
  mode: "markup",
)

// Personal info
#let name = "Yang(Marino) Li"
#let email = "yang.marino.li@gmail.com"
#let github = "github.com/yukiumi13"
#let linkedin = ""
#let phone = ""
#let personal-site = "yangmarino.li"
#let google-scholar = "kqrSHAYAAAAJ"
#let location = ""
#let today = datetime.today()

#set page(
  footer: align(center, text(size: 7pt, [Updated in #today.display("[month repr:short] [year]") | Copyright © Yang Li])),
)

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  google-scholar: google-scholar,
  accent-color: "#26428b",
  font: "SF",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

// =========== Education ===========
== Education

#for e in edus {
  edu(
    institution: e.institution,
    location: e.at("location", default: ""),
    dates: dates-helper(start-date: e.start, end-date: e.end),
    degree: e.degree,
  )
  for n in e.at("notes", default: ()) [ - #md-inline(n) ]
  parbreak()
}

// =========== Research Experience ===========
== Research Experience

#let mentor-line(ms) = (
  ms.map(m => if "url" in m { link(m.url, m.name) } else { m.name }).join(" and ")
)

#for e in exps.filter(x => x.at("on_cv", default: true)) {
  work(
    title: if "group" in e { e.group + ", " + e.institution } else { e.institution },
    location: e.at("location", default: ""),
    company: e.role,
    dates: dates-helper(start-date: e.start, end-date: e.end),
  )
  for d in e.at("details", default: ()) [ - #md-inline(d) ]
  if "mentor" in e and e.mentor.len() > 0 [
    - Mentor: #mentor-line(e.mentor)
  ]
  parbreak()
}

// =========== Publications ===========
== Publications

#let preprints   = pubs.filter(p => p.type == "preprint")
#let reviewed    = pubs.filter(p => p.type == "peer-reviewed")

#if preprints.len() > 0 [
  === Preprints
  #for p in preprints {
    publication(p)
    parbreak()
  }
]

#if reviewed.len() > 0 [
  === Peer-reviewed
  #for p in reviewed {
    publication(p)
    parbreak()
  }
]

// =========== Awards ===========
== Awards

#for a in awds {
  awards(
    name: a.name,
    date: a.year,
    issuer: a.issuer,
    url: "",
  )
  parbreak()
}

== Skills
- *Programming Languages*: Python, PyTorch, TensorFlow, MATLAB
