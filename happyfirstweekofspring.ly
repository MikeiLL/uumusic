\version "2.18.2"

\header {
  title = "Happy First Week of Spring"
  composer = "By Hollywood Jones and Mike iLL"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  <<
  \new Voice = "intro" {
  ees4 g f a | g b a c | b d c ees | g1 |
  g4 ees f d | ees c d b | c a bes g | ees1
  }
  \new Voice = "verse" {
    r1 | r | r | r | r | r | r | r4 ees8 ees f4 f8 f | g1~ | g4 r % Happy first week of Spring
    ees8 f4. | g1~ | g4 % Winter's gone.
    ees f8 f f ees | g4 b8 g~ g2 | r4 % At 'leven fifty-nine PM
    g f ees8 c~ | c1~ | c4 r % it's gone away.

    ees f | g8 g g4 g f8 g~ | g4 % Let the butterflies fly around
    b b bes8 bes~ | bes c g2.~ | g4 r % it's like an Easter Rose
    ees8 ees f4 | g1~ | g4 r % Every day
    f4 ees | c1~ | c4 r % I wake up

    ees f | g b8 g4.~ g4~ | g4 r % I like to believe
    ees f | g4. g~ g4~ | g % I am OK.
    ees ees8 ees f f | g4( f8) g4.~ g4~ | g % Spring is a fav' -- rite sea -- son.
    g f ees | c1~ | c4 % It will not change.

    ees8 ees f4 f | g8 g g2.~ | g4 % Ever since March twentieth
    ees8 ees ees4 f | g1~ | g4 r% Look away beyond.
    ees f | ees4. c4.~ c4~ | c r8 % Your true Spring Heart.
    ees ees ees ees4 | c1~ c4 \bar "|." % We love you the end.
  }
  >>
}

verse = \lyricmode {
  Hap -- py first week of spring.
  Win -- ter's gone.
  At 'le -- ven fif -- ty- -- nine P -- M
  it's gone a -- way.

  Let the but -- ter -- flies fly a -- round.
  It's like the Eas -- ter Rose.
  E -- ve -- ry day
  I wake up.

  I like to be -- lieve
  I am O K.
  Spring is a fav' -- rite sea -- son.
  It will not change.

  E -- ver since March twen -- ti -- eth
  Look- -- a way be -- yond.
  Your true Spring Heart.
  We love you. The end.
}

harmonies = \chordmode {
  % Intro
  a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g | a2:m7.5-/g b:dim/g |
}

clarinet_lines = \transpose c bes {\relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \new Voice = "clarinet_verse" {
    \repeat volta 2 { g4 r g r }
    \repeat volta 2 { g4 r a r }
  }
  \new Voice = "clarinet_verse" {
    \repeat volta 2 { g,4 r8 c r4 d }
    \repeat volta 2 { g,4 r8 c r d d d }
    \repeat volta 2 { g,4 r8 c \tuplet 3/2 {r8 d d} }
  }
}}


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
"Clarinet lines:"
" "
" "
" "
}

\new Voice = "clarinet_lines" { \clarinet_lines }
