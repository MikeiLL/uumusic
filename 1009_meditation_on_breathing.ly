\version "2.18.2"

\header {
  title = "1009 When I Breath In (Meditation on Breathing)"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 2 g8 a c4 |
    \repeat volta 2 {
      c1~ | c2 r4 a | c4 d2 e4~ | e r g,8 a c4 |
      c1~ | c2 r4 a | c4 d2 e4~ | e r g,8 a c4 |
    }
  }
}

verse = \lyricmode {
  When I breathe in I breathe in peace.
  When I breathe out I breathe out love.
  When I breathe
}

harmonies = \chordmode {
  % Intro
  r2 |
  c1:/e | c:/e | f | f | d:/fis | d:/fis | d:m | d:m
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
