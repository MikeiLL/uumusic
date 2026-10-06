\version "2.18.2"

\header {
  title = "Lydian Riff"
  composer = "By Airto transcribed by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    r8 d4. cis bes8~ | bes4 cis4. d | cis4. bes aes4~ | aes8 g4. f e8~ |
    e4. d4.~ d4~ | d1 | r | r |
    r8 d'4. cis bes8~ | bes4 cis4. d | cis4. bes aes4~ | aes8 g4. f e8~ |
    e4. d4.~ d4~ | d1 | r | r |
  }
}

verse = \lyricmode {
  Hi.
}

harmonies = \chordmode {
  % Intro
 g1 | g | g | g | g | g | g | g |
 bes:m | bes:m | bes:m | bes:m |
 g | g | g | g |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    %\new Lyrics \lyricsto "verse" \verse
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
