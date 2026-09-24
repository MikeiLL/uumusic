\version "2.18.2"

\header {
  title = "The Way Knows"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key des \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
   bes4 f' ees des8 c~ | c4. bes8 bes2 |  % You don't have to know the Way
   r8 f f4 aes4. bes8 | bes2 r |  % The Way knows the Way
   bes4 f' ees des8 aes'~ | aes4. ees8 ees2 | % You don't have to plan the way
   r8 aes4 ees8 ees2 |  % trust the Way
   r8 aes4 ees8 ees4 r8 aes |  % feel your way The
   aes( bes4 f8) f2 | % Way knows The
   r8 des aes'4 ges8(f4. ) % Way knows The
   r8 bes, bes4 des4. aes8 | aes( bes4.~) bes4 r | % Way knows the Way
  }
}

verse = \lyricmode {
  You don't have to know the Way
  The Way knows the Way
  You don't have to plan the way
  trust the Way
  feel your way
  The Way knows
  The Way knows
  The Way knows the Way
}

harmonies = \chordmode {
  % Intro
  bes:m
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
