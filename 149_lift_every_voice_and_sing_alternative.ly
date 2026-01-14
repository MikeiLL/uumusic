\version "2.18.2"

\header {
  title = "#149 Lift Every Voice and Sing"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 4. fis8 g a | % Lift ev -- ery
    b2.~ | b4. b4. | b2.~ | b4. b8 c d | b2.~ | b4. a4. | g2.~ | g4. g8 a b | % voice and sing till earth and heaven ring ring with the
    c4. b | g a | g~ g4 g8 | fis4. fis8 g a | % har -- mon -- ies of lib -- er -- ty; let our re
    b2.~ | b4. b4.| e2.~ | e4. e8 d b | c4. b4( a8) | g4. g8 a ais | % joic -- ing rise high as the list -- ening skies; let it re
    b4. b8 a g | a4.~ a4 g8 | g2. | % sound loud as the roll -- ing sea.
    g4. d | e4. e8 d b | e8 d b e8 d b | d4. d | g d |% Sing a song full of the faith that the dark past has taught us, sing a
    ees4. ees8 d c | ees8 d c ees8 d c | b2. | c4.\fermata fis8 g a | % song full of the hope that the pres -- ent has brought us; fac -- ing the
    b4. b | e e8 d b | c4. b4( a8) | g4. g8 a ais | % ris -- ing sun of our new day be -- gun, let us march
    b4. b8 a g | a4.~ a4 g8 | g4. \bar "|."% on till vic -- to -- ry is won.
  }
}

verse = \lyricmode {
  Lift ev -- ery voice and sing
  till earth and hea -- ven ring,
  ring with the har -- mon -- ies of lib -- er -- ty;
  let our re -- joic -- ing rise
  high as the list -- ening skies,
  let it re -- sound loud as the roll -- ing sea.
  Sing a song full of the faith that the dark past has taught us,
  sing a song full of the hope that the pres -- ent has brought us;
  fac -- ing the ris -- ing sun of our new day be -- gun,
  let us march on till vic -- to -- ry is won.
}

harmonies = \chordmode {
  % Intro
  b4.:/c |
  g4.:9 b:/c | g4.:9 b:/c | g4.:9 b:/c | g4.:9 b:/c |
  g4.:9 b:/c | g4.:9 b:/c | e:m6 a:/e | e:m6 a:/e |
  c2.:m/ees | c2.:m/ees | d:sus7 | d:7 | % harmonies of liberty... re -
  g4.:9 b:/c | g4.:9 b:/c | b2.:m7.5-/f | b:m7.5-/f | % joicing rise... rolling sea
  % sing a song full of the faith that the dark past has taught us, sing a
  % song full of the hope that the present has brought us; facing the
  % rising sun of our new day begun, let us march on till victory is won.
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
