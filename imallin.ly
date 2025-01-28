\version "2.18.2"

\header {
  title = "I'm All In"
  composer = "(a version of I'm  Allright - with apologies to Kenny Loggins)"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {
      c2 d4. f8~| f4( fis) r4. c8~|
      c d4 c8 d c d4 | d r2. |
      c8 d d c d d4 fis8~ | fis4 r2 r8 c8~ |
      c8 d d c d d4 d8~ |
    }
    \alternative {
      { d4 r2. | }
      { r4 r a' g8 f | }
    }
  }
}

verse = \lyricmode {
  I'm all IN.
  NO- -- bo -- dy wor -- ry 'bout me.
  I’m a gon -- na do my part.
  I sup -- port U -- U -- C -- P!

  Here I’m in -- spired (Ooh)Involved and included, too (Ooh)We invite you (Ooh)to make your investment true (Ooh)
  When I come to church now (Ooh)I know that I do my part (Ooh)I am invested (Ooh)Where everyone belongs (Ooh)

  I'm all IN. NO-body worry 'bout me. I’m a gonna do my part. I support UUCP!
  I'm all IN. Don’t nobody worry 'bout me. I’m a gonna do my part. I support UUCP!

  I'm all IN. NO-body worry 'bout me. I’m a gonna do my part. I support UUCP!
  I'm all IN. Don’t nobody worry 'bout me. I’m a gonna do my part. I support UUCP!
}

harmonies = \chordmode {
  % Intro
  d1:7 |
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
