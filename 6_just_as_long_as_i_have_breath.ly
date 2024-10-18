\version "2.18.2"

\header {
  title = "#6 Just as Long as I Have Breath"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    \repeat volta 3 {
      f4. g8 f4 c | f g a2 |
      a4 c bes a | g g f2 |
      f4. g8 f4 c | f g a2 |
      a4 c bes a | g g f2 |
      a4 a g c | b d c2 |
      a4. g8 bes4 a | g g f2 |
    }
  }
}

verse = \lyricmode {
  Just as long as I have breath,
  I must an -- swer, “Yes,” to life;
  though with pain I made my way,
  still with hope I meet each day.
  If they ask what I did well,
  tell them I said, “Yes,” to life.

  Just as long as vi -- sion lasts,
  I must answer, “Yes,” to truth;
  in my dream and in my dark,
  al -- ways that e -- lu -- sive spark.
  If they ask what I did well,
  tell them I said, “Yes,” to truth.

  Just as long as my heart beats,
  I must answer, “Yes,” to love;
  dis -- ap -- point -- ment pierced me through,
  still I kept on loving you.
  If they ask what I did best,
  tell them I said, “Yes,” to love.
}

harmonies = \chordmode {
  % Intro
  f2:/a d:min | f:/c bes | cis:5+ f:/c | b:m7.5- b:maj |
  f2:/a d:min | f:/c bes | cis:5+ f:/c | b:m7.5- b:maj |
  f:/a bes | b:m7.5- c4 c:7/bes | d2:/a g:min/bes | c:maj9 g:min |
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
