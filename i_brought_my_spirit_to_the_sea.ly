\version "2.24.2"

\include "./metadata.ly"
\header {
  title = "I Bring My Spirit to the Sea"
  composer = "Words by Max A. Kapp Music and lyrical adaptations by Rivka & Mike iLL"
  copyright = \copyright
  tagline = \engraved
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key f \major
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
      c2.~ c8 c,~ | c d4 d e e8~ | e f4 f f g8~ | g a4 a bes4. | bes2. r4 | % I bring... shore
      bes2.~ bes8 a~ | a g4 g a g8~ | g f4 f f aes8~ | aes2. f4 | aes2 f | c'2. r4 | % I gaze... roar
    }
  }
}

verse = \lyricmode {
  <<
  \new Lyrics {
    \set associatedVoice = "melody"
    \set stanza = #"1. "
    I bring my spi -- rit to the sea, and
    stand up -- on the shore.
    I gaze in -- to in -- fi -- ni -- ty, and
    hear the wa -- ters roar.
  }

  \new Lyrics {
    \set associatedVoice = "melody"
    \set stanza = #"2. "
    And then there comes a sense of peace, some
    whis -- per calms my soul.
    Some an -- cient mi -- nis -- try of stars has
    made my spi -- rit whole.
  }

  \new Lyrics {
    \set associatedVoice = "melody"
    \set stanza = #"3. "
    I bring my spi -- rit to the trees that
    loom a -- gainst the sky.
    I touch each wand -- 'ring care -- less breeze to
    know that God is nigh. And
  }

  \new Lyrics {
    \set associatedVoice = "melody"
    \set stanza = #"4. "
    Now, now I feel an in -- ner flame that
    fierce -- ly burns my tears.
    Up -- right, I rise from blen -- ded knee to
    meet the ask -- ing years.
  }
  >>
}

harmonies = \chordmode {
  % Intro
  f2:sus f:7 | bes1 | c:/bes | ees | c:min |
  c:min | d:min | g:min | f:min | des:maj7 | c:7 |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose f e { \harmonies }
    }
    \new Voice = "one" { \transpose f e { \melody } }
    \new Lyrics \lyricsto "verse" \verse
  >>
  \include "layout.ly"
  \midi { }
}
