\version "2.18.2"

\header {
  title = "Blue X-Mas by Miles Davis and Gil Evans"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    % Merry Christmas.
    % I hope you have a white one,
    % But for me it's blue.
    %
    % Blue Christmas.
    % That's the way you see it when you're feeling blue.
    %
    % Blue Xmas.,
    % When you're blue at Christmastime,
    % You see right through
    % All the waste
    % All the sham
    % All the haste
    % And plain ole bad taste.
    %
    % Sidewalk Santa Clauses are
    % Much, much, much too thin.
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
  Merry Christ -- mas.
  I hope you have a white one,
  But for me it's blue.

  Blue Christ -- mas.
  That's the way you see it when you're feel -- ing blue.

  Blue Xmas.,
  When you're blue at Christ -- mas -- time,
  You see right through
  All the waste
  All the sham
  All the haste
  And plain ole bad taste.

  Sidewalk Santa Clauses are
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
  c1
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
