\version "2.18.2"

\header {
  title = "From You I Receive"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 7/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 2 c2 | % from
    a'4.~ a2~ | a4. a4 c | % you I re
    bes'4.~ bes2~ | bes4. % ceive to you I give
    % together we share and from
    % this we live
  }
}

verse = \lyricmode {
  From you I re -- ceive
  to you I give
  to -- get -- her we share and from
  this we live
}

harmonies = \chordmode {
  % Intro
  f2/c |
  f4./c f2/c |
  bes4.:m/des bes2:m/des |
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
