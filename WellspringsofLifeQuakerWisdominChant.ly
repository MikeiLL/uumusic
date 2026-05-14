\version "2.18.2"

\header {
  title = "Wellsprings of Life: Quaker Wisdom in Chant"
  composer = "By Paulette Meier transcribed by Mike iLL"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  <<
  \new Voice = "intro" {
  }
  \new Voice = "verse" {
    \repeat volta 2 {
    bes4( c) c2~ | c1 | r4 bes( c2) | c2. bes4 | bes( c) c2~ | c1 | % Stillness deep deep within us
    r4 bes c d | ees d c bes~ | bes1~ | % From small beginnings it flows
    bes2 r4 bes | g bes c d | d2 c~ | c1 | % into the living water
    r2. c4 | \tuplet 3/2 {f2 ees d} | c1~ | c | % the ocean of god
    r | c2 c | c c | bes4( c2.~) | c1 | % through our stillness god
    bes2( c | d ees | d c | bes1 | c~) | c~ | c~ | c2 r % moves
      }
  }
  >>
}

verse = \lyricmode {
  Still -- ness deep deep with -- in us
  From small be -- gin -- nings it flows
  in -- to the liv -- ing wa -- ter
  the o -- cean of god
  through our still -- ness god
  moves __
}

harmonies = \chordmode {
  % Intro
  c1:m
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

% Additional Notes
\markup \fill-line {
" "
" "
" "
}
