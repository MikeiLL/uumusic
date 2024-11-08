\version "2.18.2"

\header {
  title = "#318 We Would Be One"
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
  We would be one as now we join in sing -- ing
  our hymn of love, to pledge our -- selves a -- new
  to that hight cause of great -- er un -- der -- stand -- ing
  of who we are, and what in us is true.

  We would be one in liv -- ing for each oth -- er
  to show to all a new com -- mu -- ni -- ty.
}

harmonies = \chordmode {
  % Intro
  ees1 | bes | bes | bes2 ees2 | % we would be one... singing
  ees1 | bes2 ees2 | ees2. bes4 | ees1 | % our hymn of love... to pledge our selves a -- new
  ees | c:min | ees2.:/g bes4 | bes f2.:min | % to that hight cause of great -- er un -- der -- stand -- ing
  f2:min c4:7 f:min/aes | ees1:/bes | bes2.:/g g4 | g1 | % of who we are... and what in us is true
  g4 ees2. | c1:min | c2.:min bes4 | bes f2.:min | % we would be one... in living for each other
  f2:min c4:7 f:min/aes | ees1:/bes | ees2:/bes bes4 ees | % to show to all... a new community
  ees1 |
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
