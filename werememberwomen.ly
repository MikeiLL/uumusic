\version "2.24.4"

\header {
  title = "We Remember Women"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key c \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4 g4 | % Re
    g e f a | g2 e4 c' |  % member all the women whos
    c f, g a | d,2. g4 | % voices shaped our way, who
    g e f a | g2 e4 e | % kindled fires of justice when
    d b' a fis | g2. g4 | % some preferred delay. Through
    g e c c' | c4.( a8) f4 a | % courage truth was spoken, through
    a fis d d' | d2( b4 ) g | % labor, chains undone; we
    c c c c | c2 b4 a |% bear their torch of promise till
    g e d b | c2. \bar "|." % work of love is won.
  }
}

verse = \lyricmode {
  Re -- mem -- ber all the wo -- men whose
  voic -- es shaped our way, who
  kin -- dled fires of jus -- tice when
  some pre -- ferred de -- lay. Through
  cour -- age truth was spo -- ken, through
  la -- bor, chains un -- done; we
  bear their torch of pro -- mise till
  work of love is won.
}

harmonies = \chordmode {
  % Intro
  \partial 4 c4 |
  d1:m | c:/e | d2:m d:m7+ | d:m7 g:7 |
  g1:m7 | cis:dim | c:9/d | g:/d |
  c:7/bes | f:/a | d:7/c | g:/b |
  c2:/e f:maj7 | d1:/fis | f:/g | c |
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
