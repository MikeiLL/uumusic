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
  \new Voice = "verse" {
    r4 fis d2\fermata | r4 dis b4.\fermata b8 | % Merry Christmas. I
    c cis dis e fis g a bes | c4 r8 cis4 r8 a4~ | a1 | r | % hope you have... it's blue.
    %
    d,2.~ d8 ees~ | ees b~ b4 r2 | % Blue Christmas.
    c8 cis dis e fis g a bes | c4 des8 bes4. r4 | % That's the way you see it when you're feeling blue.
    %
    d,2.~ d8 ees~ | ees b~ b4 r2 | % Blue Xmas.,
    c8 cis dis e fis g a bes | c4 des8 bes4. b4 |% When you're blue at ...You see right through all
    c8 aes4. a4 bes8 ges~ | ges4 g4 aes8 e4. | % the waste All the sham All the haste
    r2. r8 ees | f ees4. des4 bes | r1 | r | % And plain ole bad taste.
    %
    \tuplet 3/2 { r4 bes bes } \tuplet 5/2 { bes bes bes bes bes } | % Sidewalk Santa Clauses are
    \tuplet 3/2 { des bes des } ees8 bes4. | % Much, much, much too thin.
    % They're wearing fancy rented costumes,
    % False beards
    % And big fat phony grins.
    %
    % And nearly everyone's standing ‘round
    % Holding out their empty hand
    % Or tin cup.
    % Gimme, gimme
    % Gimme, gimme, gimme!
    % Fill my stocking up,
    % All the way up.
    %
    % It's a time when the greedy
    % Give a dime to the needy.
    %
    % Blue Christmas.
    % All the paper, tinsel, and the  falderal (fall-de-rawl).
    % Blue Christmas.
    % People giving gifts that matter not at all.
    % Bitter gall—
    % What I call falderal.
    %
    % INSTRUMENTAL SOLO
    %
    % Lots of hungry, homeless children
    % In your own back yards
    % While you're VEDDY, VEDDY busy
    % Addressing 20 zillion Christmas cards.
    %
    % Yuletide is the season to be seen
    % And, oh, to give, and ah, to share,
    % But all you December do-gooders rush around
    % And rant and rave and loudly blare
    % Merry Christmas!
    % I hope you have a white one,
    % But for me it' blue!
  }
}

verse = \lyricmode {
  Mer -- ry Christ -- mas.
  I hope you have a white one
  but for me it's blue.

  Blue Christ -- mas.
  That's the way you see it when you're feel -- ing blue.

  Blue X -- mas.
  When you're blue at Christ -- mas -- time,
  you see right through all the waste all the sham all the haste...
  and plain ole bad taste.

  Side -- walk San -- ta Claus -- es are
  Much, much, much too thin.
  They're wear -- ing fan -- cy rent -- ed cos -- tumes,
  False beards
  And big fat pho -- ny grins.

  And near -- ly eve -- ry -- one's stand -- ing ‘round
  Hold -- ing out their emp -- ty hand
  Or tin cup.
  Gim -- me, gim -- me
  Gim -- me, gim -- me, gim -- me!
  Fill my stock -- ing up,
  All the way up.

  It's a time when the greed -- y
  Give a dime to the need -- y.

  Blue Christ -- mas.
  All the paper, tinsel, and the fal -- de -- ral.
  Blue Christ -- mas.
  Peo -- ple giv -- ing gifts that mat -- ter not at all.
  Bitter gall—
  What I call fal -- de -- ral.

  % INSTRUMENTAL SOLO

  Lots of hun -- gry, home -- less child -- ren
  In your own back yards
  While you're VED -- DY, VED -- DY bu -- sy
  Ad -- dress -- ing twen -- ty zil -- lion Christ -- mas cards.

  Yule -- tide is the sea -- son to be seen
  And, oh, to give, and ah, to share,
  But all you De -- cem -- ber do- -- good -- ers rush a -- round
  And rant and rave and loud -- ly blare
  Mer -- ry Christ -- mas!
  I hope you have a white one,
  But for me it' blue!
}

harmonies = \chordmode {
  % Intro
  bes1:5+/c | ees:5+ |
  d2 dis | fis:maj7.5- g:maj7.5-/a | d1 | d |
  c:min7 | c:min7 | c:min7 | f4.:7 bes:7 bes4:7 |
  c1:min7 | c:min7 | c:min7 | f4.:7 bes:7 ees4:7 |
  ees8:7 aes4.:7 des4. ges8:7 | ges4 b4.:7 e4.:7 |
  e1:7 | e1:7 |
  % Verse
  bes1:min |
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
