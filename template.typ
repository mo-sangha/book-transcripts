// This file contains all functions and variables used in common between the main file and various chapters.

/////////////////////////////////////////////////////////////////////////////////
// Common Variables
/////////////////////////////////////////////////////////////////////////////////

#let book_title = "Atiyoga Dharma Talks"
#let book_author = "Lama Dawai Gocha"

/////////////////////////////////////////////////////////////////////////////////
// Links after Chapters
/////////////////////////////////////////////////////////////////////////////////

// Minimalist Archive Link - Subtle horizontal rule with integrated URL and recording metadata
#let archive_minimal(date, title, url) = {
  v(2em, weak: true)
  line(length: 25%, stroke: 0.5pt + gray)
  v(0.5em)
  text(size: 8pt, fill: gray.darken(30%))[
    #date #sym.bullet 
    #link(url)[#text(fill: black.lighten(30%), weight: "medium")[#underline(stroke: 0.5pt + black.lighten(30%), offset: 2pt)[#title]]] 
    #sym.bullet 
    #link(url)[Video Archive]
  ]
}

/////////////////////////////////////////////////////////////////////////////////
// Style and Layout
/////////////////////////////////////////////////////////////////////////////////

// Wraps the lines spoken by a particular speaker.
// This is useful during Q&A sections to denote when the speaker changes.
#let speaker(speaker, doc) = {
  set block(spacing: 0.65em * 2) // Create extra whitespace around this block.

  set par( // Instead of indenting the first paragraph, we'll show the speaker name.
    first-line-indent: (
      amount: 1em,
      all: false, // Indent every paragraph but the first in this block.
    ),
  )

  block[
    #smallcaps(speaker):
    #doc
  ]
}

// Wraps incidental behavioral descriptions of what's happening, like laughing, fidgeting, etc.
// The content should be its own sentence, including a period, for example: `#btw[Dawai laughs].`
#let btw(content) = {
  set text(style: "italic")
  [(#content)]
}

#let template(doc) = context {
  set document(
    title: book_title,
    author: book_author,
    description: none,
    keywords: (),
    date: auto,
  )

  set text(
    lang: "en",
    font: ("EB Garamond", "Jomolhari"), // Fall back to Jomolhari for Tibetan glyphs.
    hyphenate: auto,
    size: 11.5pt,
    fill: black,
  )

  set par(
    first-line-indent: ( // Indent the first line like in a book.
      amount: 1em,
      all: true, // Even the first paragraph (elsewhere in the world, it's non-indented).
    ),
    spacing: 0.65em, // Decrease the spacing between paragraphs so it flows like a book.
    justify: true,
    justification-limits: (
      // How much can the width of spaces between words be adjusted?
      "spacing": ("min": 90% - 0.01em, "max": 100% + 0.02em),
      // How much can the spacing between letters be adjusted?
      "tracking": ("min": -0.01em, "max": 0.02em),
    )
  )

  // Chapter headings.
  set heading(outlined: true)
  show heading.where(level: 2): set heading(
    // Headings are Level 1 (unnumbered), Chapters are Level 2 (numbered 1, 2, 3...)
    // Auto-number each chapter starting from 1. Avoids "1.1", etc.
    numbering: (..args) => numbering("1.", ..args.pos().slice(1)),
    supplement: [Chapter],
  )
  show heading.where(level: 2): set align(center)
  show heading.where(level: 2): set block(
    below: 1.2em,
  )
  show heading.where(level: 2): set text(
    size: 20pt,
    hyphenate: false, // It looks better in headings to not hyphenate words.
  )
  show heading.where(level: 2): set par(
    justify: false, // Heading text doesn't need to occupy the full column.
  )

  // Renditions of common Pali words.
  show "shamatha": [samatha] // Standardize on the Pali, not the Sanskrit.
  show "Shamatha": [Samatha] // Standardize on the Pali, not the Sanskrit.
  show "vipassana": [vipassanā]
  show "Vipassana": [Vipassanā]

  // Renditions of common Sanskrit words.
  show "dakini": [ḍākinī]
  show "Dakini": [Ḍākinī]
  show "dharmakaya": [dharmakāya]
  show "Dharmakaya": [Dharmakāya]
  show "Ekajati": [Ekajaṭī]
  show "sambhogakaya": [sambhogakāya]
  show "Sambhogakaya": [Sambhogakāya]
  show "nirmanakaya": [nirmāṇakāya]
  show "Nirmanakaya": [Nirmāṇakāya]
  show "kaya": [kāya]
  show "Kaya": [Kāya]
  show "samsara": [saṃsāra]
  show "Samsara": [Saṃsāra]
  show "nirvana": [nirvāṇa]
  show "Nirvana": [Nirvāṇa]
  show "mahamudra": [mahāmudrā]
  show "Mahamudra": [Mahāmudrā]
  show "sutra": [sūtra]
  show "Sutra": [Sūtra]
  show "samadhi": [samādhi]
  show "Samadhi": [Samādhi]
  show "bhumi": [bhūmi]
  show "Bhumi": [Bhūmi]
  show "manas-vijnana": [mānas-vijñāna]
  show "Manas-vijnana": [Mānas-vijñāna]
  show "Dignaga": [Dignāga]
  show "Mahayana": [Mahāyāna]
  show "Manjusrimitra": [Mañjuśrīmitra]
  show "vidya": [vidyā]
  show "Vidya": [Vidyā]
  show "jhana": [jhāna]
  show "Jhana": [Jhāna]
  show "tathagata": [tathāgata]
  show "Tathagata": [Tathāgata]
  show "Shakyamuni": [Śākyamuni]
  show "sadhana": [sādhanā]
  show "Sadhana": [Sādhanā]
  show "samapatti": [samāpatti]
  show "Samapatti": [Samāpatti]
  show "svabhava": [svabhāva]
  show "Svabhava": [Svabhāva]
  show "Mahasandhi": [Mahāsaṅdhi]
  show "mahasandhi": [mahāsaṅdhi]
  show "Vajrakilaya": [Vajrakīlāya]
  show "yana": [yāna]
  show "Yana": [Yāna]

  // Renditions of common Tibetan words.
  show "trekcho": [trekchö]
  show "Trekcho": [Trekchö]
  show "togal": [tögal]
  show "Togal": [Tögal]
  show "togyal": [tögal]
  show "Togyal": [Tögal]
  show "ngondro": [ngöndro]
  show "Ngondro": [Ngöndro]

  // The page configuration below is only valid for paged targets.
  //
  // For reasons that elude me, the "set" below cannot be made conditional
  // except by means of this early return.
  if target() != "paged" {
    doc
    return
  }

   set page(
    paper: "uk-book-b", // 129mm x 198mm (~5" x 7.8")
    numbering: "1",
    margin: 1.25cm,

    header: context {
      if here().page-numbering() == "1" {
        let before = query(heading.where(level: 2).before(here()))
        let current = query(heading.where(level: 2).after(here())).filter(h => h.location().page() == here().page())
        
        let active_heading = if current.len() > 0 { current.first() } else if before.len() > 0 { before.last() } else { none }

        if active_heading != none {
          v(1em) // This pushes the text down from the top edge
          set text(size: 8pt, style: "italic", fill: gray)
          align(center)[#active_heading.body]
          v(1.5em) // This creates space before the body text starts
        }
      }
    },

    footer: context {
      let style = here().page-numbering()
      if here().page() > 2 and style != none {
        set text(size: 9pt, fill: black)
        grid(
          columns: (1fr, 1fr),
          [DRAFT], 
          align(right)[#counter(page).display(style)]
        )
      }
    }
  )

  doc
}
