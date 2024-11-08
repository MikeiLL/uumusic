\version "2.18.2"

\header {
  title = "We Shall Go Forth!"
  composer = "Words and Music by Margie Adam"
  tagline = "Arranged by Mike Kilmer for UUCP"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
    r4. a8 bes c~ c4 | d8( f~) f4 f8 g~ g4 | a1 | % We shall go forth from this place
    a16 bes~ bes a f8 d f2 | % proud of the things we've done,
    aes16 g~ g f f8 g f2 | % sharing the things we've won.
    r4 f ees d | c1 | % We shall not fail.
    }
    \key aes \major
    r4 des16 ees f ees~ ees8 c~ c4 | e e8 f~ f4. f8 | % Bring together all we know for
    g8 bes g ees c16( aes') ees8~ ees c | bes1 | % those who are struggling alone.
    r4 des16 ees f ees~ ees8 aes~ aes4 | aes4 bes c r | % Bring together all we are
    aes16 aes aes8~ aes4 bes8~ bes16 f f8~ f16 f | % offering for those who want to
    f8( g) g4~ g8 ees aes~ aes16 ees | % find us a way to
    ees8( f) f4 r8 g16 f~ f8 ees | f1 | r | % find us a way to see

    \key f \major
    r4. a,8 bes8 c~ c4 | d8( f~) f4 f8 g~ g4 | a1 | % We shall go forth from this place
    a16 bes~ bes a f8 d f4. f8 | % proud of the things we've done,
    aes16 g~ g f f8 g f2 | % sharing the things we've won.
    r4 f ees d | c1 | % We shall not fail.
    \repeat volta 2 {r4 f ees d | c1 } % We shall go forth.
    }
}

verse = \lyricmode {
<<
  \new Lyrics {
    \set associatedVoice = "words"
    We shall go forth from this place
    proud of the things we've done,
    shar -- ing the things we've won.
    We shall not fail.
  }

  \new Lyrics {
    \set associatedVoice = "words"
    We shall go forth from this place
    will -- ing to o -- pen wide,
    shar -- ing the light in -- side.
    We shall not fail.
  }
>>
    Bring -- ing to -- geth -- er all we know for
    o -- thers who are strugg -- ing a -- lone.
    Bring -- ing to -- geth -- er all we are
    of -- fer -- ing those who want to
    find us a way to
    find us a way to
    see.

  \new Lyrics {
    We shall go forth from this place
    tak -- ing with us the pride of
    know -- ing we can de -- cide
    We shall not fail.
    We shall go forth.
    We shall go forth.
    We shall go forth.
  }
}

harmonies = \chordmode {
  f2  g4:m f:/a | bes2 bes:/c | d:m d:m7/c | bes f:/a |
  aes bes | f ees | c:sus c:7 |

  des aes | c:7 f:m | ees aes | ees:sus ees |
  des aes | des4 ees f2:m | bes:/d bes | ees aes:/c | des c:m | f:sus f | g4:m a:m bes c |

  f2  g4:m f:/a | bes2 bes:/c | d:m d:m7/c | bes f:/a |
  aes bes | f ees | c:sus c:7 |

  f2 ees4 bes | f2 ees4 bes |
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
        #(layout-set-staff-size 23)
    }
  \midi { }
}

\markup \fill-line {
  \column {
  ""
  }
}
