\version "2.18.2"

\header {
  title = "Everything is Love"
  composer = "By Hollywood E Jones; Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "intro" {
  \partial 2 g8 g f ees % Everything is
  }
  \new Voice = "verse" {
    \repeat volta 2 {
      g4 r g8 g f ees | % love Everything a -
      g4 r g8 g f ees | % bout Everything a -
      g4 g bes g | % bout you baby
      f8( ees4) r8 g8 g f ees | % now. Everything is
      g4 r g f8( ees) | % love. Why is
      g4 r g4. ees8~ | % love of
      ees4 r8 bes'8~ bes4. c8~ | c4 r g8 g f ees |% you. Of you.
    }
  }
}


intro = \lyricmode {
  Ev -- 'ry -- thing is
}

verse = \lyricmode {
  love.
  Ev -- 'ry -- thing a -- bout;
  Ev -- 'ry -- thing a -- bout you ba -- by now.
  Ev -- 'ry -- thing is love.
  Why is love
  of you you you.
  Ev -- 'ry -- thing is
}

verse_two = \lyricmode {
  love.
  Ev -- 'ry -- thing my -- heart;
  Ev -- 'ry -- thing my heart is beep -- ing now.
  Ev -- 'ry -- thing is love.
  Why is love
  of you you you.
  Come on ba -- by
}

verse_three = \lyricmode {
  now.
  Ev -- 'ry -- thing is love;
  Ev -- 'ry -- thing I love you sweet -- ly now.
  Ev -- 'ry -- thing is love.
  Why is love
  of you you you.
  Ev -- 'ry -- thing is
}

harmonies = \chordmode {
  % Intro
  r2 |
  ees1 | ees:5+ | c:m/ees | ees:7 |
  c:m/ees | ees:5+ | ees2 g:m/d | c1:m |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "intro" \intro
    \new Lyrics \lyricsto "verse" \verse
    \new Lyrics \lyricsto "verse" \verse_two
    \new Lyrics \lyricsto "verse" \verse_three
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
