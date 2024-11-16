\version "2.18.2"

\header {
  title = "#323 Break Not the Circle"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4 c4 |
    d4. e8 f4 g | a g a bes | c2. c4 |
    c4. bes8 g4 bes | bes4. a8 f4 a | a g2 c,4 |
    d4. e8 f4 g | a g a bes | c2. c4 | c d bes a | g4. d8 e4 c | c f2 \bar "|."
  }
}

verse = \lyricmode {
  Break not the cir -- cle of en -- a -- bling love,
  where peo -- ple grow, for -- give -- en and for -- giv -- ing;
  break not the cir -- cle, make it wid -- er still, till
  it in -- cludes, em -- bra -- ces all the liv -- ing.
}

harmonies = \chordmode {
  % Intro
  \partial 4 f4 |
  b1:min7.5- | b:maj7 | f | f:/e |
  d:min | g:min |
  b1:min7.5- | b:maj7 | f | a2:min bes |
  bes  c | bes4 f2
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
