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
    \repeat volta 2 {
      a2~ a8 g | g r4 r c8 | e2~ e8 d | a4. r |% Holy breath and holy name,
      a4. g | g g4 c8 | e4. d | a r |% Will you ease, will you ease this pain.
    }
  }
}

verse = \lyricmode {
  Loo -- sen, loo -- sen, ba -- by,
  You don't have to car -- ry, The
  weight of the world in your mus -- cles and bones, Let
  go, let go, let go.

  Ho -- ly breath and ho -- ly name, Will you
  ease, will you ease this pain.
}

harmonies = \chordmode {
  % Intro
  a2.:m | g |
  c | d:m |
  a4.:m g | c2. |
  d2.:m | d:m |

  a2.:m | g |
  d:m | d:m |
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
