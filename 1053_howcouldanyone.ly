\version "2.18.2"

\header {
  title = "1053 How Could Anyone"
  composer = "Arranged by Mike iLL Kilmer for UU Pensacola"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }
melody = \relative c' {
  \clef treble
  \key e \major
  \time 2/2
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \new Voice = "verse" {
    fis2 gis |
    \repeat volta 2 {
      a8 a a4 a4. gis8 | gis4 fis( fis) e8 fis |% How could anyone ever tell you you were
      gis gis gis4 gis fis | fis8 e e4( e) dis8 e |% anything less than beautiful… how could
      fis8 fis fis4 fis4. e8 | e4 dis( dis) cis8 dis | % anyone ever tell you you were
      e2 fis | gis fis4 gis | % less than whole how could
      %
      a8 a a4 a4. gis8 | gis4 fis( fis) e8 fis | % anyone fail to notice that your
      gis4 gis gis4. fis8 | fis8 e e4( e) dis | % loving is a miracle how
      cis cis a'4. gis8 | gis4 fis e dis | e1 | % deeply you're connected to my soul
      fis2 gis | % How could
    }
  }
}

verse = \lyricmode {
  How could a -- ny -- one e -- ver tell you
  you were a -- ny -- thing less than beau -- ti -- ful __
  how could a -- ny -- one e -- ver tell you
  you were less than whole __

  how could a -- ny -- one fail to no -- tice
  that your lov -- ing is a mi -- ra -- cle __
  how deep -- ly you're con -- nec -- ted to my soul __
  How could
}

harmonies = \chordmode {
  % Intro
  cis2:m11 cis:m | e1:sus7/b | e:sus7/b |
  a:maj7 | a:maj7 | d:maj7 | gis:5+ |
  cis:m | fis:/cis | b:sus7/fis | b:sus7/fis |
  e2:/b e:5+/c | cis1:m | a | b:7.9 |
  a | cis2:m11 cis:m |
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
