\version "2.18.2"

\header {
  title = "#1008 When Our Heart is in a Holy Place"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key ees \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)

  \partial 4 ees8 f | g4 g8 f( f4.) bes,8 | c4 ees8 ees( ees4) bes8 bes | c8 ees ees c ees ees4. | ees2. % INTRO
  \new Voice = "verse" {
    ees8 f | % When our
    \repeat volta 2 {
      g4 g8 f( f4.) bes,8 | c4 ees8 ees( ees4) bes8 bes | c8 ees ees c ees ees4. | f2 r4 ees8 f |% heart is in a holy place... a holy place, we are
      g4 g8 f4. g8 f | ees4 ees8 ees( ees4) bes8 bes | c8 ees ees c ees ees4. | ees2 r4 g8 bes | % bless’d with love and amazing grace,
      c4 c8 bes( bes) bes bes4 | g8 f4 ees4. g8 bes | c8 c c c bes4. bes8 | bes2 r4 g8 bes | % trust the wisdom in each of us,
      c4 c8 bes( bes) bes c bes | aes8 g4 ees8( ees2) | \time 2/4 r4 bes8 bes | % see our faces in each other’s eyes, Then our
      \time 4/4 c8 ees ees c ees ees4. | ees2 r4 ees8 f | % heart is in a holy place.
    }
  }
}

verse = \lyricmode {
  When our heart is in a ho -- ly place,
  When our heart is in a ho -- ly place,
  We are bless’d with love and a -- maz -- ing grace,
  When our heart is in a ho -- ly place.
  When we trust the wis -- dom in each of us,
  Ev -- ’ry co -- lor ev -- ’ry creed and kind,
  And we see our fa -- ces in each o -- ther’s eyes,
  Then our heart is in a ho -- ly place.
  When we tell our story from deep inside,
  And we listen with a loving mind,
  And we hear our voices in each other’s words,
  Then our heart is in a holy place.
  When we share the silence of sacred space,
  And the God of our Heart stirs within,
  And we feel the power of each other’s faith,
  Then our heart is in a holy place.
}

harmonies = \chordmode {
  % Intro
  r4
  f2:sus f | f:m f | f:sus f | f:m f |
  f:sus f | f:m f | f:sus f | f:m f |
  f:sus f | f:m f | f:sus f | f:m f |
  c c:m7+ | c:m c:m7+ | c c:m7+ | c:m c:m7+ |
  c c:m7+ | c:m c:m7+ | c:m7+ | f:m/c des | ees1:/bes |
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
