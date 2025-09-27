\version "2.18.2"

\header {
  title = "As We Leave This Friendly Place"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    fis4 g a a | d, e fis2 | % As we leave this friendly place,
    b4 cis d fis, | a gis a2 | % love give light to every face;
    fis4 g a a | d, e fis2 % may the kindness which we learn
    b4 cis d fis, | e e d2 \bar "|." % light our hearts till we return.
  }
}

verse = \lyricmode {
  As we leave this friend -- ly place,
  love give light to ev -- 'ry face;
  may the kind -- ness which we learn
  light our hearts till we re -- turn.
}

harmonies = \chordmode {
  % Intro
  d1:sus | fis2 g | b:m7 b:m6 | fis1:m7 |
  c:7.9- | b2:m7 b:m6 | g1:/b | cis2:m7.5- d:sus |
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
