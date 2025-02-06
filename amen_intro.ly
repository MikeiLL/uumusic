\version "2.18.2"

\header {
  title = "Amen Intro"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    c1 |
  }
}

verse = \lyricmode {
  Turn the light from hea -- ven, Lord.
  Shine on me.
  Turn the light from hea -- ven, Lord.
  Shine on me. Shine on me.
  (Turn on the lights and put me on the right road)
  Help me find my way, Lord
  Turn on the lights from heaven, Lord
  Shine on me, shine on me

  Shine on me, shine on me
  Shine on me, shine on me

  Shine on me, shine on me
  Shine on me, shine on me
  Shine on me, shinе on me
  Shine on me, shinе on me
}

harmonies = \chordmode {
  % Intro
  c1
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
