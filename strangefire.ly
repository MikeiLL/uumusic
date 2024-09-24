\version "2.18.2"

\header {
  title = "Strange Fire"
  composer = "Indigo Girls"
  tagline = ""
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key e \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4 e4 | % I
    e e8 e4. e4 | fis( e2) e4~ | e( b cis2) | r4 cis cis cis | % come to you with strange fire I make an
    cis b2 b4( | b) gis4 b( cis4)~ | cis2 r | r2. e4 | % offering of love. The
    % incense of my soil is burned
  }
}

verse = \lyricmode {
  I come to you with strange fire
  I make an offering of love
  The incense of my soil is burned
  By the fire in my blood
  I come with a softer answer
  To the questions that lie in your path
  I want to harbor you from the anger
  Find a refuge from the wrath

  This is a message
  A message of love
  Love that moves from the inside out
  Love that never grows tired

  I come to you with strange fire
  Fire

  Mercenaries of the shrine
  Now who are you to speak for god
  With haughty eyes and lying tongues
  And hands that shed innocent blood
  Now who delivered you the power
  To interpret calvary
  You gamble away our freedom
  To gain your own authority
  Find another state of mind
  You know it's time we all learned
  To grab hold
  Strange fire burns
  With the motion of love
  Fire
  Fire

  When you learn to love yourself
  You will dissolve all the stones that are cast
  Now you will learn to burn the icing sky
  To melt the waxen mask
  I said to have the gift of true release
  This is a peace that will take you higher
  Oh I come to you with my offering
  I bring you strange fire
  This is a message
  A message of love
  Love that moves from the inside out
  Love that never grows tired
  I come to you with strange fire
  Fire
  Fire
  I come to you with strange fire
}

harmonies = \chordmode {
  % Intro
  e1 | e | a | a |
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
