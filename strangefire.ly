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
    e e2 fis4~ | fis e2 e4~ | e b cis2~ | cis cis4 cis | % incense of my soil is burned by
    cis4( b2) b4~ | b2 gis4 cis~ | cis1~ | cis2 r4 e | % the fire in my blood I
    e2 e4 e | fis2 e4 e~ | e cis2.~ | cis4 r cis cis | % come with a softer answer to the
    cis b2 b4 | b gis gis cis~ | cis1 | r4 e e e | % questions that lie in your path I want to
    e2 e4 e | fis( e) e e~ | e( b)cis2~ | cis cis4 cis | % harbor you from the anger find a
    cis b2. | b2 gis4 cis~ | cis1 | | % refuge from the wrath
  }
}

verse = \lyricmode {
  I come to you with strange fire
  I make an of -- fer -- ing of love
  The in -- cense of my soul is burned
  By the fire in my blood
  I come with a soft -- er an -- swer
  To the ques -- tions that lie in your path
  I want to har -- bor you from the an -- ger
  Find a re -- fuge from the wrath

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
  e4 |
  e1 | e | a | a |
  e | e | a | a |
  e | e | a | a |
  e | e | a | a |
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
