\version "2.18.2"

\header {
  title = "#131 Love Will Guide Us"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4. d8( e) g |
    g4. g2. e8( g) e | d4( g8) g2. g4 a8 |
    b4( a8) g2. g8 a b | a4.~ a2. g4 a8 |
    b4( a8) g2. e8( g) e | d4( g8) g2. g4 a8 |
    b4( a8) g2.  a8 b a | g2.~ g4. \bar "|."
  }
}

verse = \lyricmode {
  Love will guide us, peace has tried us,
  hope in -- side us wil lead the way on the
  road from greed to giv -- ing Love will
  guide us through the hard night.
}

harmonies = \chordmode {
  % Intro
  \partial 4. r4. |
  g1. | g | a | b2.:sus b |
  e:m e:7/d | c:maj7 a:9 |
  c:maj7 c:/d | c2. c4.
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
