\version "2.18.2"

\header {
  title = "Wake Now, My Senses"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key ees \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    ees4 ees f8( ees) | c4 bes c | ees ees f | g2. |
    f4 f f | f g bes | c bes g | bes2. |
    c4 c8( d) ees( d) | c4 bes g | bes ees, des | c2( bes4) |
    ees4 g bes | c8( bes) g4 ees8( g) | f4 ees ees | ees2. |
  }
}

verse = \lyricmode {
  Wake, now, my sens -- es, and hear the earth call;
feel the deep pow -- er of be -- ing in all;
keep, with the web of cre -- a -- tion your vow,
giv -- ing, re -- ceiv -- ing as love shows us how.
}

harmonies = \chordmode {
  % Intro
  ees2. | ees | ees | ees |
  g:m | g:m | g:m | g:m |
  f:m | f:m | f:m | f:m |
  ees | g:m | f:m | ees |
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
