\version "2.18.2"

\header {
  title = "Here is joy"
  composer = "by Paulette Meier Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key a \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
    \new Voice = "verse" {
      cis2 d | e2. cis4 | fis4. e8 d4 e~ | e2 r |% Here is joy. Unspeakable joy.
      fis2 e4 d | cis d cis r | cis( b) a b~| b r b cis | % Joy which the world cannot see or touch, nor the
      d2 e4 d | cis( d) cis b | b a b a | b r b cis |% powers of darkness come near to interrupt, and this
      d2 e4( d) | cis( d) cis( b) | b2 a~ | a2 r | % joy is full of glory.
    }
  }
}

verse = \lyricmode {
  Here is joy. Un -- speak -- a -- ble joy.
  Joy which the world can -- not see or touch,
  nor the pow -- ers of dark -- ness come near to in -- ter -- rupt,
  and this joy is full of glo -- ry __
}

harmonies = \chordmode {
  a1
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
