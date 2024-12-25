\version "2.18.2"

\header {
  title = "Hallelujah"
  composer = "by Leonard Cohen (Arranged by Mike iLL Kilmer for UU Pensacola)"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody =  \transpose c bes { \relative c {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 8 e8 |
    g4 g8 g4 g8 | a a a4 r8 e | g4 g8 g4 g8 | a4 a8 a4 a8 |
    a8 a4 a8 a4 | a4 g8 g4 e8 | a8( g) g4 r | r2 r8 e |
    g4 g8 g4 g8 | a4 a8 b4 b8 | c4 c8 c4 c8 | c c d4 r8 d8 |
    d8 d4 d d8 | e4 e8 e4 d8 | d( c4) c r8 | r2^\markup { \bold CHORUS }  e,8 g |
    a4. a4 r8 | r2 a8 g | e4. e4 r8 | r2 e8 g |
    a4. a4 r8 | r2 a8 g | e2( f8 e | d2~ d8 c) |
    c2 r4 | r2. | r2. | r2. \bar "|."
  }
} }

verse = \lyricmode {
  Oh, La -- dy with the gol -- den light,
  for de -- cades now you’ve been the sight,
  For peo -- ple who are yearn -- ing for their free -- dom.
  But times have changed, the mes -- sage too
  So can we still be -- lieve in you
  and ut -- ter when we spot you Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!

}

harmonies = \transpose c bes { \chordmode {
  % Intro
  \partial 8 r8 |
  c2. | a:min | c2. | a:min |
  f | f | c | g |
  c | f4. g | a2.:min | f |
  g | e:/gis | a:min | a:min |

  f | f | c | c |
  f | f | c | g |
  c2. | a:min | c2. | a:min |
} }


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "verse" \verse
  >>
  \layout {
        #(layout-set-staff-size 25)
    }
  \midi { }
}

\markup \fill-line {
  \column {
    " "
    "You hold your lamp beside the door – "
    "through silent lips you call the poor "
    "To come to you to breathe the air of freedom."
    "The tempest tossed, the thrown away,"
    "Your beacon casts a golden ray – "
    "your harbor is the dream in Hallelujah! "
    " "
    "[Chorus]"
    "Hallelujah, Hallelujah Hallelujah, Hallelujah"
    " "
    "Through borders passed and deserts crossed "
    "They see your silent words aloft"
    "And hope the people follow what they promised"
    "For those who find a legal door"
    "Their lives are lived inside the law - "
    "they found a pathway to a Hallelujah!"
    " "
    "[Chorus]"
    "Hallelujah, Hallelujah Hallelujah, Hallelujah"

  }
  \column {
    " "
    "But many more still live unsure, "
    "fearful that they won’t endure"
    "And taste the justice that your words have told them"
    "A beacon yet you stand alone"
    "Your lamp a symbol that has shown "
    "that hope can turn into hallelujah. "
    " "
    "[Chorus - Repeated]"
    "Hallelujah, Hallelujah Hallelujah, Hallelujah"
  }
}
