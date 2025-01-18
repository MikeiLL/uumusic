\version "2.18.2"

\header {
  title = "Go Now in Peace"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    r1 |
    e4 g2. | r8 g8 a g a g a4 |
    g4 g8 f g2 | g4 g8 f g2 |
    c4 g c g | c g f8 e d4 |
    c4 c g'2 | c,4 c g'2 |
    e2 d4.( c8) | c2. r4 \bar "|."
  }
}

verse = \lyricmode {
  Child -- ren.
  You know we want you to
  Go now in peace.
  Go now in joy.
  May the spi -- rit of love sur -- round you.
  Ev -- 'ry -- where, ev -- 'ry -- where you may go.
}

harmonies = \chordmode {
  % Intro
  c4 c d:m e:m |
  f1 | g:7 |
  c | g:min |
  c | g:min |
  a:min7 | ees | f2 g:7 |
  f c |
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
