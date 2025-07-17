\version "2.18.2"

\header {
  title = "The Blessings of the Earth and Sky"
  composer = "Words by Kennith Patton. Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4 c8( d) | % The
      e4 f g g | f e d g | % blessing of the earth and sky u
      a b c b | a a g c,8( d) | % pon our friendly house do lie. The
      e4 f g g | f e d g | % rightness of a master’s art has
      a b c b | a a g g | % blessed with grace its every part. The
      c b a g | f e d g | % warmth of many hands is strewn in
      f e d8( e) f4 | e d c \bar "|." % human blessing on this stone.
  }
}

verse = \lyricmode {
  The bles -- sings of the earth and sky u --
  pon our friend -- ly house do lie. The
  right -- ness of a mast -- er's art has
  blessed with grace its ev -- ery part. The
  warmth of ma -- ny hands is strewn in
  hu -- man bles -- sing on this stone.
}

harmonies = \chordmode {
  % Intro
  c4
  f1 | d2:dim g |
  a1:m | f |
  1 | d2:dim g |
  a1:m | f |
  c4 e:7 a:m a:7 | d2:m d:dim |
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
