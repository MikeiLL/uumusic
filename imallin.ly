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
        { r4 r \context Voice = "verse" { a' g8 f } | } % Here I’m in --
      }
      <<
      \context Voice = "verse" {
        \voiceOne
        a2 r | r4. f8 a4 g8 f | % spired Involved and in %(Ooh)
        g d d4 r2 | r a'8 g g( f) % cluded, too %(Ooh) We invite
        a4 r2. | r8 d, d4 g8 g f e|% you % (Ooh) to make your investment
        d4 r2. | r2 a'8 g g f | % true % (Ooh) When I come to
        a4 a r2 | r4. f8 a4 g8 f | % church now % (Ooh) I know that I
        g g4 d4. r4 | r4 a'8 c4. a8( g) % do my part %(Ooh) I am in
        g4 f8( d4. ) r4 | r4. d8 a'8 a g f | % vested %(Ooh) Where everyone be
        d4 r2. | r1 \bar "|." % longs %(Ooh)
      }
      \new Voice = "chorus" {
        \voiceTwo
        r2 d4( e | f2) r2 |
      }
      >>
  }
}

verse = \lyricmode {
  I'm all IN.
  NO- -- bo -- dy wor -- ry 'bout me.
  I’m a gon -- na do my part.
  I sup -- port U -- U -- C -- P!

  Here I’m in -- spired %(Ooh)
  In -- volved and in -- clud -- ed, too %(Ooh)
  We in -- vite you % (Ooh)
  to make your in -- vest -- ment true % (Ooh)
  When I come to church now % (Ooh)
  I know that I do my part %(Ooh)
  I am in -- ves -- ted %(Ooh)
  Where eve -- ry -- one be -- longs %(Ooh)
}

chorus = \lyricmode {
  Ooh __
}

harmonies = \chordmode {
  % Intro
  d1:7 | d:7 | d:7 | d:7 |
  d1:7 | d:7 | d:7 | d:7 |
  d:7 |
  d:m | d:m | g | g |
  d:m | d:m | g | g |
  d:m | d:m | g | g |
  d:m | d:m | g | g |
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "verse" \verse
    \new Lyrics \lyricsto "chorus" \chorus
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
