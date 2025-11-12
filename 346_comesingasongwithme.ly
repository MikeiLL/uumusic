\version "2.18.2"

\header {
  title = "Come Sing a Song With Me"
  composer = "By Carolyn McDade Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key d \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    cis2. | cis2 e4 | cis2 b4 | a2. | % Come sing a song with me.
    fis'2. | fis2 a4 | fis2 e4 | d2. | % Come sing a song with me.
    cis2. | cis2 e4 | cis2 b4 | a2 a4 | % Come sing a song with me that
    b4( cis) d | cis2 b4 | a2.~ | a2 e'4 | % I might know your mind. And
    e2.~ | e4 b'4 gis | a2.~ | a2 e4 | % I'll bring you hope when
    e2 b4 | e2 d4 | cis2.~ | cis2 e4 |% hope is hard to find, and
    e2.~ | e4 b' e, | cis'2 b4 | a4^\markup {"(f#m)"} a, a | % I'll bring a song of love and a 
    b cis d | cis2 b4 | a2.~ | a2. \bar "|."% rose in the wintertime.
  }
}

verse = \lyricmode {
  Come sing a song with me.
  Come sing a song with me.
  Come sing a song with me that
  I might know your mind.
  And I'll bring you hope when
  hope is hard to find, and
  I'll bring a song of love and a 
  rose in the win-- ter -- time.
}

harmonies = \chordmode {
  a2. | a | a | a | e:m/g | e:m/g | e:m/g | e:m/g |
  a | a | a | a | e:m/g | e:m/g | a | a |
  e:7 | e:7 | a | a | e:7 | e:7 | a | a | 
  e:7 | e:7 | a | a | 
  e:m/g | e:m/g | a | a |
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
