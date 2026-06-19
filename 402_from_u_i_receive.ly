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
    \tempo "Presto" 4 = 180
    \partial 2 c2 | % from
    \repeat volta 2 {
    a'4.~ a2~ | a4. a4 c | % you I re
    bes4.~ bes2~ | bes4. a2 | g4.~ g2~ | g4. bes2 | % ceive to you I
    a4.~ a2~ | a4. r4 g | f8 f4~ f2~ | f4. a2 | g4.~ g2~ | g4. f4 f | % give together we share and from
    e4.~ e2~ | e4. g2 | f4.~ f2~ | f4. c2 | % this we live
    }
  }
}

verse = \lyricmode {
  From you I re -- ceive
  to you I give
  to -- ge -- ther we share and from
  this we live
  From
}

harmonies = \chordmode {
  % Intro
  ees2:maj9/d |
  f4./c f2/c | f4./c f2/c |
  bes4.:m/des bes2:m/des | bes4.:m/des bes2:m/des |
  f4.:sus7/ees f2:sus7/ees | f4.:sus7/ees f2:sus7/ees |
  d4.:m d2:m | d4.:m d2:m |
  cis4.:5+ cis2:5+ | cis4.:5+ cis2:5+ |
  g4.:7/b g2:7/b | g4.:7/b g2:7/b |
  cis4.:m7.5- cis2:m7.5- | cis4.:m7.5- cis2:m7.5- |
  ees4.:maj9/d ees2:maj9/d | ees4.:maj9/d ees2:maj9/d |
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
