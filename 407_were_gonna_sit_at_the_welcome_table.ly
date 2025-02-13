\version "2.18.2"

\header {
  title = "#407 We're Gonna Sit at the Welcome Table"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
      d2. e8 d | g8 g4 g8 a4 g | r b2( a4) | g1 |
      e2. g8 e | g8 g4 e8 g4 e | g g g8 g g g~ | g4 g8 g e4 d | % ... hal -- le -- lu -- jah
      d2. g8 d | g8 g4 g8 a4 g | r b2( a4) | g2. g8 g | % ... gonna
      a8 a4 a8 g4 a | bes bes bes8 g a4 | g1~ | g |
    }
  }
}

verse = \lyricmode {
  We're gon -- na sit at the wel -- come ta -- ble
  we're gon -- na sit at the wel -- come ta -- ble
  one of these days, hal -- le -- lu -- jah
  We're gon -- na sit at the wel -- come ta -- ble,
  gon -- na sit at the wel -- come ta -- ble
  one of these days.
}

harmonies = \chordmode {
  % Intro
  g1 | g | g | g |
  c | c | c | c |
  g1 | e:m | g2 b:7/dis | e:m e:m/d | c a:m |
  d d:7 | g1 | g |
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
