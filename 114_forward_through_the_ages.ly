\version "2.18.2"

\header {
  title = "#114 Forward Through the Ages"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    bes4 bes bes bes | bes4.( ees8) bes2 | f f ees f | g1 |
    ees4 g bes ees | ees2 d | c4 c g a | bes1 |
    f4 f bes f | g4.( aes8) g2 | bes4 bes ees bes | c1 |
    c4 bes aes bes | c( bes) aes( bes) | c bes aes g | f1 |
    ees4 ees ees ees | ees( d8 c) d4( ees) | f f f ees8( f) | g1 |
    bes4 bes ees d | ees2 bes | aes4 g f4. ees8 | ees1 \bar "|."
  }
}

verse = \lyricmode {
  For -- ward through the a -- ges, in un -- bro -- ken line,
  move the faith -- ful spir -- its, at the call di -- vine.
  Gifts in diff -- 'ring mea -- sure, hearts of one ac -- cord,
  ma -- ni -- fold the ser -- vice, one the sure re -- ward.
  For -- ward through the a -- ges, in un -- bro -- ken line,
  move the faith -- ful spir -- its, at the call di -- vine.
}

harmonies = \chordmode {
  % Intro
  c1
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
