\version "2.18.2"

\header {
  title = "Jesu Joy of Man's Desiring"
  composer = "Immitating Jean Baptist's gospel arrangement"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
    r4 g a |
  \repeat volta 2 {
    b d c | c e d | d g fis | g d b | g a b |
    c d e | d c b | a b g | fis g a | d, fis a | c b a |
    b g a | b d c | c e d | d g fis | g d b | g a b |
    e, d' c | b a g | d g fis | g2. | r2. | r |
    r | r | r | r4 g a
  }
}

harmonies = \chordmode {
  % Intro
  g2. |
  g | c | b:m | d:7 | e:m | e4:m fis/g g |
  a2.:m7 | b:m7 | a:/cis | d | d:7 | d4 d/e d/fis |
  g2. | c | b:m | d:7 | e:m | e:m |
  c:maj7 | a:/cis | d:7 | c:m | g | g | c:/d | c:/d | d4 d/e d/fis |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
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
