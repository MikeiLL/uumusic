\version "2.24.4"

\header {
  title = "#124 Be That Guide"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    c4. c8 d4 f | g a8( bes) c2 | bes4. a8 g4 a | f d e2 |
    f4. g8 a4 g8( a) | bes4 c d2 | c4 a8( g) f4 c | d4 f f2 |
  }
}

verse = \lyricmode {
  Be that guide whom love sus -- tains.
Rise a -- bove the dai -- ly strife:
lift on high the good you find.
Help to heal the hurts of life.
}

harmonies = \chordmode {
  % Intro
  f1:9/c | ees:9 | g:m7/d | c2:sus7/f c:7/e |
  f1:9/c | ees:9 | d:sus7 | ees:9 |
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
  "Be that helper nothing daunts—"
  "doubt of friend or taunt of foe."
  "Ever strive for liberty."
  "Show the path that life should go."
  " "
  "Be that builder trusting good,"
  "bitter though the test may be:"
  "through all ages they are right,"
  "though they build in agony."
  " "
  "Be that teacher faith directs."
  "Move beyond the old frontier:"
  "though the frightened fear that faith,"
  "be tomorrow’s pioneer!"
  }
}
