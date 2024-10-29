\version "2.18.2"

\header {
  title = "Hallelujah"
  composer = "by Leonard Cohen (Arranged by Mike iLL Kilmer for UU Pensacola)"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \partial 8 e8 |
    g4 g8 g4 g8 | a a a4 r8 e | g4 g8 g4 g16 g | a4 a8 a4 a8 |
    a8 a4 a8 a4 | a4 g8 g4 e8 | a8( g) g4 r | r2 r8 e |
    g4 g8 g4 g8 | a4 a8 b4 b8 | c4 c8 c4 c8 | c c d4 r8 d8 |
    d8 d4 d d8 | e4 e8 e4 d8 | d( c4) c r8 | r2 e,8 g |
    a4. a4 r8 | r2 a8 g | e4. e4 r8 | r2 e8 g |
    a4. a4 r8 | r2 a8 g | e2( f8 e | d2~ d8 c) |
    c2 r4 | r2. | r2. | r2. |
  }
}

verse = \lyricmode {
  I've heard there was a sec -- ret chord
  that Da -- vid played, and it pleased the Lord,
  but you don't real -- ly care for mu -- sic, do you?
  It goes like this, the fourth, the fifth
  The mi -- nor falls, the ma -- jor lifts
  The baf -- fled king com -- pos -- ing Hal -- le -- lu -- jah

  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah

}

harmonies = \chordmode {
  % Intro
  \partial 8 r8 |
  c2. | a:min | c2. | a:min |
  f | f | c | g |
  c | f4. g | a2.:min | f |
  g | e:/gis | a:min | a:min |

  f | f | c | c |
  f | f | c | g |
  c2. | a:min | c2. | a:min |
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
" "
" "
  "Your faith was strong but you needed proof"
  "You saw her bathing on the roof"
  "Her beauty and the moonlight overthrew you"
  "She tied you to a kitchen chair"
  "She broke your throne, and she cut your hair"
  "And from your lips she drew the Hallelujah"
" "
  "You say I took the name in vain"
  "I don't even know the name"
  "But if I did, well, really, what's it to you?"
  "There's a blaze of light in every word"
  "It doesn't matter which you heard"
  "The holy or the broken Hallelujah"
" "
  "I did my best, it wasn't much"
  "I couldn't feel, so I tried to touch"
  "I've told the truth, I didn't come to fool you"
  "And even though it all went wrong"
  "I'll stand before the Lord of Song"
  "With nothing on my tongue but Hallelujah"
  }
}
