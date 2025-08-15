\version "2.18.2"

\header {
  title = "#123 Spirit of Life"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    e2 d4 e | f1 | d2 c4 d | e1 |
    a2 b4 a | d2. e8 f | d4. g,8 g'4 f | f2 e |
    g2 c4 b | a1 | b2 c4 d | g,1 |
    e2 a4 e | f2. e8 f | d4. g,8 g'4 f | f2 e |
    g2 c4 b | a1 | b2 c4 d | g,1 |
    e2 a4 e | f2. e8 f | d2 g4. d8 | e1 \bar "|."
  }
}

verse = \lyricmode {
  Spi -- rit of Life, come un -- to me.
  Sing in my heart all the stir -- rings of com -- pas -- sion.
  Blow in the wind, rise in the sea;
  move in the hand, giv -- ing life the shape of jus -- tice.
  Roots hold me close; wings set me free;
  Spirit of Life, come to me, come to me.
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
