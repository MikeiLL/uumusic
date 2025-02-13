\version "2.18.2"

\header {
  title = "#149 Lift Every Voice and Sing"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4. fis8 g a | % Lift ev -- ery
    b4. b | b b8 c d | b4. a | g4. g8 a b | % voice and sing till earth and heaven ring ring with the
    c4. b | g a | g~ g4 g8 | fis4. fis8 g a | % har -- mon -- ies of lib -- er -- ty; let our re
    b4. b | e e8 d b | c4. b4( a8) | g4. g8 a ais | % joic -- ing rise high as the list -- ening skies; let it re
    b4. b8 a g | a4.~ a4 g8 | g2. |
  }
}

verse = \lyricmode {
  Lift ev -- ery voice and sing
  till earth and hea -- ven ring,
  ring with the har -- mon -- ies of lib -- er -- ty;
  let our re -- joic -- ing rise
  high as the list -- ening skies,
  let it re -- sound loud as the roll -- ing sea.
  Sing a song full of the faith that the dark past has taught us,
  sing a song full of the hope that the pres -- ent has brought us;
  fac -- ing the ris -- ing sun of our new day be -- gun,
  let us march on till vic -- to -- ry is won.
}

harmonies = \chordmode {
  % Intro
  r4. |
  g2. |
}


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
  ""
  }
}
