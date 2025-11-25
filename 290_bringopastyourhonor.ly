\version "2.18.2"

\header {
  title = "Bring, O Past, Your Honor"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    d4 d fis fis | a2 a | b4 b b b | a2 fis | % Bring, O Past, your honor; bring, O Time, your harvest,
    a4. a8 a4 a | d4 d cis a | e a b b | a1 | % golden sheaves of hallowed lives and minds by Truth made free;
    d,4 d fis fis | a2 a | b4. b8 b4 b | a2 fis |  % come, you faithful spirits, builders of this temple:
    d'2 a4 a | b2 fis | g4 e e4. d8 | d1  \bar "|." % “To Holiness, to Love, and Liberty.”
  }
}

verse = \lyricmode {
  Bring, O Past, your ho -- nor; bring, O Time, your har -- vest,
  gold -- en sheaves of hal -- lowed lives and minds by Truth made free;
  come, you faith -- ful spi -- rits, build -- ers of this tem -- ple:
  “To Ho -- li -- ness, to Love, and Li -- ber -- ty.”
}

harmonies = \chordmode {
  % Intro
  b1:m | d:/a | g | d:/a |
  d2 fis:/cis | b1:m | c:maj7 | a:/cis |
  b1:m | d:/a | g:maj7 | d:/a |
  b:m | b:7 | e:m | e:m7.5-/bes
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
