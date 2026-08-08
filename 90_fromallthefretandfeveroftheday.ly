\version "2.18.2"

\header {
  title = "#90 From All the Fret and Fever of the Day"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 3/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 2. c4 f g | % From all the
    bes4. bes8 a4 f d g | % fret and fe -- ver of the
    c,2. c4 f g | % day let there be
    bes d c4. a8 f4 g | % moments when we turn a
    g2. g4 c a | % way, and, deaf to
    g4. f8 bes4 a g f | % all con -- fus -- ing out -- er
    d2. e4 f a | % din, intently
    c a d bes8( a) g4. f8 | f2. \bar "|." % listen for the voice with in
  }
}

verse = \lyricmode {
  From all the
  fret and fe -- ver of the
  day let there be
  mo -- ments when we turn a
  way, and, deaf to
  all con -- fus -- ing out -- er
  din, in -- tent -- ly
  lis -- ten for the voice with -- in
}

harmonies = \chordmode {
  % Intro
  f2.:/c
  bes1.:/d
  f:/c
  bes:/d
  g1:7/d g2:sus7/d
  c1.:sus7
  g2:m7/d g:m6/d g:m7/d
  a:m7.5-/ees d:7 g:7/d
  c2:sus7 f4:/c
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
