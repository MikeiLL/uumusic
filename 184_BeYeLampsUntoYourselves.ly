\version "2.18.2"

\header {
  title = "Be Ye Lamps unto Yourselves"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \cadenzaOn
  \new Voice = "verse" {
    f8 g a bes a g a4. \bar "|" % Be ye lamps un -- to your -- selves;
    g8 c c( g) a( bes a) g a4. \bar "|" % be your own con -- fi -- dence;
    a8 a g a g f( e) f g4. \bar "|" % hold to the truth with -- in your -- selves
    a8( g) f e f( g) e d4. \bar "|."% as to the on -- ly lamp.
  }
  \cadenzaOff
}

verse = \lyricmode {
  Be ye lamps un -- to your -- selves;
  be your own con -- fi -- dence;
  hold to the truth with -- in your -- selves
  as to the on -- ly lamp.
}

harmonies = \chordmode {
  % Intro
  f2:sus/des f8:sus/des f4.:7/ees
  d2.:m d8:m f2:7/ees
  f2:/c f8:/c g2.:7/b
  bes2.:m g2:m/bes
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
