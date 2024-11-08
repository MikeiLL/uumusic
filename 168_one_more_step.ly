\version "2.18.2"

\header {
  title = "#168 One More Step"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key e \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    gis2. | fis | e | e4 fis gis |
    a2. | gis | fis | fis4 gis a |
    b2 e,4 | b'2 e,4 | b'2 a4 | b, e a | gis2. | fis | e~ | e \bar "|."
  }
}

verse = \lyricmode {
  One more step,
  we will take one more step,
  ‘til there is peace for us and
  eve -- ry -- one,
  we’ll take one more step.

  One more word,
  we will say one more word,
  ‘til every word is heard by
  eve -- ry -- one,
  we’ll say one more word.

  One more prayer,
  we will say one more prayer,
  ‘til every prayer is shared by
  eve -- ry -- one,
  we’ll say one more prayer.

  One more song,
  we will sing one more song,
  ‘til every song is sung by
  eve -- ry -- one,
  we’ll sing one more song.
}

harmonies = \chordmode {
  % Intro
  e2. | b | cis:min | cis:min |
  fis:min | a:maj7 | b | b |
  e:9/gis | e:7 | a | e:9/gis |
  e | b | e2 b4 | e2. |
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
