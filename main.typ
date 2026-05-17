#import "template.typ": *
#show: template

// ==========================================
// --- COVER ---
// ==========================================
#context {
  if target() == "paged" { // Paged output, like PDF, SVG, etc.
    page(
      background: image("images/medicine-buddha-lamp.jpeg", width: 100%, height: 100%),
      numbering: none,
      margin: auto,
      [
        #set par(spacing: 0em)
        #set par(justify: false)
        #place(top + center, [
          #text(70pt, weight: "bold", fill: white, "Atiyoga")\
          #v(9pt)\
          #text(35pt, weight: "bold", fill: white, "Dharma Talks")
        ])
        #place(bottom + center, text(30pt, fill: white, book_author))
      ]
    )
    pagebreak()
  } else if target() == "html" {
    book_author
  }
}

// ==========================================
// --- COPYRIGHT and PUBLICATION INFO ---
// ==========================================
#context {
  set par(first-line-indent: 0pt)
  let copyright_text = [
    Published 2026-04-27 and
    updated #datetime.today().display("[year]-[month]-[day]").\
    This text is self-secret and self-protected.

    Copyright © #datetime.today().display("[year]"), Lama Dawai Gocha.\
    #link("https://www.meditationonline.org")[#underline[www.meditationonline.org]]

    Licensed under #link("https://creativecommons.org/licenses/by-nc-sa/4.0/")[CC BY-NC-SA 4.0].\
    No AI was used in the making of this text. 
  ]

  if target() == "paged" {
    set page(numbering: none) // Copyright page does not get a page number.
    set par(spacing: 1.1em) // Some white space between sections.
    place(bottom + left, copyright_text)
    pagebreak()
  } else if target() == "html" {
    copyright_text
  }
}

// ==========================================
// --- FRONT MATTER ---
// ==========================================
#set page(numbering: "i")
#counter(page).update(1)

// ==========================================
// --- Special Thanks ---
// ==========================================

#context {
  set par(spacing: 1.2em, first-line-indent: 0em)
  set list(tight: false, spacing: 1.2em)

  no_outline[= Special Thanks]
  [
    This collection of Dharma talks was made possible through the efforts of many in the Meditation Online sangha.

    Special thanks are extended to:

    - Yeshe, for his many years of work preserving and sharing the teachings through our YouTube collection.
    - Makye, for initiating this book, and for all her work on sharing the Dharma through transcriptions.
    - Dorje Lekpa, for selecting the chapters and formatting.
    - Masam Chonyi, for her corrections to the transcripts.
    - Rangjung, for his editorial oversight and corrections.
    - Osal Long-gye, for his corrections to the transcripts.
  ]
  pagebreak()
}

// ==========================================
// --- TABLE OF CONTENTS --- 
// ==========================================
#outline(title: "Table of Contents", indent: 2em)
#pagebreak()

// ==========================================
// Curated teachings.
// ==========================================
#set page(numbering: "1")
#counter(page).update(1)

#include "chapters/2024-11-02-stuck-no-more.typ"
#pagebreak(weak: true)

#include "chapters/2025-04-21-dzog-tonglen.typ"
#pagebreak(weak: true)

#include "chapters/2025-05-15-sensitivity.typ"
#pagebreak(weak: true)

#include "chapters/2025-05-16-great-canvas.typ"
#pagebreak(weak: true)

#include "chapters/2025-05-23-isolations.typ"
#pagebreak(weak: true)

#include "chapters/2025-06-14-many-layers.typ"
#pagebreak(weak: true)

#include "chapters/2025-07-02-letting-be.typ"
#pagebreak(weak: true)

#include "chapters/2025-07-18-wakeup.typ"
#pagebreak(weak: true)

#include "chapters/2025-10-10-turn-awa.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-05-bravery.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-28-four-ponds.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-07-subjectivity.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-22-thought-isolation.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-24-time-displacement.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-27-invoking.typ"
#pagebreak(weak: true)

#include "chapters/2026-01-14-the-phasing.typ"
#pagebreak(weak: true)

#include "chapters/2026-02-06-medi-self-lib.typ"
#pagebreak(weak: true)

#include "chapters/2026-02-09-spheres.typ"
#pagebreak(weak: true)

// ==========================================
// Final Page
// ==========================================
#context {
  if target() == "paged" { // Paged output, like PDF, SVG, etc.
    page(
      background: image("images/candle.jpeg", width: 100%, height: 100%),
      numbering: none,
      margin: auto,
      [
        #set par(spacing: 0.17em)
        #set par(justify: false)
        #place(bottom + left, dx: -40pt, dy: 0pt, text(30pt, fill: white,
          [May

          all

          beings

          benefit]
        ))
      ]
    )
  } else if target() == "html" {
    [May all beings benefit.]
  }
}
