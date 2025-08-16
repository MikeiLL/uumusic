\version "2.18.2"

\header {
  title = "The Fire of Commitment"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key ees \major
  \time 5/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    r2. r2 | r2. r2 | r2. r2 |
    r2. ees4 f | g4. ees bes'4 c | bes4. g ees4 g | % From the light of days re -- mem -- bered burns a
    aes4. g f4 ees | c2. ees4 f | g4. ees bes'4 c | bes4. g ees4 g | % bea -- con bright and clear Guid -- ing hands and hearts and spi -- rits
    aes4. g f4 ees | f2. c'4 d | ees2. d4 bes | c4. bes ees,4 g | % faith set free from fear. When the fire of com -- mit -- ment sets our
    aes4. g f4 ees | c2. ees4 f | % mind and soul a blaze When our
    g4. ees bes'4 c | bes4. g ees4 g | % hun -- ger and our pas -- sion meet to
    aes4. g f4 ees | f2. c'4 d % call us on our way When we
    ees4. ees d4 bes | c4. bes ees,4 g | % live with deep as -- sur -- ance of the
    aes4. g f4 ees | c2. ees4 f | % lame that burns with -- in, Then our
    g4. ees bes'4 c | bes4. g ees4 g | % pro -- mise finds ful -- fill -- ment and our
    aes4. g f4 ees | ees2.~ ees2~ | ees2.~ ees2 | % fu -- ture can be -- gin.
    r2. r2 | r2. r2 \bar "|."
  }
}

verse = \lyricmode {
  From the light of days re -- mem -- bered burns a
  bea -- con bright and clear Guid -- ing hands and hearts and spi -- rits In -- to
  faith set free from fear. When the

  % Chorus:
  fire of com -- mit -- ment sets our
  mind and soul a blaze When our
  hun -- ger and our pas -- sion meet to call us on our way
  When we live with deep as -- sur -- ance of the
  flame that burns with -- in, Then our
  pro -- mise finds ful -- fill -- ment and our
  fu -- ture can be -- gin.
}

harmonies = \chordmode {
  % Intro
  e2. bes2:/d | c2.:m ees2:/bes | aes2. bes2 | ees2. aes2:/bes |
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
