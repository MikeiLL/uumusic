\version "2.18.2"

\header {
  title = "Amen"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
chorus = \relative c' {
  \clef treble
  \key f \major
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
      f2.~ f4( d8 c4.) | f4 r4 r1 |
      a2.~ a4( g8 f4.) | a4 r4 r1 |
      c2.~ c4.( d) | c4 r2 bes2. |
      a4 r2 g2. | f4 r4 r1 |
    }
  }
}

cantor = \relative c' {
  \clef treble
  \key f \major
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "lead" {
    r2. r | r4. f4. d c |
    r2. r | r4. f4. d f |
    r2. r | r2. r | r2. r | r4 a4. g8 f4. d |
  }
}

verse = \lyricmode {
  A -- men.
  A -- men.
  A -- men.
  A -- men.
  A -- men.
}

lead = \lyricmode {
  Less hat -- red.
  More lov -- ing.
  work to -- ge -- ther.
}

harmonies = \chordmode {
  % Intro
  f2. f2. |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \chorus }
    \new Lyrics \lyricsto "verse" \verse
    \new Voice = "two" { \cantor }
    \new Lyrics \lyricsto "lead" \lead
  >>
  \layout {
        #(layout-set-staff-size 25)
    }
  \midi { }
}

\markup \fill-line {
  \column {
  "Additional lead lines:"
  " "
  "Tomorrow – we're history – what's the story?"
  "Hold me cousin – hear me sibling – we need each other."
  "Every color – any gender – all together."
  }
}
