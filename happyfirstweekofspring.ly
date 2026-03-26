\version "2.18.2"

\header {
  title = "Happy First Week of Spring"
  composer = "By Hollywood Jones and Mike iLL"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  <<
  \new Voice = "intro" {
  ees4 g f a | g b a c | b d c ees | g1 |
  }
  \new Voice = "verse" {
    r1 | r | r | r4 ees,8 ees ees4 f8 f | g1~ | g4 % Happy first week of Spring
  }
  >>
}

verse = \lyricmode {
  Hap -- py first week of spring.
  Winter is gone.
  At eleven fifty-nine PM
  it's gone away.

  It's like Easter
  Rose.

  Every day I wake up.

  I like to believe I am OK.

  Spring is a favorite season.

  Its will not change.

  Ever since March twentieth

  Look away beyond.

  Your true Spring Heart.
}

harmonies = \chordmode {
  % Intro
  a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g |
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
