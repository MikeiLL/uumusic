\version "2.18.2"

\header {
  title = "All Will Be Well"
  composer = "Meg Barnhouse Arranged by Mike iLL Kilmer for UU Pensacola"
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
    \repeat volta 5 {
      <<
     \context Voice = verse {
        \voiceTwo
        cis2 b8 a4. | b2. r4 | a2 a4 a8 a~ | a4 r a8( b4.) | % All will be well. All
        cis4 b r r8 a | b2. r4 | r2 a4 fis8 fis~ | fis2 r | % man -- ner of things will be well
        r1 | r |
      }
      \context Voice = harmony {
        \voiceOne
        e'2 e8 e4. | e1 | d2 d4 cis8 cis~ | cis4 r cis8( d4.) |
        e4 e2 e4 | e2. r4 | r2 d4 cis8 cis~ | cis2 r |
      }
      >>
    }
    \alternative {
        {

        r2 a8 b4. |
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

        r2 a8 b4. |
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 a8 b4. a4 | % not know about loneliness, and
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 a8 a b4 fis8 fis~ | fis4 r8 fis a8 b4 r8 | % not know about disease 'n i said
          cis8 cis b4 r fis8 fis | a4 fis r fis8 fis | % Julian, do you not know, do you
          a4 fis r8 fis8 fis4 | a4 b2 a8 a | % not know a -- bout cruelty I said
          cis8 cis b4 r r8 fis | a fis4 r8 r4. fis8 | % Julian, it's too much: it
          a4 a b fis | fis4. r8 a8 b4. | % brought me to my knees she said
        }
        {

        r2 a8 b4. |
          cis4 b r fis | a4 fis r fis | % no one does not know, does
          a4 fis r8 fis fis4 | a4 b2 a4 | % not know about sorrow, and
          cis4 b r fis | a4 fis r fis | % no one does not know, does
          a4 fis a fis~ | fis2 r8 a b4 | % not know 'bout pain she said
          cis4 b r fis | a4 fis r fis | % no one does not know, does
          a4 fis r8 fis fis4 | a4 b2 4 | % not know a -- bout hunger
          cis4 b r fis | a4 fis r fis | % no one does not know, does
          a4 fis a fis~ | fis4. r8 a8 b4. | % not know 'bout shame she said
        }

        {

        r2 a8 b4. |
          cis4 b r fis | a4 fis r4. fis8 | % no one does not know, does
          a4 fis r fis | a4 a8 b4. a4 | % not know about lonliness, and
          cis4 b r fis | a4 fis r4. fis8 | % no one does not know, does
          a4 a8 a b4 fis8 fis~ | fis4 r a8 b4 r8 | % not know about disease she said
          cis4 b r fis | a4 fis r4. fis8 | % no one does not know, does
          a4 fis r8 fis fis4 | a4. b4 a8 b4 | % not know a -- bout cruelty she said
          cis4 b r4. fis8 | a8 fis4 r8 r4. fis8 | % I know it's too much: it
          a4 a b8 fis4. | fis4. fis8 a8 b( cis4) | % brought me to my knees where I heard
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

  I said Ju -- li -- an, do you not know, do you not know a -- bout lone -- li -- ness and
  Ju -- li -- an, do you not know, do you not know a -- bout dis -- ease and I said
  Ju -- li -- an, do you not know, do you not know a -- bout cruel -- ty I said
  Ju -- li -- an, it's too much: It brought me to my knees. She said

%
  She said no one does not know, does not know a -- bout sor -- row and
  no one does not know, does not know 'bout pain. She said
  no one does not know, does not know a -- bout hun -- ger
  no one does not know, does not know 'bout shame. She said
%
  She said no one does not know, does not know about lone -- li -- ness and
  no one does not know, does not know a -- bout dis -- ease. She said
  no one does not know, does not know a -- bout cruel -- ty she said
  I know, it's too much: It brought me to my knees where I heard:
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
  fis:m | fis:m | fis:m |


  fis:m |
  fis:m | b:m | b:m | fis:m | % verse 2
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m |
  fis:m | b:m | b:m | fis:m | % verse 3
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m |
  fis:m | b:m | b:m | fis:m | % verse 4
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m |
  fis:m | b:m | b:m | fis:m | % verse 5
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |
  fis:m | b:m | b:m | fis:m |

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
        #(layout-set-staff-size 21)
    }
  \midi { }
}

\markup \fill-line {
  \column {
    " "
    "I said Julian, you are holy, you are holding my hand and"
    "I said Julian, you are holy, you are holding my hand She said"
    " "
    "She said, dear one (baby girl, sweet pea), "
    "do you not know, do you not know about tenderness, and"
    "(dear one) do you not know, do you not know about friends,"
    "(dear one) do you not know, do you not know about the spirit?"
    "She said Dear one, do you not know, "
    "it's only love that never ends? She said..."
    " "
    " "
   "Song references the medieval English mystic Julian of Norwich "
   "and her famous book Revelations of Divine Love."
    " "
  }
}
