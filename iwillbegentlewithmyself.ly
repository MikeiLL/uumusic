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
      a4 g8 f4 r8 f f | f4 c d8 f4 f8~ | f1 | r2 d8 f g4 | % hold myself like a new born baby child I will be
    }
    \repeat volta 2 {
      a g8 f4 f f8~ | f4 r d8 f g4 | % gentle with myself I will be
      a g8 f4 f f8~ | f4 r r8 d f g | % gentle with myself and I will
      a4 g8 f4 r8 f f | f4 c d8 f4 f8~ | f1 | % hold myself like a new born baby child
    }
    \alternative {
      {
        r2 d8 f g4 | % i will be
      }
      {
        r4. f8 a4 c | % and I will
      }
    }
    \repeat volta 2 {
      c bes8 bes4 a a8~ | a( g f4) r8 d8 f4 | % Only go as fast as the
      c' bes8 bes4 a a8~ | a4 f f r8 a | g1 | % slowest part of me feels safe to go.
    }
    \alternative {
      {
        r2. a8 c | %  I will
      }
      {
        r1 | r | r2 d,8 f g4 | % I will be
      }
    }
    \repeat volta 2 {
      a g8 f4 f f8~ | f4 r d8 f g4 | % tender with myself I will be
      a g8 f4 f f8~ | f4 r f8 g4. | % tender with myself I will
      a4 g8 f4 r8 f f | f4 c d8 f4 f8~ | f1 | % love myself like a new born baby child
    }
    \alternative {
      {
        r2 d8 f g4 | % i will be
      }
      {
        r1 \bar "|." | %
      }
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
  I will be
  And I will on -- ly go as fast
  as the slow -- est part of me feels safe to go.
  I will
  I will be eas -- y on my -- self
  I will be eas -- y on my -- self
  and I love my -- self like a
  new -- born ba -- by child.
  I will be
}

harmonies = \chordmode {
  % Verse
  \partial 2 f2 |
  f1 | f | d:min | d:min |
  bes | f:min/aes | f1 | f |
  f1 | f | d:min | d:min |
  bes | f:min/aes | f1 | f |
  f |

  g:min | d:min | g:min | a:min | bes |
  bes | bes | c | c |

  f1 | f | d:min | d:min |
  bes | f:min/aes | f1 | f |
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
