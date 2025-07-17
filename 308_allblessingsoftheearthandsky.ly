\version "2.18.2"

\header {
  title = "The Blessings of the Earth and Sky"
  composer = "Words by Kennith Patton. Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4 c8 d | % The
      % blessing of the earth and sky u
      % pon our friendly house do lie. The
      % rightness of a master’s art has
      % blessed with grace its every part. The
      % warmth of many hands is strewn in
      % human blessing on this stone.
  }
}

verse = \lyricmode {
  The blessing of the earth and sky u
  pon our friendly house do lie. The
  rightness of a master’s art has
  blessed with grace its every part. The
  warmth of many hands is strewn in
  human blessing on this stone.
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
