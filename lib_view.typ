#import "lib.typ": *

#show: doc => lib_view(
  title: "Style Library",
  subtitle: "Reference & Flow Guide",
  doc
)
#hbh // Your Centered Divider Line


   == ATTEMPT TO SIMPLIFY

   


#herald[The Treasury of the Basic Space of this book]

#Dawai: The topic of sensitivity — and guess what the topic is going to be? Sensitivity. Yes, I feel like sensitivity is an interesting topic, something that goes a little bit mysterious in our world. ....

#ind1 This is the formal auto-commentary of Longchenpa. First line indented by 1.5em, but the rest of the paragraph is flush. 

#b3m[
So if a fish was made out of pure water, it would still have its own mind, but it wouldn't be inseparable from the ocean. 
]

#line25


#herald[The Treasury of the Basic Space ... ]

#Dawai The nature of mind is ... 


#b3m[
  Okay, now I should have started with the cloud...so you're here resting in this pure cognition. ]


#line50

#Sangha Is the sky ...?

#side[Reading chat]ghgsdghaspogihagiewhgao 

 #hbh // Your Centered Divider Line
// ==========================================================
// DEMO: SET A1
// ==========================================================


*Inner Teaching*

#ind1 This is my compact paragraph. It is black. It is tight. It is exactly 11.5pt. 


#herald[The Transmission of the Root]

#intro[In the stillness of the mountain,] the words were first carved into the stone. This uses the `#intro` style to set a tonal opening. Notice how it sits flush unless we add an indent.

#in1 #intro[Alternatively,] adding `#in1` before the intro pushes the italic start inward by exactly 1.5em, matching a standard book paragraph.

#hbh

// ==========================================================
// DEMO: SET A (Indents & Auto-Commentary)
// ==========================================================

#ind1 This is a standard `#ind1` (the variable). It is a simple horizontal spacer. It is your "Narrative Ground." Every paragraph starts with this nudge.

#ind2[
  This is the `#ind2` block (the function). 
  Notice how the color shifted to `ink-slate` (grayer) and the entire block is pushed in. This is your "Auto-Commentary." It creates a visual 'room' for your thoughts to sit inside.
]

#ind2[
  #ind1 You can even put an `#ind1` inside an `#ind2`. 
  This creates a "Double-Step" hierarchy for long-form commentary that needs internal paragraph breaks.
]

#hbh

// ==========================================================
// THE "PRO" MIX: NESTING IN BARS
// ==========================================================


#b3m[
  #herald[Inner Teaching]
  
  #ind1 The `#herald` inside a `#b3m` bar stays centered *within* the bar. Because we used relative units (em), it won't break the layout; it just adapts to the smaller space.
]// ========================================================= 
// --- SET B: THE BARS (The Hierarchy of Flow) ---
// =========================================================

// --- I. THE FLUSH BARS (No Padding) ---

#b4f[The Flush Root (#b4f): 1.0pt Black bar, no outer padding.]
#b5f[The Flush Trad (#b5f): Heavy 1.2pt Black bar, no outer padding.]

#b4f[The Flush Root (#b4f): This is the workhorse. With no outer padding, the bar sits directly against the margin, giving your words the entire width of the page to stretch out. There is no indentation here, just a solid 1.0pt black line marking the start of a narrative thread. It’s perfect for long-form exposition where you don't want the formatting to distract from the raw volume of the story.]

// --- II. THE WIDE & MAX BARS (Minimal Padding) ---

#b4m[The Max-Word Root (#b4m): 0.2in left and 0.1in right. Max horizontal space.]
#b4w[The Wide Root (#b4w): 0.3in left and 0.15in right. Keeps words flowing.]

#b4m[The Max-Word Root (#b4m): This is your "Most Words" indented option. By using a tiny 0.2in left and 0.1in right padding, we create the illusion of a floating block without sacrificing line real estate. You can fit almost as much text here as you can in a flush bar, but the subtle "lift" off the margin signals to the reader that this section is a distinct, contained thought-stream.]

#b4w[The Wide Root (#b4w): A slightly deeper 0.3in left indent paired with a 0.15in right buffer. This is the ideal balance for the Rootverse. It feels clearly "indented" like a standard bar, but the narrow right margin prevents the text from stacking too vertically.]

// --- III. THE STANDARD BARS (0.3in Left Padding) ---

#b4[The Standard Root (#b4): 1.0pt Black bar with 0.3in left padding.]
#b5[The Traditional (#b5): Heavy 1.2pt Black bar with 0.3in padding.]

#b4[The Standard Root (#b4): This is the baseline. With a 0.3in left padding and no right padding, the text is grounded on the left but open-ended on the right. It’s the classic Rootverse look—intentional, structured, and easy to read. It provides a clear visual anchor for the eye to return to at the start of every line.]

// --- IV. THE INDENTED BARS (Narrower Focus) ---

#b4ar[The Asymmetric Root (#b4ar): Grounded 0.5in left and 0.25in right.]
#b4lb[The Lean Bracket (#b4lb): Balanced 0.4in double-indent with 1.1pt stroke.]
#b4c[The Compact Root (#b4c): 1.0pt Black bar, double-indented (0.6in).]

#b4lb[The Lean Bracket (#b4lb): Now we move into the double-indents. With 0.4in on both sides and a slightly heavier 1.1pt stroke, the text begins to feel "held." This is for focused segments—moments of high tension or internal realization where the world narrows down. Even with the double indent, the 0.4in spacing is wide enough to prevent "one-word lines."]

#b4c[The Compact Root (#b4c): This is the deepest "Core" indent at 0.6in on both sides. As you can see, the lines are much shorter here. The text starts to feel like a column. This is perfect for short, punchy insights or rhythmic prose, but it will struggle with long, complex sentences.]

// --- V. THE MIST BARS & SPECIALS (Atmosphere) ---

#b1[The Whisper (#b1): Thin 0.4pt Mist bar.]
#b3[The Strong Mist (#b3): Thick 0.8pt Mist bar.]
#b6[The Meditation (#b6): Small Mist bar with Double Indent and Small Text size (#sz-sm).]
#barb[The Anchor (#barb): Extreme 1.5pt Black bar for major emphasis.]

#b1[The Whisper (#b1): This is the lightest touch in the Rootverse. It’s a thin 0.4pt line that barely holds the edge of the page. It works best for passing thoughts, internal echoes, or dialogue that isn’t quite meant to be heard. It almost disappears into the white of the page.]

#b3[The Strong Mist (#b3): A thicker 0.8pt version of the mist. Use this when the atmosphere is heavy or when a "whisper" needs to feel like a persistent, nagging thought that won't go away. It’s a middle ground between a dream and the reality of the black bars.]

#barb[The Anchor (#barb): The heaviest presence in the system. At 1.5pt, the bar is undeniable. It sits flush to the margin and demands total attention. Use this for the end of a chapter, a fundamental truth, or a moment where the "Root" finally hits bedrock.]

#b3m[The Modular Root (#b3m): A 0.2in left and 0.1in right padding that creates a subtle, floating effect. Charcoal stroke at 1.0pt. This is a versatile option for when you want the text to feel contained but not boxed in. It’s great for mid-level insights that need to be set apart without overwhelming the page.]

#hbh // Your Centered Divider Line
// ==========================================================
// SET C: THE CENTERED BLOCKS
// ==========================================================

#cent[This is a basic centered block (#cent).]
#cent1[This is a 90% wide block with Black ink (#cent1).]
#cent4[This is an 85% wide block with Charcoal ink (#cent4).]

#poem[
  This is the Poem block (#poem). \
  It has custom line leading (0.85em) \
  and center alignment for rhythmic flow.
]

#poem[The Poem block is designed to hold space. Unlike the standard centered blocks, it tightens the vertical gap between lines so that the stanzas feel like a single, cohesive unit. It’s perfect for the moments in the Rootverse where the narrative breaks into song or ceremony.]
#hbh // Your Centered Divider Line
// ==========================================================
// SET D: MANTRA STYLES (The Breathable Set)
// ==========================================================

#mantra[OM MANI PADME HUM (#mantra)]
#mv[OM MANI PADME HUM (#mv: Centered Box)]
#mvl[OM MANI PADME HUM (#mvl: Left Box)]
#mh[OM MANI PADME HUM (#mh: Horizontal Mist Lines)]

#mantra[The Mantra block uses a 1.1em leading, giving the characters space to breathe. It’s the standard for meditative repetition where the visual weight of each line needs to be felt equally.]
#hbh // Your Centered Divider Line
// // ==========================================================
// SET E: THE VOICES (Dialogue & Chat) - UPDATED FOR STAMPS
// ==========================================================

#Dawai This is the Dawai prompt. It adds a small vertical gap and then starts the italics.

#Sangha This is the general Sangha prompt for the community voice.

#rchat "Can we get more clarification on the Root Verse?"

#respc We are currently refining the wide bar settings to make the text flow better.

#resp The bars are now stable.

#s("1") The teaching is about compassion.

#Dawai This is the Dawai prompt. It adds a small vertical gap and then starts the italics.
#hbh // Your Centered Divider Line
// SET F: MISC (Breaks & Boxes)
// ==========================================================

#hbh // Centered Divider Line
#hl[Highlighted Text (#hl).]
#gbox[This is a Gray Box (#gbox). It creates a light background block with a thin mist border.]
#bot[Bottom-of-Page text (#bot).]

#gbox[The Gray Box (#gbox) is perfect for deep-dive technical notes or parenthetical asides that need to be visually separated from the narrative flow without using a sidebar.]
#hbh // Your Centered Divider Line
// ==========================================================
// SET G & H: LISTS & HEADINGS
// ==========================================================

#h1[Heading 1 (#h1)]
#h2[Heading 2 (#h2)]
#h3[Heading 3 (#h3)]

#li1[Standard Bullet Point (#li1)]
#li2[Nested Bullet Point (#li2)]
#lidash[Dashed List Item (#lidash)]
#li4[Numbered List Item (#li4)]

#li1[The lists are set within blocks to ensure they break naturally across pages. By adjusting the left inset, they maintain a clean vertical alignment that matches the Rootverse.]

#hbh // Your Centered Divider Line
// ==========================================================
// ---- M I X E S ----
// ==========================================================
// 
// --- START OF FLOW TEST ---

This is a standard paragraph of regular text with no indent. It sits flush against the left margin and represents the "Ground" of the document. Every line starts at the absolute zero-point of the page, providing the widest possible container for the narrative.

#ind1 This is your first-line indent (#ind1). As you can see, the first line is tucked in by 1.5em, but the rest of the paragraph remains flush. _The teaching_ states: This is regular ground text.

#b4w[The Wide Root (#b4w) enters here. Notice the 0.3in left indent and the 0.15in right buffer. This is the "Goldilocks" bar—it feels clearly set apart from the regular text above it, yet it doesn't "choke" the sentences. It provides enough horizontal real estate for complex thoughts to stretch out before hitting a line break.]

#b4[The Standard Root (#b4) follows immediately. Compare this to the #b4w above. Because the standard #b4 has no right padding, the text stretches all the way to the right margin, while the #b4w remains slightly more "contained" and centered on both sides. The #b4 feels more open-ended.]

#b4w[Switching back to the Wide Root (#b4w) for contrast. By alternating between the Wide and Standard bars, you can create a visual "pulsing" effect. The Wide Root feels like a slightly more intimate, focused conversation, while the Standard bar feels like a broader narrative declaration.]

Regular text returns here, resetting the eye back to the flush margin. The transition from the #b4w back to flush text is a significant visual jump, signaling to the reader that the "Root" has closed and we are back in the main stream of the story.

#ind1 This is your first-line indent (#ind1). As you can see, the first line is tucked in by 1.5em, but the rest of the paragraph remains flush. _The teaching_ states: This is regular ground text.

lar text outside the bar at the normal page margin.
#hbh // Your Centered Divider Line
//----------b3m

#b3m[This is regular text inside the charcoal bar. It is locked in.]

#b3m[#ind1 This is the indented version. It is also locked in.]

Regular text outside the bar.

#herald[THE OPENING HERALD]

This is a standard paragraph of regular text. It represents the "Ground" of your document. It sits flush against the left margin (0.0in) and stretches across the full width of the page. This is where the main narrative or "Main" voice lives before any structural shifts happen. This provides the maximum "words-per-line" density.


#b3m[
This is the Modular Root (#b3m). It uses the 0.2in left padding and 0.1in right buffer. Notice how the vertical charcoal line creates a "wall" for the text. It feels distinct from the regular paragraph above because it is physically moved inward, creating a centered column. This is the "Safe" version—it will never disappear because it is a direct function call.
]

#b3m[
#ind1 Now, we are inside the Modular Root using your #ind1 logic. The text "steps" inward by an additional 1.5em relative to the charcoal bar. This creates a nested hierarchy: the Bar marks the section, and the indent marks the start of the specific thought or "Root" teaching. This is the most complex layout, yet it remains readable because of the 0.1in right-side safety buffer.
]

#herald[THE TRANSITIONAL HERALD]

Regular text returns here, resetting the eye back to the flush margin. The transition from the #b3m bar back to flush text is a significant visual jump, signaling to the reader that the "Root" section has closed and we are back in the main stream of the story. This "pulsing" effect between the full-width text and the framed bar keeps the layout from feeling stagnant.

#b3m[
This is a shorter Modular Root entry. It doesn't use an indent, showing how the text sits directly against the charcoal line for a "flat" statement. Because it is 0.2in instead of 0.3in, it feels less "squished" than your standard #b4 bars.
]


#highlight[rest]

This is the "Clean Pillar" layout. It treats the Root Verse as a structural monument that never wavers, while the Auto-Commentary remains part of the narrative ground.
#herald[NARRATIVE GROUND]

#Dawai This is the standard narrative voice. It sits flush against the left margin (0.0in). This is the "Main" voice where the scene is set or the history of a teaching is provided before the Root Verse appears. Because this text is flush, it represents the widest possible container for the story.


#b3m[
THIS IS THE ROOT-VERSE (#b3m). It enters here as a solid, centered block. There is NO first-line indent. Every line of the Root Verse starts exactly at the 0.2in charcoal bar. This makes the Root Verse feel structural, grounded, and "locked in." It is a completely different level of authority than the commentary above it.
]

#b3m[
The second stanza of the Root Verse follows immediately. It remains perfectly flush to the bar. By keeping the Root Verse flat against the line, you create a visual "pillar" in the center of the document. It stands tall and consistent while the narrative and commentary weave around it.
]
#herald[TRANSITIONAL HERALD]

#Dawai The narrative returns here. The jump from the centered Root-Verse pillar back to the wide margin signals that the teaching segment has concluded and the story is resuming.



#intro[The intro to the next] states:

#b3m[ This short Root Verse proves the point. Even a single line looks like a monument because it sits perfectly aligned with the charcoal bar, never wavering or indenting. It maintains the same 11.5pt font size as the rest of the document, ensuring it never looks smaller or less important.
]

