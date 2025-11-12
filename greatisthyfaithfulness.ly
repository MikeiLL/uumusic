\version "2.18.2"

\header {
  title = "Great is thy Faithfulness"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key d \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
      fis4 fis fis | fis4. e8 d4 | g g g | g fis2 | % Great is thy faithfulness, O God, my Father;
      b4 cis b | a4. g8 fis4 | e fis gis | a2. | % There is no shadow of turning with thee.
      a4 b cis | d4. cis8 b4 | a g fis | f e2 | % Thou changest not, thy compassions, they fail not;
      b'4 cis d | d4. a8 a4 | fis fis e | d2. | % As thou hast been, thou forever wilt be.
      % Refrain:
      a'4 a e | g8. fis16 f2 | % Great is thy faithfulness,
      b4 b fis | a8. g16 g2 | % Great is thy faithfulness,
      a4 b cis | d a b | cis d b | a2. | % Morning by morning new mercies I see.
      a4 b cis | d4. cis8 b4 | a g fis | fis e2 | % All I have needed thy hand hast provided;
      b'4 cis d | d4. a8 a4 | % Great is thy faithfulness,
      fis g cis, | d2. \bar "|."% Lord unto me.
  }
}

verse = \lyricmode {
  Great is thy faith -- ful -- ness, O God, my Fa -- ther;
  There is no sha -- dow of turn -- ing with thee.
  Thou chang -- est not, thy com -- pas -- sions, they fail not;
  As thou hast been, thou for -- e -- ver wilt be.
  % Refrain:
  Great is thy faith -- ful -- ness,
  Great is thy faith -- ful -- ness,
  Morn -- ing by morn -- ing new mer -- cies I see.
  All I have need -- ed thy hand hast pro -- vi -- ded;
  Great is thy faith -- ful -- ness,
  Lord un -- to me.
}

harmonies = \chordmode {
  d2 d4:5+ | g2. | a | g4 d2 | % Great is thy faithfulness, O God, my Father;
  d2. | d4 a d | a:/e b e:7 | a2. | % There is no shadow of turning with thee.
  a2. | a | d4 e:m d | e2.:m7/g | % Thou changest not, thy compassions, they fail not;
  gis2.:dim | d:/a | a:sus | d | % As thou hast been, thou forever wilt be.
  % Refrain:
  a | d2 d4:7 | % Great is thy faithfulness,
  b2. | e | % Great is thy faithfulness,
  a | d2 d4:m | a2 e4 | a2. | % Morning by morning new mercies I see.
  a2. | d | d4 e2:m | g2. | % All I have needed thy hand hast provided;
  gis2.:dim | d:/a | d2:/a a4 | d2. |% Great is thy faithfulness,
  % Lord unto me.
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
