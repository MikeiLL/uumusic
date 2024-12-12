\version "2.18.2"

\header {
  title = "Blue X-Mas by Miles Davis and Gil Evans"
  composer = "Transcribed by Mike iLL Kilmer"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "intro" {
      r4 fis d2\fermata | r4 dis b4.\fermata b8 | % Merry Christmas. I
      c cis dis e fis g a bes | c4 r8 cis4 r8 a4~ | a1 | r | % hope you have... it's blue.
    }
      \repeat volta 2 {
        \new Voice = "refrain" {
        d,2.~ d8 ees~ | ees b~ b4 r2 | % Blue Christmas.
        c8 cis dis e fis g a bes | c4 des8 bes4. r4 | % That's the way you see it when you're feeling blue.
      %
        d,2.~ d8 ees~ | ees b~ b4 r2 | % Blue Xmas.,
        c8 cis dis e fis g a bes | c4 des8 bes4. b4 |% When you're blue at ...You see right through all
        c8 aes4. a4 bes8 ges~ | ges4 g4 aes8 e4. | % the waste All the sham All the haste
        r2. r8 ees | f ees4. des4 bes | % And plain ole bad taste.
      }
    }
    %
    \alternative {
      {
      \new Voice = "verse" {
          r2 bes4 bes8 bes~ | bes4 bes bes8 bes4 bes8~ | bes4 ees ees8 des4. | des4. bes4. bes4 | % Had a nightmare; stuck in Wallmart and I could'nt leave.
          r2 bes4 bes8 bes~ | bes4 bes8 bes4 bes8 bes bes | \tuplet 3/2 {bes4. bes4 bes4. bes4 ees4~} | ees4 des bes r | % Isles and isles of blow up Santas, raindeer, snowmen, Chrismas trees.
          \tuplet 3/2 {ees4 ees des ees ees des} | \tuplet 3/2 {ees ees des ees2 des4} | ees4 des8 ees ees4 des | f2 r | % Endless or seemingly endless supplies of slave produced impulse buys.
          bes,4 bes8 bes4 bes bes8~ | bes4 bes8 bes4 bes f'8~ | f4 ees des ees8 bes~ | bes4 r c des | % Gifted and re-gifted until some poor hoarder dies. It's a

          \tuplet 3/2 {ees2 des4 aes'2 ges4~} | ges b2 r8 b,16 c | % time when the greedy Give a
          \tuplet 3/2 {des2 c4 ges'2 f4~} | f b2 r4 | % dime to the needy.
        }
      }
      {
      \context Voice = "verse" {
          \tuplet 3/2 { bes,8 bes bes~ bes bes4 } bes16 bes bes bes bes8 bes  |% Diabetes fertilizers flow like
          bes8 bes bes bes bes bes bes4 | % fossils out of third world mines
          bes8 bes bes bes bes bes bes bes | \tuplet 3/2 {bes4 bes bes} bes4 bes | ees4 des b r | % powering compulsive acquisition despite our bothered minds
          % Black Friday, Cyber Monday, Giving Tuesday, Work-it-off Wednesday, Debt Consolidation
          % Thursday in the worst way praying
          % Jesus get me through your God-forsaken birthday
        }
      }
    }
}

intro = \lyricmode {
  Mer -- ry Christ -- mas.
  I hope you have a white one
  but for me it's blue.
}

refrain_one = \lyricmode {
  Blue Christ -- mas.
  That's the way you see it when you're feel -- ing blue.

  Blue X -- mas.
  When you're blue at Christ -- mas -- time,
  you see right through all the waste all the sham all the haste...
  and plain ole bad taste.

}

refrain_two = \lyricmode {
  Blue Christ -- mas.
  All the pa -- per, tin -- sel, and the fal -- de -- ral.
  Blue Christ -- mas.
  Peo -- ple giv -- ing gifts that mat -- ter not at all.
  Bit -- ter gall—
  What I call fal -- de -- ral.

}

verse = \lyricmode {

  Had a night -- mare; stuck in Wall -- mart and I could not leave.
  Miles of isles of blow up San -- tas, rain -- deer, snow -- men, Christ -- mas trees.
  End -- less or seem -- ing -- ly end -- less sup -- plies of slave pro -- duced im -- pulse buys.
  Gif -- ted and re- -- gif -- ted un -- til some poor hoar -- der dies.

  It's a time when the gree -- dy
  give a dime to the nee -- dy.

  Di -- a -- be -- tes fer -- ti -- li -- zers flow like fos -- sils out of third world mines
  pow -- er -- ing com -- pul -- sive ac -- qui -- si -- tion des -- pite our bot -- hered minds
  Black Fri -- day, Cy -- ber Mon -- day, Giv -- ing Tues -- day, Work- -- it- -- off Wednes -- day, Debt Con -- so -- li -- da -- tion
  Thurs -- day in the worst way pray -- ing
  Je -- sus get me through your God- -- for -- sa -- ken birth -- day

  % Now it makes it's way to thrift stores and estate sales, ultimately
  % landing in a landfill so excuse Mister Grinch here
  % if it makes me feel a little ill.


  % INSTRUMENTAL SOLO

}

harmonies = \chordmode {
  % Intro
  bes1:5+/c | ees:5+ |
  d2 dis | fis:maj7.5- g:maj7.5-/a | d1 | d |
  c:min7 | c:min7 | c:min7 | f4.:7 bes:7 bes4:7 |
  c1:min7 | c:min7 | c:min7 | f4.:7 bes:7 ees4:7 |
  ees8:7 aes4.:7 des4. ges8:7 | ges4 b4.:7 e4.:7 |
  e1:7 | e:7 |
  % Verse
  bes:min | bes:min | bes:min | bes:min | % words start
  bes:min | bes:min | bes:min | bes:min |
  des:min | des:min | des:min | des:min |
  bes:min | bes:min | bes:min | bes:min |
  f2.:min7.9- bes4:9+ | bes1:9+ | g1:maj7 | fis:maj7 | % needy greedy
  % blue xmas repeats then next verse
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "intro" \intro
    \new Lyrics \lyricsto "verse" \verse
    \new Lyrics \lyricsto "refrain" \refrain_one
    \new Lyrics \lyricsto "refrain" \refrain_two
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
