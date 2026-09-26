\version "2.18.2"

\header {
  title = "All Will Be Well"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c'' {
  \clef treble
  \key a \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  r1 | r | r | r |
  r | r | r |
  r | r | r |
  \new Voice = verse {
    r2 a8 b4. | cis8 cis b4 r fis8 fis | % I said Julian, you are
    a4 fis r fis8 fis | a4 fis r fis | a2 b | % holy, you are holding my hand and
    cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, you are holy, you are
    a4 fis a fis~ | fis4. r8 a b4. |% holding my hand she said
    \repeat volta 2 {
      <<
     \context Voice = verse {
        \voiceTwo
        cis2 b8 a4. | b2. r4 | a2 a4 a8 a~ | a4 r a8( b4.) | % All will be well. All
        cis4 b r r8 a | b2. r4 | r2 a4 fis8 fis~ | fis2 r | % man -- ner of things will be well
        r1 | r |

        r2 a8 b4. |
      }
      \context Voice = harmony {
        \voiceOne
        e2 e8 e4. | e1 | d2 d4 cis8 cis~ | cis4 r cis8( d4.) |
        e4 e2 e4 | e2. r4 | r2 d4 cis8 cis~ | cis2 r |
      }
      >>
    }
    \alternative {
        {
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 b2 a4 | % not know about sor -- row, and
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis a fis~ | fis4 r8 fis a8 b4. | % not know bout pain 'n i said
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 b2 a4 | % not know a -- bout hun -- ger and
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis a fis~ | fis4 r a8 b4. | % not know bout shame she said
        }

        {
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 a8 b4. a4 | % not know about loneliness, and
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 a8 a b4 r8 fis~ | fis4 r8 fis a8 b4 r8 | % not know bout pain 'n i said
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 b2 a4 | % not know, do you not know a -- bout hun -- ger and
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis a fis~ | fis4 r a8 b4. | % not know, do you not know bout shame she said
        }
    }
  }
}

verse = \lyricmode {
  I said Ju -- li -- an, you are ho -- ly, you are hold -- ing my hand and
  Ju -- li -- an, you are ho -- ly, you are hold -- ing my hand

  She said All will be well. All will be well
  All man -- ner of things will be well
%
  I said Ju -- li -- an, do you not know, do you not know a -- bout sor -- row, and
  Ju -- li -- an, do you not know, do you not know 'bout pain 'n' I said
  Ju -- li -- an, do you not know, do you not know a -- bout hun -- ger and
  Ju -- li -- an, do you not know, do you not know 'bout shame she said

  I said Ju -- li -- an, do you not know, do you not know about lone -- li -- ness and
  Ju -- li -- an, do you not know, do you not know about dis -- ease and I said
  Ju -- li -- an, do you not know, do you not know about cruel -- ty I said
% (disease, cruelty)
  Ju -- li -- an, it's too much: It brought me to my knees
  She said
%
  She said, No one does not know, does not know about sorrow
% (pain, hunger, shame)
  She said All will be well...
%
  She said, No one does not know, does not know about loneliness
% (substitute: disease, cruelty)
  She said “I know, it's too much.  It brought me to my knees, where I heard:
% All will be well...
%
% I said Julian, you are holy, you are holding my hand (2x)
% And she said All will be well...
%
% She said, Dear one, do you not know, do you not know about tenderness? (3x)
% (friends, the Spirit)
% She said Dear one, do you not know, it's only love that never ends?
% And so all will be well...
}

harmonies = \chordmode {
  % Intro
  a1 | e | d | a |
  a | e | d |
  fis:m | fis:m | fis:m | fis:m |
  fis:m | b:m | b:m | f:m |
  fis:m | b:m | b:m | f:m |
  a | e | d | a |
  a | e | d |
  fis:m | fis:m | fis:m | fis:m |


  fis:m | b:m | b:m | f:m | % verse 2
  fis:m | b:m | b:m | f:m |
  fis:m | b:m | b:m | f:m |
  fis:m | b:m | b:m | f:m |

}
%  Em Am -  CD / Em Am - Em ://
% G  D  C G  / -  D C Em
% Em Am -  CD / Em Am - Em :// 4x
%  G  D  C G  / -  D C Em

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = one { \melody }
    \new Lyrics \lyricsto verse \verse
  >>
  \layout {
        #(layout-set-staff-size 25)
    }
  \midi { }
}

\markup \fill-line {
  \column {
   "Referencing the medieval English mystic Julian of Norwich and her famous book Revelations of Divine Love."
  }
}
