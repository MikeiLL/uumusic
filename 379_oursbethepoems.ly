\version "2.18.2"

\header {
  title = "Ours Be the Poems"
  composer = "Words by Kenneth L Patton. Music by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key a \major
  \time 7/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
    \new Voice = "verse" {
      d4 d8 d d4 d8 | fis( d) d4 r4. | % Ours be the poems of all tongues,
      d4 d8 d d4 d8 | fis( d) d4 r4. | % Ours be the poems of all tongues,
      d4 d8 d fis fis fis | gis4 a4. r4 |  % All things of loveliness and worth.
      d,4 d8 d fis fis fis | gis4 a4. r4 |  % All things of loveliness and worth.
      d,8 fis4 d8 fis4 d8 | fis4 d c r8 | % All arts, all a -- ges, and all songs,
      d8 fis4 d8 fis4 d8 | fis4 d c r8 | % All arts, all a -- ges, and all songs,
      d8 d4 d8 fis4 gis8 | gis4 a d, r8 | % One life, one beau -- ty on the earth.
      d8 d4 d8 fis4 gis8 | gis4 a d, r8 | % One life, one beau -- ty on the earth.
    }
  }
}

bass = \relative c, {
  \clef bass
  \key a \major
  \time 7/8
  \new Voice = "bass" {
    d8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
    d,8 fis a gis a d, a' | d,8 fis a gis a d, a' |
  }
}

verse = \lyricmode {
  Ours be the poems of all tongues,
  (Ours be the poems of all tongues,)
  All things of love -- li -- ness and worth.
  (All things of love -- li -- ness and worth.)
  All arts, all a -- ges, and all songs,
  (All arts, all a -- ges, and all songs,)
  One life, one beau -- ty on the earth.
  (One life, one beau -- ty on the earth.)
}

harmonies = \chordmode {
  % Intro
  d1:7
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff {
    <<
      \new Voice = "one" { \melody }
      \new Lyrics \lyricsto "verse" \verse
      \new Voice = "bass" { \bass }
    >>
    }
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
