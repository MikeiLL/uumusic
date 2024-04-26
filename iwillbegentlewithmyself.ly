\version "2.18.2"

\header {
  title = "I Will Be Gentle With Myself"
  composer = "by Karen Drucker"
  tagline = "Transcribed for UUCP by M. Kilmer"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 2 d8 f g4 | % I will be
    \repeat volta 2 {
      a g8 f4 f f8~ | f4 r d8 f g4 | % gentle with myself I will be
      a g8 f4 f f8~ | f4 r r8 d f g | % gentle with myself and I will
      a4 g8 f4 r8 f f | f4 c d8 f4 f8~ | f1 | r2 d8 f g4 % hold myself like a new born baby child
    }
    \repeat volta 2 {
      a g8 f4 f f8~ | f4 r d8 f g4 | % gentle with myself I will be
      a g8 f4 f f8~ | f4 r r8 d f g | % gentle with myself and I will
      a4 g8 f4 r8 f f | f4 c d8 f4 f8~ | f1 | r2 d8 f g4 % hold myself like a new born baby child
    }
  }
}

verse = \lyricmode {
  I will be gen -- tle with my -- self
  I will be gen -- tle with my -- self
  and I will hold my -- self like a
  new -- born ba -- by child.
  I will be ten -- der with my heart.
  I will be ten -- der with my heart.
  and I will hold my heart like a
  new -- born ba -- by child.
}

harmonies = \chordmode {
  % Verse
  f1
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
