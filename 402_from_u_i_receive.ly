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

clarinet = \relative c'' \transpose f g  {{
  \clef treble
  \key f \major
  \time 7/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "clarinet" {
    \partial 2 d8^\staccato r d^\staccato r | % from
    \repeat volta 2 {
    c4. f8^\staccato r f^\staccato r | a4. f8^\staccato r f^\staccato r | % you I re
    cis4. f8^\staccato r f^\staccato r | g4. f8^\staccato r f^\staccato r | % ceive to
    ees4. f8^\staccato r f^\staccato r | g4. f8^\staccato r f^\staccato r |  % you I
    d4. f8^\staccato r f^\staccato r | g4. f8^\staccato r f^\staccato r | % give to
    cis4. f8^\staccato r f^\staccato r | a4. f8^\staccato r f^\staccato r | % gether we
    d4. f8^\staccato r f^\staccato r | g4. f8^\staccato r f^\staccato r | % share and from
    cis4. e8^\staccato r e^\staccato r | g4. e8^\staccato r e^\staccato r | % this we
    ees4. f8^\staccato r f^\staccato r | d4. g8^\staccato r g^\staccato r | % live
    }
  }}
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
    \new Voice = "clarinet" { \clarinet }
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
