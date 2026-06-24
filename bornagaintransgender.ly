\version "2.18.2"

\header {
  title = "Born Again Transgender"
  composer = "By Hollywood Jones (with Mike iLL)"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key c \major
  \time 12/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)

  \new Voice = "intro" {
  \repeat volta 2 {
      r4. b\staccato a\staccato b\staccato | a g4\staccato g8\staccato r4. b4.\staccato |
      a\staccato b\staccato a g4\staccato g8\staccato |
    }
    \alternative {
      {r1.}
      {r2. r4. r4}
    }
  }
  \new Voice = "verse" {
    d8 | d4 d8 g4. a g4 b8~ | b4. r4. r2. | % It's good to be born again
    e,4. g a g4 b8~ | b4. b a g4 f8~ | % My transgender life is forming me
    f4. r4 g8~ g4. f | e f e d4 d8~ | % over time I'm born again
    \repeat volta 2 {
      d4.  b'\staccato a\staccato b\staccato | a g4\staccato g8\staccato r4. b4.\staccato | % Life keeps on pouring in Die
      a\staccato b\staccato a g4\staccato g8\staccato | %  and reform again
    }
    \alternative {
      {r1. |  }
      {r2. r4. r4 d8}
    }

    d4 d8 g4. a g4 b8~ | b4. r4. r2. | % It's good to be born again
    e,4. g a g4 b8~ | b4. b a g4 f8~ | % My trancendent strife is forming me
    f4. r4 g8~ g4. f | e f e d4 d8~ | % over time I'm born again
    \repeat volta 2 {
      d4.  b'\staccato a\staccato b\staccato | a g4\staccato g8\staccato r4. b4.\staccato | % Life keeps on pouring in Die
      a\staccato b\staccato a g4\staccato g8\staccato | %  and reform again
    }
    \alternative {
      {r1. |  }
      {r2. r4. d'}
    }
    e4. r4. \tuplet 4/6 {r8 g g g} | d4. r4. r b |% thought I was a man. Wait
    c4. r \tuplet 4/6 {r8 d d d} | % what? What does it
    b4. r \tuplet 4/6 {r8 g b g}% mean to be a
    a4. r \tuplet 4/6 {r8 a a a}% man? To be a
    b4. r \tuplet 4/6 {r8 b b b}% man. To be a
    c4. r \tuplet 4/6 {r8 c c c}% man. To be a
    d4. r \tuplet 4/6 {r8 d d d}% man. To be a
    e4. r \tuplet 4/6 {r8 e e e}% man. To be a
    fis4. r \tuplet 4/6 {r8 fis fis fis}% man. To be a
    a1.~ | a2. r4. r4. \bar "|." % man. To be a man?
  }

}

verse = \lyricmode {
  It's good to be born a -- gain
  My trans -- gen -- der life is form -- ing me
  o -- ver time I'm born a -- gain
  Life keeps on pour -- ing in
  Die and re -- form a -- gain

  It's good to be born a -- gain
  My tran -- cen -- dent strife is form -- ing me
  o -- ver time I'm born a -- gain
  Life keeps on pour -- ing in
  Die and re -- form a -- gain

  I thought I was a man
  Wait what?
  What does it mean
  to be a man?
  To be a man.
  To be a man.
  To be a man.
  To be a man.
  To be a man.
  To be a man?
}

harmonies = \chordmode {
  % Intro
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. | g1. |
  g1. | g1. | g1. |
  a1.:9/cis | g1.:9/b | a1.:m7 | g1.:maj7 |
  d1. | g1.:/d | d1.:7 | d1. |
  g1.:/d | c1.:/d | d1. | c1.:/d |
}

bass = \relative c {
  \clef bass
  \key c \major
  \time 12/8
  \new Voice = "bass" {
    \repeat volta 2 {g4 g8 g'4 g8 g,4 g8 g'4 g8 | g,4 g8 g'4 g8 g,4 g8 g'4 g8 |}
  }
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
"Bass feel:"
" "
" "
" "
}
\new Voice = "bass" { \bass }
