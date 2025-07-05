\version "2.18.2"

\header {
  title = "#38 Morning Has Broken"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 9/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
    \partial 2. c4 e g | % Morning has
    c2. d b4 a g | % broken like the first
    a2. g c,4 d e | % morning, blackbird has
    g2. a g4 e c |% spoken like the first
    d2.~ d g4 e g | % bird. Praise for the
    c2. a g4 e c | % singing! Praise for the
    c2. d e4 d e | % morning! Praise for them,
    g2. a d,4 e d | c2.~ c  % springing fresh from the Word!
    }
  }
}

verse = \lyricmode {
  Morn -- ing has bro -- ken
  like the first morn -- ing,
  black -- bird has spo -- ken
  like the first bird.
  Praise for the sing -- ing!
  Praise for the morn -- ing!
  Praise for them, spring -- ing
  fresh from the Word!
}

harmonies = \chordmode {
  % Intro
  c2. |
  d:m e:m e:m | f g f |
  e:m d:m c | bes bes a:m |
  bes a c | bes d d |
  g:/b bes bes | f c
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
