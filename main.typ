#import "template.typ": *
#show: template

// ==========================================
// --- COVER ---
// ==========================================
#page(background: rect(fill: gradient.linear(rgb("#87cfe9"), white, angle: 90deg), width: 100%, height: 100%), numbering: none)[
  #set align(center)
  #v(3cm)
  #text(40pt, weight: "bold", book_title)
  #v(1fr)
  #image("images/thigle.png", width: 70%)
  #v(1fr)
  #text(30pt, book_author)
]

// ==========================================
// --- COPYRIGHT and PUBLICATION INFO ---
// ==========================================
#pagebreak()
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

// --- TEACHINGS (Arabic 1, 2, 3) ---
#set page(numbering: "1")
#counter(page).update(1)

// ==========================================
// 2024 TEACHINGS
// ==========================================
#pagebreak(weak: true)
#heading(level: 1, numbering: none, outlined: true)[2024 Teachings]
#counter(heading).update(0)

#include "chapters/2024-06-13-hindrances.typ"
#pagebreak(weak: true)

#include "chapters/2024-09-14-elem-lights.typ"
#pagebreak(weak: true)

#include "chapters/2024-09-21-dzog-overview.typ"
#pagebreak(weak: true)

#include "chapters/2024-11-02-stuck-no-more.typ"
#pagebreak(weak: true)

// #include "chapters/2024-11-07--11-24-cmt-PTWoA.typ"
// #pagebreak(weak: true)

// ==========================================
// 2025 TEACHINGS
// ==========================================

// --- DESIGN NOTE ---
/* --- Instruction ----
To make this year start at Chapter 1: Leave the 'update(0)' line alone.
To make the numbers keep climbing (5, 6, 7...): Delete the 'update(0)' line.
*/

#heading(level: 1, numbering: none, outlined: true)[2025 Teachings]
#counter(heading).update(0) 

#include "chapters/2025-04-21-dzog-tonglen.typ"
#pagebreak(weak: true)

#include "chapters/2025-04-21-four-reliances.typ"
#pagebreak(weak: true)

// #include "chapters/2025-05-14-DCW.typ"
// #pagebreak(weak: true)

#include "chapters/2025-05-15-sensitivity.typ"
#pagebreak(weak: true)

#include "chapters/2025-05-16-great-canvas.typ"
#pagebreak(weak: true)

// #include "chapters/2025-05-21-dzog-RBSD.typ"
// #pagebreak(weak: true)

#include "chapters/2025-05-23-isolations.typ"
#pagebreak(weak: true)

#include "chapters/2025-06-14-many-layers.typ"
#pagebreak(weak: true)

#include "chapters/2025-07-02-letting-be.typ"
#pagebreak(weak: true)

#include "chapters/2025-07-18-wakeup.typ"
#pagebreak(weak: true)

// #include "chapters/2025-07-19-cmt-PTGM-this-lib.typ"
// #pagebreak(weak: true)

// #include "chapters/2025-07-20-cmt-PTGM-keypoint.typ"
// #pagebreak(weak: true)

#include "chapters/2025-10-10-turn-awa.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-03-let-yourself.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-05-bravery.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-22-cmt-KPT.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-24-three-kayas.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-25-nurturing-majestic.typ"
#pagebreak(weak: true)

#include "chapters/2025-11-28-four-ponds.typ"
#pagebreak(weak: true)

// #include "chapters/2025-11-29-ref-inclusive.typ"
// #pagebreak(weak: true)

#include "chapters/2025-12-07-subjectivity.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-14-solidity.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-24-time-displacement.typ"
#pagebreak(weak: true)

#include "chapters/2025-12-27-invoking.typ"
#pagebreak(weak: true)

// #include "chapters/2025-12-29-cmt-PTWoA-open.typ"
// #pagebreak(weak: true)

// ==========================================
// 2026 TEACHINGS
// ==========================================
#heading(level: 1, numbering: none, outlined: true)[2026 Teachings]
#counter(heading).update(0)

#include "chapters/2026-01-01-effortless.typ"
#pagebreak(weak: true)

#include "chapters/2026-01-04-familiar.typ"
#pagebreak(weak: true)

#include "chapters/2026-01-09-two-types.typ"
#pagebreak(weak: true)

#include "chapters/2026-01-14-the-phasing.typ"
#pagebreak(weak: true)

// #include "chapters/2026-02-04-cmt-PTWoA-every.typ"
// #pagebreak(weak: true)

#include "chapters/2026-02-06-medi-self-lib.typ"
#pagebreak(weak: true)

#include "chapters/2026-02-09-spheres.typ"
#pagebreak(weak: true)

#include "chapters/2026-03-01-untainted-wisdom.typ"
#pagebreak(weak: true)

#include "chapters/2026-03-20-fam-view.typ"
#pagebreak(weak: true)
