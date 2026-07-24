\version "2.18.2"

\header {
  title = "This Land of Bursting Sunrise"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "intro" {
    r2. | r2 r8
  }
  \new Voice = "verse" {
    e8 |
    \repeat volta 2 {
      a4 a8 b4 b8 | g4. g4 g8 | % This land of bursting sunrise, all
    c4 c8 d4 d8 | b4.~ b8 r c | %  lavender and blue, its
    a4 a8 b4 b8 | g4 g8 g4 c,8 |%  cloud -- strewn, light -- swept day skies flow, and
    f4 f8 f4 g8 | e2.~ | e4. r4 e8 |%  ev -- ery day re -- new. To
    a4 a8 b4 b8 | g4. g4 g8 | %  east the glow of dawning, to
    c4 c8 d4 d8 | b4.~ b8 r c |%  west the blaze of night, 'round
    a4 a8 b4 b8 | g4 g8 g4 c,8 | %  all the long horizon's rim, the
    f4 f8 f4 g8 | e2.~ | e | r | r4. r4 e8 |%  everlasting light! This
    }
  }
}

verse = \lyricmode {
  This land of burst -- ing sun -- rise,
  all la -- ven -- der and blue,
  its cloud -- strewn, light -- swept day skies flow,
  and ev -- ery day re -- new.
  To east the glow of dawn -- ing,
  to west the blaze of night,
  'round all the long ho -- ri -- zon's rim,
  the e -- ver -- last -- ing light!
  This
}

harmonies = \chordmode {
  % Intro
  d2.:m7/c | g:/b |
  % Verse
  d:m/a | g:/b | d:m7/c | g:/b |
  d:m/a | g:/b | d:m7/c | g:/b |
  d:m/a | g:/b | d:m7/c | g:/b |
  d:m/a | g:/b | d:m7/c | g:/b |
  d:m/a | g:/b | d:m7/c | g:/b |
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
