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
          r2 bes,8 bes bes bes | bes8 bes bes bes bes4 bes | % Diabetes fertilizers flow like
          bes8 bes4. bes8 bes4. | bes4 bes bes r | % fossils out of third world mines
          bes8 bes4 bes4 bes4 bes8~ | bes bes4 bes bes bes8~ | \tuplet 3/2 {bes4 bes bes} bes4 bes | ees des bes2 |% powering compulsive acquisition despite our bothered minds Black

          r8 ees4 ees des ees16 des | \tuplet 5/4 { ees4 des ees des f~ } | % Black Friday, Cyber Monday, Giving Tue
          f4 ees des8 des ees8. ees16~ | ees8 des ees des ees des ees des16 f~ | % Tuesday, Work-it-off Wednesday, Debt consolidation Thurs
          f4 bes, bes bes | bes bes bes bes |  bes bes bes bes | bes2 bes | % day is the worst pray Jesus get me through your gd 4 saken birthday

          r4 fis' d2 | r4 dis b4. b8 | % Merry Christmas. I
          c cis dis e fis g a bes | c4 r8 cis4 r8 a4~ | a1\fermata \bar "|." % hope you have... it's blue.
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
  Black Fri -- day, Cy -- ber Mon -- day,
  Giv -- ing Tues -- day, Work- -- it- -- off Wednes -- day,
  Debt -- ors Thurs -- day is the worst pray Je -- sus
  get me through your God- -- for -- sa -- ken birth -- day

  Mer -- ry Christ -- mas.
  I hope you have a white one
  but for me it's blue.


  % INSTRUMENTAL SOLO

}

harmonies = \chordmode {
  % Intro
  bes1:5+/c | ees:5+ |
  d2:7 dis:7 | fis4.:maj7.5- g4.:maj7.5-/a d4:12.5+ | d1:12.5+ | d:12.5+ |
  c:min7 | c:min7 | c:min7 | f4.:5+7 bes:5+7 bes4:5+7 |
  c1:min7 | c:min7 | c:min7 | f4.:5+7 bes:5+7 ees4:5+7 |
  ees8:5+7 aes4.:5+7 des4.:5+ ges8:5+7 | ges4:5+7 b4.:5+7 e4.:5+7 |
  e1:5+7 | e:5+7 |
  % Verse
  bes:min | bes:min | bes:min | bes:min | % words start
  bes:min | bes:min | bes:min | bes:min |
  ees:min | ees:min | ees:min | ees:min |
  bes:min | bes:min | bes:min | c:7 |
  f2.:5+7.9- bes4:5+7.9+ | bes1:5+7.9+ | g1:maj7.5- | fis:maj7.5- | % needy greedy
  % blue xmas repeats then next verse
  bes:min | bes:min | bes:min | bes:min | % words start
  bes:min | bes:min | bes:min | bes:min |
  ees:min | ees:min | ees:min | ees:min |
  bes:min | bes:min | bes:min | bes:min |
  bes1:5+/c | ees:5+ |
  d2 dis |  fis4.:maj7.5- g4.:maj7.5-/a d4:12.5+ | d1:12.5+
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
