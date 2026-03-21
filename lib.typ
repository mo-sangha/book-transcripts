/* --- lib.typ | 2026-03-17 --- */

// ==========================================================
// DESIGN INTENT:
// ==========================================================
// 1. MODULARITY: Styles are centralized here to allow for 
//    global updates to colors and scaling. 
// 2. SCALABILITY: Uses relative 'em' units and 'ink' tokens 
//    so the layout can adapt to different page sizes.
// 3. HANDOFF: I have reached the limit of my technical 
//    knowledge here. Please feel free to reorganize, 
//    optimize, or replace this logic as the project 
//    moves into production. 
//    
// --- VARIABLE ARCHITECTURE ---
// - THE PALETTE: Colors are defined as luma variables.
// - SCALING: Sizes (sz-) are relative to the base font.
// ==========================================================

// --- 1. GLOBAL CONSTANTS (Palette & Scale) ---
#let ink-black    = luma(0)    
#let ink-charcoal = luma(20)   
#let ink-smoke    = luma(85)   
#let ink-slate    = luma(120)  
#let ink-mist     = luma(180)  

#let sz-xl    = 1.4em  
#let sz-lg    = 1.18em     
#let sz-ml    = 1.1em      
#let sz-md    = 1.0em      
#let sz-sm    = 0.85em   

// // ==========================================================
//* SET A1: INTRO and HERALD 
// ==========================================================
// A simple horizontal spacer
#let in1 = h(1.5em) 

// Italicized for narrative openings (No color change)
#let intro(body) = text(style: "italic")[#body]

#let herald(body) = {
  v(1em) 
  text(weight: 500, fill: ink-charcoal)[#body]
  v(0.2em)
}
// ==========================================================
// --- SET A2: INDENTS (Classic Book Style)
// ==========================================================
// The primary indent: Just a nudge. (No brackets needed: #ind1 Text)
#let ind1 = h(1.5em) 

// The commentary shift: Pushes the whole paragraph (No grey ink)
#let ind2(body) = pad(left: 1.5em)[#body]

//=======================================
// --- SET B: THE BARS (Stable & Modular) ---
//=======================================

// --- I. THE MIST BARS (Atmospheric) ---
#let b1(body) = block(width: 100%, breakable: true, stroke: (left: 0.4pt + ink-mist), inset: (left: 1em, y: 0.4em))[#body]
#let b2(body) = block(width: 100%, breakable: true, stroke: (left: 0.6pt + ink-mist), inset: (left: 1em, y: 0.4em))[#body]
#let b3(body) = block(width: 100%, breakable: true, stroke: (left: 0.8pt + ink-mist), inset: (left: 1em, y: 0.4em))[#body]

// --- II. THE FLUSH ROOTS (Max Words) ---
#let b4f(body)  = block(width: 100%, breakable: true, stroke: (left: 1.0pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]
#let b5f(body)  = block(width: 100%, breakable: true, stroke: (left: 1.2pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]
#let barb(body) = block(width: 100%, breakable: true, stroke: (left: 1.5pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]

// --- III. THE WIDE ROOTS (Modular Indents) ---
#let b4m(body) = pad(left: 0.2in, right: 0.1in)[#block(width: 100%, breakable: true, stroke: (left: 1.0pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]
#let b4w(body) = pad(left: 0.3in, right: 0.15in)[#block(width: 100%, breakable: true, stroke: (left: 1.0pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]

// --- IV. THE STANDARD ROOTS (Left-Only) ---
#let b4(body) = pad(left: 0.3in)[#block(width: 100%, breakable: true, stroke: (left: 1.0pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]
#let b5(body) = pad(left: 0.3in)[#block(width: 100%, breakable: true, stroke: (left: 1.2pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]

// --- V. CONCENTRATED ROOTS (Deep Scaling) ---
#let b4lb(body) = pad(x: 0.4in)[#block(width: 100%, breakable: true, stroke: (left: 1.1pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]
#let b4ar(body) = pad(left: 0.5in, right: 0.25in)[#block(width: 100%, breakable: true, stroke: (left: 1.1pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]
#let b6(body)   = pad(left: 0.4in, right: 0.2in)[#block(width: 100%, breakable: true, stroke: (left: 0.8pt + ink-mist), inset: (left: 1em, y: 0.4em))[#set text(size: sz-sm, fill: ink-charcoal); #body]]
#let b4c(body)  = pad(left: 0.6in, right: 0.6in)[#block(width: 100%, breakable: true, stroke: (left: 1.0pt + ink-black), inset: (left: 1.2em, y: 0.4em))[#body]]

// --- VI. THE MODULAR ROOT (0.2in / 0.1in Frame) ---
#let b3m(body) = pad(left: 0.2in, right: 0.1in)[#block(width: 100%, breakable: true, stroke: (left: 1pt + ink-smoke), inset: (left: 1.2em, y: 0.4em))[#body]]



//=======================================

// --- 3. SET C : CENTERED BLOCKS ---
#let cent(body) = align(center, block(inset: (y: 0.4em))[#body])

#let cent1(body) = align(center, block(breakable: true, width: 90%, inset: (y: 0.4em))[#set text(size: sz-ml, fill: ink-black); #body])

#let cent4(body) = align(center, block(breakable: true, width: 85%, inset: (y: 0.6em))[#set text(size: sz-lg, fill: ink-charcoal); #body])

#let poem(body) = block(breakable: true, width: 100%, inset: (y: 0.8em))[#set align(center); #set text(size: sz-ml, weight: 550, fill: ink-charcoal); #set par(leading: 0.85em); #body]

//=======================================
// --- SET D: MANTRA STYLES (The Breathable Set) --

#let mantra(body) = { v(0.6em); align(center)[#set par(leading: 1.1em); #body]; v(0.6em) }

#let mv(body)  = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.1em); #align(center, body)]; v(0.6em) }

#let mvl(body) = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.1em); #body]; v(0.6em) }

#let mh(body)  = { v(0.6em); block(width: 100%, stroke: (top: 0.5pt + ink-mist, bottom: 0.5pt + ink-mist), inset: (y: 0.8em))[#set par(leading: 1.1em); #align(center, body)]; v(0.6em) }

// --- SET E: THE SAME-LINE VOICES (Tight Style)
#let Dawai     = text(fill: ink-slate, style: "italic")[Dawai: ]
#let Sangha    = text(fill: ink-slate, style: "italic")[Sangha: ]

// -- Sa and Da seem better? 
#let Sa = text(style: "italic", fill: ink-slate)[Sangha: ]
#let Da = text(style: "italic", fill: ink-slate)[Dawai: ]
 // add generic label for kind of speaking i.e Responding to chat, Responding to question, etc.

// --- THE CHAT & SANGHA [NAME] (Gap Style - The one that works)
#let s(member) = box(inset: (top: 0.4em))[#text(fill: ink-slate, style: "italic")[Sangha [#member]: ]]

#let rchat     = box(inset: (top: 0.4em))[#text(fill: ink-slate, style: "italic")[Reading chat: ]]
#let respc     = box(inset: (top: 0.4em))[#text(fill: ink-slate, style: "italic")[Responding to chat: ]]
#let resp      = box(inset: (top: 0.4em))[#text(fill: ink-slate, style: "italic")[Response: ]]
 // maybe this one instead of rchat respc resp? 
#let side(label) = [ #text(style: "italic", fill: luma(100))[#label:] ]

//=======================================
// --- SET F: MISC ---
#let hbh = align(center)[#v(1.2em); #line(length: 50%, stroke: 0.6pt + ink-mist); #v(1.2em)]

#let hl(body) = box(fill: yellow.lighten(60%), inset: (x: 3pt), outset: (y: 2pt), radius: 2pt, body)

#let gbox(body) = block(breakable: true, width: 100%, inset: (y: 0.4em))[
  #rect(width: 100%, stroke: 0.5pt + ink-mist, fill: luma(250), inset: 8pt)[#body]]

#let bot(body) = { v(1fr); line(length: 100%, stroke: 0.5pt + ink-mist); v(0.4em); set text(size: sz-sm); body }

//=======================================
// --- SET H: HEADINGS ---
#let h1(body) = { v(1.5em); block(width: 100%)[#set text(size: sz-xl, weight: "bold"); #body]; v(1em) }

#let h2(body) = { v(1.2em); block(width: 100%)[#set text(size: sz-lg, weight: "bold", fill: ink-slate); #body]; v(0.8em) }

#let h3(body) = { v(1em); block(width: 100%)[#set text(size: sz-ml, weight: "semibold", fill: ink-charcoal); #body]; v(0.4em) }

//=======================================
// --- SET G: LISTS ---
#let li1(body) = block(breakable: true, width: 100%, inset: (left: 1.5em, y: 0.2em))[
  #list(marker: [•])[#body]
]

#let li2(body) = block(breakable: true, width: 100%, inset: (left: 3.0em, y: 0.2em))[
  #list(marker: [◦])[#body]
]

#let lidash(body) = block(breakable: true, width: 100%, inset: (left: 1.5em, y: 0.2em))[
  #list(marker: [–])[#body]
]

#let li4(body) = block(breakable: true, width: 100%, inset: (left: 1.5em, y: 0.2em))[
  #enum[#body]
]
//=============================================================
// --- 2. THE TEMPLATE (Based on MO book / base.typ / main.typ 
//=============================================================
#let lib_view(title: none, subtitle: none, date: none, body) = {
  set page(
    paper: "uk-book-b", 
    margin: 1.25cm, // Matches your Base file
    numbering: "1", 
    number-align: center
  )
  set text(font: ("EB Garamond", "Jomolhari"), size: 11.5pt)
  
  // MATCHED TO BASE: leading 0.6em, spacing 1.2em
  set par(justify: true, leading: 0.6em, spacing: 1.2em) 
  
  if title != none { align(center)[#v(1em) #text(1.5em, weight: "bold", fill: ink-black)[#title] #v(0.5em)] }
  if subtitle != none { align(center)[#text(1.1em, style: "italic", fill: ink-charcoal)[#subtitle]] }
  if date != none { align(center)[#v(0.5em) #text(0.9em, fill: ink-smoke)[#date] #v(2em)] }
  
  body
} 


// ==========================================================
// THE BACKUP VAULT (Hidden)
// ==========================================================

/* PLAN B: THE "AIRY" MANTRA SET (1.2em)
   Use these only if the Tibetan characters still feel crowded. 
   These create a much wider gap (good for very large script).
   To activate: Copy these over the active mantra set in lib.typ.

#let mantra(body) = { v(0.6em); align(center)[#set par(leading: 1.2em); #body]; v(0.6em) }

#let mv(body)  = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.2em); #align(center, body)]; v(0.6em) }

#let mvl(body) = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.2em); #body]; v(0.6em) }

#let mh(body)  = { v(0.6em); block(width: 100%, stroke: (top: 0.5pt + ink-mist, bottom: 0.5pt + ink-mist), inset: (y: 0.8em))[#set par(leading: 1.2em); #align(center, body)]; v(0.6em) }
*/

// // ==========================================================
// // ATTEMPT TO SIMPLIFY. To narrow down the options. WORK IN PROGRESS. These are also above. 
// ==========================================================
// 
#let herald(body) = { v(1em, weak: true); text(weight: 600, fill: ink-charcoal)[#body] }

// --- At this point I feel this the best bar for root verses, but idk! 
#let b3m(body) = pad(left: 0.2in, right: 0.1in)[#block(breakable: true, stroke: (left: 1pt + ink-smoke), inset: (left: 1.2em, y: 0.4em))[#body]]

//* for auto comm 
#let ind1 = h(1.5em) 

// No brackets are needed to be added, these just provide grey and italic lables for speakers.  
// Sa = Sangha, Da = Dawai. Capitalized for safety.
#let Sa = text(style: "italic", fill: ink-slate)[Sangha: ]
#let Da = text(style: "italic", fill: ink-slate)[Dawai: ]
 // add generic label for type of speaking i.e Responding to chat, Responding to question, etc.
#let side(label) = [ #text(style: "italic", fill: luma(100))[#label:] ]

// ------ MiSC -------
// The New Lines with Weak Spacing
#let line25 = { v(1em, weak: true); line(length: 25%, stroke: 0.5pt + ink-mist); v(1em, weak: true) }
#let line50 = { v(1em, weak: true); line(length: 50%, stroke: 0.5pt + ink-mist); v(1em, weak: true) }

//=======================================
// --- SET D: MANTRA STYLES (The Breathable Set) --

#let mantra(body) = { v(0.6em); align(center)[#set par(leading: 1.1em); #body]; v(0.6em) }

#let mv(body)  = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.1em); #align(center, body)]; v(0.6em) }

#let mvl(body) = { v(0.6em); block(width: 100%, stroke: (left: 1.5pt + ink-slate), inset: (left: 1em, y: 0.5em))[#set par(leading: 1.1em); #body]; v(0.6em) }

#let mh(body)  = { v(0.6em); block(width: 100%, stroke: (top: 0.5pt + ink-mist, bottom: 0.5pt + ink-mist), inset: (y: 0.8em))[#set par(leading: 1.1em); #align(center, body)]; v(0.6em) }