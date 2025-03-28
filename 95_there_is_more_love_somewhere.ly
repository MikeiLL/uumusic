\version "2.18.2"

\header {
  title = "#95 There is More Love Somewhere"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 2 f4 g8( a) |
    a4.( g16 f) f2~ | f2 g4.( f8) | f1~ | % There is more love some -- where
    f2 a4 c8( d) | d4.( c8) c2~ | c2 a4.( g8) | g1~ | % There is more love some -- where
    g2 a4 c8 c | d4.( c16 bes) bes2~ | bes d8 d4. | c2 a16( g f4.~) | % I'm gonna keep on till I find it
    f2 f4 g8( a) | a4.( g16 f) f2~ | f2 g4. f8 | f1 \bar "|." % There is more love some -- where
  }
}

verse = \lyricmode {
  There is more love some -- where
  There is more love some -- where
  I'm gon -- na keep on till I find it
  There is more love some -- where.
}

harmonies = \chordmode {
  % Intro
  \partial 2 c2 |
  f1 | bes:m | f | f:7 |
  bes | bes | g:m | g:m7 |
  ees2:maj7 a:7 | d1:m | b:m7.5- |
  g:/b | g2:m7 bes:/c | bes1:/c |
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
  "then Hope, then Peace, then Joy"
  }
}
