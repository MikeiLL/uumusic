\version "2.24.2"

\include "./metadata.ly"
\header {
  title = "I am the Circle"
  composer = ""
  copyright = \copyright
  tagline = \engraved
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key aes \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 { ees8( f) f f aes( g) f4 | ees8( f) f4 aes8 g f r | } % I am the circle you are healing me
    \repeat volta 2 { c'8( bes) aes g aes( g) f4 | ees8( f) f4 r2 | }  % Unite my people be one
    \repeat volta 2 { ees8( f) f f aes( g) f4 | ees8( f) f4 aes8 g f r | } % You am the circle I are healing you
    \repeat volta 2 { c'8( bes) aes g aes( g) f4 | ees8( f) f4 r2 | }  % Unite my planet be one
  }
}

verse = \lyricmode {
    \lyricfont
   I am the cir -- cle you are heal -- ing me
   U -- nite my peo -- ple be one
   You are the cir -- cle I am heal -- ing you
   U -- nite my pla -- net be one
}

harmonies = \chordmode {
  % Intro
  f1:min
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
  \include "layout.ly"
  \midi { }
}

\markup \fill-line {
  \column {
  ""
  }
}
