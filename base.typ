/* --- base.typ | updated 2026-03-17 --- */

/* ===========================================
==============================================
*/

// ==========================================
// -- COMMON VARIABLES ---
// ==========================================
#let book_title = "Why are you still thinking?"
#let book_author = "Lama Dawai Gocha"

// ==========================================
// --- HELPER FUNCTIONS ---
// ==========================================
#let todo(words) = { text(fill: blue, [#words]) }
#let approval(words) = { text(fill: purple, [#words]) }
#let no_outline(it) = { set heading(numbering: none, outlined: false); it }


// ==========================================
// -- LINKS AFTER CHAPTERS ---
// ==========================================

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

// ==========================================
// --- STYLE and LAYOUT ---
// ==========================================
#let conf(doc) = {
  set document(title: book_title, author: book_author)
  set text(font: ("EB Garamond", "Jomolhari"), size: 11.5pt, lang: "en", fill: black, hyphenate: auto)
  

// ==========================================
// ---HEADING AND TRANSCRIPTION SETTINGS ---
// ==========================================
// 
  // Headings are Level 1 (unnumbered), Chapters are Level 2 (numbered 1, 2, 3...)
  set heading(outlined: true)
 show heading.where(level: 2): set heading(numbering: (..args) => numbering("1.", ..args.pos().slice(1)))
  set par(justify: true, leading: 0.6em, spacing: 1.2em)

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
  show "sadhana": [sādhanā]
  show "Sadhana": [Sādhanā]
  show "svabhava": [svabhāva]
  show "Svabhava": [Svabhāva]
  show "Mahasandhi": [Mahāsaṅdhi]
  show "mahasandhi": [mahāsaṅdhi]
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

// ==========================================
// --- The Page Configuration ---
// ========================================== 
 set page(
    paper: "uk-book-b", 
    margin: 1.25cm,

// ==========================================
// --- HEADER AND FOOTER SETTINGS ---
// ==========================================
    // HEADER SETTINGS ARE HERE (Chapter title at the top)
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

    // <--- FOOTER SETTINGS ARE HERE (Page numbers at the bottom)
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
