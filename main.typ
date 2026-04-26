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
#set page(numbering: none)
#v(1fr)
#context {
  let copyright_text = [
    Published #datetime.today().display("[year]-[month]-[day]").\
    This text is self-secret and self-protected.

    Copyright © #datetime.today().display("[year]"), Lama Dawai Gocha.\
    #link("https://www.meditationonline.org")[#underline[www.meditationonline.org]]

    Licensed under #link("https://creativecommons.org/licenses/by-nc-sa/4.0/")[CC BY-NC-SA 4.0].\
    No AI was used in the making of this text. 
  ]
  copyright_text
}

// ==========================================
// --- FRONT MATTER ---
// ==========================================
#pagebreak()
#set page(numbering: "i")
#counter(page).update(1)

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
// Addendum, so we don't lose track of transcripts.
// ==========================================
// #set page(numbering: "1")
// #counter(page).update(1)

// #heading(level: 1, numbering: none, outlined: true)[_Addendum: Additional Transcripts For the Next Book_]
// #counter(heading).update(0)

// #include "chapters/2024-06-13-hindrances.typ"
// #pagebreak(weak: true)

// #include "chapters/2024-09-14-elem-lights.typ"
// #pagebreak(weak: true)

// #include "chapters/2024-09-21-dzog-overview.typ"
// #pagebreak(weak: true)

// // #include "chapters/2024-11-02-stuck-no-more.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2024-11-07--11-24-cmt-PTWoA.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-04-21-dzog-tonglen.typ"
// // #pagebreak(weak: true)

// #include "chapters/2025-04-21-four-reliances.typ"
// #pagebreak(weak: true)

// // #include "chapters/2025-05-14-DCW.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-05-15-sensitivity.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-05-16-great-canvas.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-05-21-dzog-RBSD.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-05-23-isolations.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-06-14-many-layers.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-07-02-letting-be.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-07-18-wakeup.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-07-19-cmt-PTGM-this-lib.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-07-20-cmt-PTGM-keypoint.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-10-10-turn-awa.typ"
// // #pagebreak(weak: true)

// #include "chapters/2025-11-03-let-yourself.typ"
// #pagebreak(weak: true)

// // #include "chapters/2025-11-05-bravery.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-11-16-tantras-of-atiyoga.typ"
// // #pagebreak(weak: true)

// #include "chapters/2025-11-22-cmt-KPT.typ"
// #pagebreak(weak: true)

// #include "chapters/2025-11-24-three-kayas.typ"
// #pagebreak(weak: true)

// #include "chapters/2025-11-25-nurturing-majestic.typ"
// #pagebreak(weak: true)

// // #include "chapters/2025-11-28-four-ponds.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-11-29-ref-inclusive.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-12-07-subjectivity.typ"
// // #pagebreak(weak: true)

// #include "chapters/2025-12-14-solidity.typ"
// #pagebreak(weak: true)

// // #include "chapters/2025-12-22-thought-isolation.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-12-24-time-displacement.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-12-27-invoking.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2025-12-29-cmt-PTWoA-open.typ"
// // #pagebreak(weak: true)

// #include "chapters/2026-01-01-effortless.typ"
// #pagebreak(weak: true)

// #include "chapters/2026-01-04-familiar.typ"
// #pagebreak(weak: true)

// #include "chapters/2026-01-09-two-types.typ"
// #pagebreak(weak: true)

// // #include "chapters/2026-01-14-the-phasing.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2026-02-04-cmt-PTWoA-every.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2026-02-06-medi-self-lib.typ"
// // #pagebreak(weak: true)

// // #include "chapters/2026-02-09-spheres.typ"
// // #pagebreak(weak: true)

// #include "chapters/2026-03-01-untainted-wisdom.typ"
// #pagebreak(weak: true)

// #include "chapters/2026-03-20-fam-view.typ"
// #pagebreak(weak: true)

// #include "chapters/2024-06-13-hindrances.typ"
// #pagebreak(weak: true)

// #include "chapters/2025-08-17-witnessing-the-thoughts.typ"
// #pagebreak(weak: true)

// #include "chapters/2025-08-19-the-witness-itself-is.typ"
// #pagebreak(weak: true)

// #include "chapters/2026-04-21-noticing-the-space-where.typ"
// #pagebreak(weak: true)

// #include "chapters/2026-04-24-dzogchen-responsibilities.typ"
// #pagebreak(weak: true)
