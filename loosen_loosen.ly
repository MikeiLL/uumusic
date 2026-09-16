\version "2.18.2"

\header {
  title = "Loosen, Loosen"
  composer = "By Aly Halpert Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
      c8 r a c r a | c4( d8) c4 r8 | % Loosen, loosen, baby,
      e4 c8 e4 c8 | e4( f8) e r e | % You don’t have to carry, The
      e a g e c d | e d c a r a | % weight of the world in your muscles and bones, Let
      c4 d8 b4 c8 | a4 r2 | % go, let go, let go.
    }
  }
}

verse = \lyricmode {
  Loo -- sen, loo -- sen, ba -- by,
  You don't have to car -- ry, The
  weight of the world in your mus -- cles and bones, Let
  go, let go, let go.
}

harmonies = \chordmode {
  % Intro
  a2.:m | g |
  c | d:m |
  a4.:m g | c2. |
  d2.:m | d:m |
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
