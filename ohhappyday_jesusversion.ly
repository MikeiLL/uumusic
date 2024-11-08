\version "2.18.2"

\header {
  title = "Oh Happy Day (original version)"
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
    fis4 r8 b4 c8 b b~ | b4 r e,8 e e fis~ | % Oh freedom wore. Washed my sins away.
    fis4 a8 g b4 g8 g~ | g4 b b8 b4 c8~ | % Washed my sins away. Oh happy day
    c4 e, g8 g4 b8~ | b4 b b8 b4 c8 |}
    r4 c4 c c | b1~ | b2. b4 | c1~ | c2 c8 c4. | b8( g~) g2. | r2 g8 g4 b8~ |
    b8 r c4 c c | b1~ | b2. b4 | c1~ | c2. c4 | b8( g~) g2. | r2 g8 g4 b8~ |
  }
}

verse = \lyricmode {
  Oh hap -- py day. (Oh hap -- py day.)
  Oh hap -- py day. (Oh hap -- py day.)
  When Je -- sus washed (When Je -- sus washed)
  Oh Je -- sus washed (when Je -- sus washed)
  When Je -- sus washed (When Je -- sus washed)
  Washed my sins a -- way. (Oh hap -- py day.)
  Oh hap -- py day. (Oh hap -- py day.)
  He showed me how to watch fight and pray.
  (fight and pray.)
  And live re -- joi -- cing ev -- 'ry day.
  (ev -- 'ry day.)
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
