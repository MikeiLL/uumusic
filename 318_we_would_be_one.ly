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
  ees1 | aes | aes | aes4 ees2. | % we would be one... singing
  ees1 | aes | aes | ees | % our hymn of love... to pledge our selves a -- new
  ees | c:min | ees:/g | aes | % to that hight cause of great -- er un -- der -- stand -- ing
  f:min | ees | ees | g:7 | % of who we are... and what in us is true
  f:min | c:min | c:min | f:min | % we would be one... in living for each other
  f:min | a:min7.5- | g:7 | aes:7/bes | % to show to all... a new community
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
