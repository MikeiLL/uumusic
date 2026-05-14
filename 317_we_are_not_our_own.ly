\version "2.18.2"

\header {
  title = "We Are Not Our Own"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    g8 g bes4 bes | c,2 ees8( f) | g4 g2 | % We are not our own. Earth forms us,
    g8 g bes4 bes | c, c ees8 f | g2. |% human leaves on nature's growing vine,
    g8 g c4 c | bes2 aes8( g) | f4 f2 | % fruit of many generations,
    g4. g8 bes4( | bes aes8 g) f4 | ees2. |% seeds of life divine.
  }
}

verse = \lyricmode {
  We are not our own. Earth forms us,
  hu -- man leaves on na -- ture's grow -- ing vine,
  fruit of ma -- ny ge -- ne -- ra -- tions,
  seeds of life di -- vine.
}

harmonies = \chordmode {
  % Intro
  ees2. | aes | ees | bes2 ees4 |
  aes2.:maj7 | g:7 | c | des2 aes4 |
  des2 bes4 | g2. | ees:/f | ees |
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
