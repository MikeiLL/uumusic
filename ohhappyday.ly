\version "2.18.2"

\header {
  title = "Oh Happy Day (freedom version)"
  composer = "Music by Edwin R. Hawkins Words by Rivka & Mike iLL"
  tagline = "Transcribed by Mike iLL for UU Church of Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 2 {r4 e g8 g4 b8~ | b4 b b8 b4 c8~ | c4 e, g8 g4 d'8~ | d( b) b4 b8 b4 gis8~ |
    gis4 b c8 b4 b8~ | b8( a8)~ a4 e8 g e fis~ | % day when freedom wore when freedom wore.
    fis4 b c8 b4 b8~ | b8( a8)~ a4 e8 g e fis~ | % day when freedom wore when freedom wore.
    fis4 r8 b4 c8 b b~ | b4 r e,8 e e fis~ | % Oh freedom wore. Wore my chains away.
    fis4 a8 g b4 g8 g~ | g4 b b8 b4 c8~ | % Wore my chains away. Oh happy day
    c4 e, g8 g4 b8~ | b4 b b8 b4 c8 |}
    r4 c4 c c | b1~ | b2. b4 | c1~ | c4. c8 c4 c | b8( g~) g2. | r4 r8 g g g4 b8~ |
    b8 r c4 c c | b1~ | b2. b4 | c1~ | c4. c8 c4 c | b8( g~) g2. | r4 r8 g g g4 b8~ |
  }
}

verse = \lyricmode {
  Oh hap -- py day. (Oh hap -- py day.)
  Oh hap -- py day. (Oh hap -- py day.)
  When free -- dom wore (When free -- dom wore)
  Oh free -- dom wore (when free -- dom wore)
  When free -- dom wore (When free -- dom wore)
  Wore my chains a -- way. (Oh hap -- py day.)
  Oh hap -- py day. (Oh hap -- py day.)
  Be -- hold me now. I've lost a hea -- vy weight.
  (A hea -- vy weight.)
  His rus -- ty irons in piles be -- neath my feet.
  (Be -- neath my feet.)
}

harmonies = \chordmode {
  % Intro
  g1 |
  % Verse
  g | c/g | g1 | e |
  a:m | d | a:m | d |
  a:m | d | g | c/g |
  g |
  d | % lead in to bridge
  % Bridge
  g | g | c/g | c/g |
  g | g | g |
  g | g | c/g | c/g |
  g | g |
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
