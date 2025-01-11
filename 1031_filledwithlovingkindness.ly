\version "2.18.2"

\header {
  title = "Filled With Loving Kindness"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4. d8 d a' |
    a2~ a8 e f c | d4 d2. |
    e2 d4 e | f2~ f8 d d a' |
    a2~ a8 e f c | d4 d2. |
    e2 f4 g | a2~ a8 a a c |
    c2~ c8 d bes a | a1 |
    g2 f4 e | d1 |
  }
}

verse = \lyricmode {
  May I be filled with lov -- ing kind -- ness.
  May I be well.
  May I be filled with lov -- ing kind -- ness.
  May I be well.
  May I be peace -- ful and at ease.
  May I be whole.
}

harmonies = \chordmode {
  % Intro
  \partial 4. f4.:maj7 |
  f1:maj7 | f:min6/c | f:maj7 | f:min6 |
  f:maj7 | f:min6 | f:maj7 | bes2:maj7 f:min7/bes |
  d1:min | g | g:min | c:7 |
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
    " "
  "Second time replace I with you."
  " "
  "Third time replace I with we."
  }
}
