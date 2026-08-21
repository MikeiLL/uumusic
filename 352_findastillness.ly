\version "2.18.2"

\header {
  title = "352 Find a Stillness"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key aes \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    f4. e8 f4 g | % Find a still -- ness,
    aes4. g8 aes4 bes | % hold a still -- ness,
    c4. c8 aes4 g | f4. aes8 g2 | % let the still -- ness car -- ry me.
    f4. e8 f4 g | % Find the si -- lence,
    aes4. g8 aes4 bes | % hold the si -- lence,
    c4. c8 aes4 g | f4. aes8 g2 | % let the si - lence car -- ry my.
    c4. c8 des8 c4. | % In the spir -- it,
    bes4. aes8 aes8 g4. | % by the spi -- rit,
    f4. e8 f4 g | bes4. aes8 g4 des | % with the spir -- it fiv -- ing pow -- er,
    c8 f4. g4 aes | aes2 g | f1 | % I will find true har -- no -- ny.
  }
}

verse = \lyricmode {
  Find a still -- ness,
  hold a still -- ness,
  let the still -- ness car -- ry me.
  Find the si -- lence,
  hold the si -- lence,
  let the si -- lence car -- ry me.
  In the spir -- it,
  by the spi -- rit,
  with the spir -- it giv -- ing pow -- er,
  I will find true har -- mo -- ny.
}

harmonies = \chordmode {
  % Intro
  f1:m | f:m | f:m | f2:m c:7 |
  f1:m | f:m | f:m | f2:m c:7 |
  c1:7 | c:7 | c:7 | bes:m7 |
  bes:m7 | c:7 | f:m |
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
