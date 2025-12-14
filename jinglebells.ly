\version "2.20.0"
\language english

\header {
	title = "Jingle Bells"
	composer = "James Lord Pierpont"
	tagline = ##f
}
% source https://github.com/flying-czx/LilyPond-Tutorial
melody = \relative c'{
  \clef treble
  \numericTimeSignature
  \time 4/4
  \key g \major
  \repeat volta 3{
    d4 b' a g | d2. 4 | 4 b'4 a g | e2. r4 |
    e c' b a | fs2. r4 | d' d c a | b1 | d,4 b' a g | d2. r4 |
    d b' a g | e2. 4 | e4 c' b a | d d d d | e d c a | g2 d'4 r |
    b4 4 2 | 4 4 2 | 4 d4 g,4. a8 | b2. r4 |
    c4 4 4. 8 | 4 b4 4 8 8 | 4 a4 4 b4 | a2 d4 r |
    b4 4 2 | 4 4 2 | 4 d4 g,4. a8 | b2. r4 |
    c4 4 4. 8 | 4 b4 4 8 8 |
  }
  \alternative {
    \relative b'{ d4 d c a | g2. r4 | }
    \relative b'{ d2 d | e fs | g1~ | g~ | g~ | g4 r2. \bar "|." }
  }
  \bar "|."
}

lyric = \lyricmode {
  <<
    {
      \set associatedVoice = "melody"
      Dash -- ing through the snow, in_a one -- horse o -- pen sleigh.
      Over the fields we go, laugh -- ing all the way.
      Bells on bob -- tail ring, mak -- ing spi -- rits bright.
      What fun it is to ride and sing a sleigh -- ing song to -- night!
      Oh!
    }
  >>
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way!
  Oh, what fun it is to ride in a one -- horse o -- pen sleigh! Hey!
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way!
  Oh, what fun it is to ride in a one -- horse o -- pen sleigh!
  one -- horse o -- pen Sleigh!
}
harmonies = \chordmode {
  % Intro
  g1 | g | g | c |
  c | c | c | d |
  g | g | g | c |
  c | d | d | g2 d |

  g1 | g | g | g |
  c | g | g | d |
  g | g | g | g |
  c | g | d | g |
  d | d | g | g |
}

\score {
  \layout {
    \context {
      \Score proportionalNotationDuration = #(ly:make-moment 1/4)
    }
  }

  <<

    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \new Voice = "melody"
      \melody
    }
    \new Lyrics \lyricsto "melody" {
      \lyric
    }
  >>
}
