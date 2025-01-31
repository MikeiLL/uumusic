\version "2.18.2"

\header {
  title = "# 159 This is My Song"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    r4 g f g | aes2. g4 | f g ees4. f8 | f4 g2.~ |
    g4 g f g | aes2. g4 | f g ees4. f8 | g1~ |
    g4 bes bes bes | c2. g4 | g bes bes4. f8 | f4 aes2.~ |
    aes4 aes g f | g2. ees4 | ees f f4. g8 | g1~ |
    g4 bes bes bes | c2. g4 | g bes bes4. f8 | f4 aes2.~ |
    aes4 aes g f | g2. ees4 | ees f f4. ees8 | ees1 \bar "|."
  }
}

verse = \lyricmode {
  This is my song, O God of all the na -- tions,
  a song of peace for lands a -- far and mine.
  This is my home, the coun -- try where my heart is,
  here are my hopes, my dreams, my ho -- ly shrine;
  but o -- ther hearts in o -- ther lands are beat -- ing
  with hopes and dreams as true and high as mine.
}

harmonies = \chordmode {
  % Intro
  ees1 |
  bes | bes | bes4 ees2. | ees1 |
  bes | bes | bes | bes |
  c:m | c:m | f:m | f:m |
  ees:/bes | ees2.:/bes ees8:/bes g:7 | g1:7 |
  g4:7 g2.:m | c1:m | c:m | f:m |
  f:m | ees:/bes | ees:/bes | ees |
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
