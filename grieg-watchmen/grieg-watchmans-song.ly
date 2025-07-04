\version "2.24.0"
#(set-default-paper-size "a4" 'portrait)

\header {
  title = "Vægtersang"
  composer = "Edvard Grieg (1843-1907)"
  opus = "Opus 12, No 3"
  subtitle = \markup {
    "adapted for four-string bass guitar"
  }
  tagline=""
}

global = {
  \key e \major
  \time 4/4
}



melodyVoice = \relative c {
  \global
  \clef "bass"
  \partial 4 b4(
  e) e dis cis8 b
  <a cis\harmonic>2 <gis e'>4 r4
  <a\harmonic fis'>\staccato <a\harmonic fis'>\staccato <b fis'\harmonic>\staccato <b fis'\harmonic>\staccato
  <gis\harmonic e'\harmonic>2 r4
  gis'( cis) cis b a8 gis
  <<a2\\ {cis,4 dis}>> <cis e\harmonic>2
  <cis\harmonic fis\harmonic>4
  << {<a\harmonic fis'\harmonic>2 dis8 e} \\ {s4 b2}>>
  <gis\harmonic e'\harmonic>2 r4 b4b8 cis dis4 dis b gis ais b b b8 cis dis b dis4 cis8 b gis4 ais b
  \bar "|."
}

tabulatur = \relative c, {
  \global
  \clef "tab"
  \partial 4 b4
  e e dis cis8 b
  <a cis\harmonic>2

  <<
    {gis4\4}
    \\
    {\harmonicByRatio #1/6 cis4\3}
  >>
  r4

  <<
    {fis,4\3\staccato}
    \\
    {\harmonicByFret 7 a4\2}
  >>
  <<
    {fis,,4\3\staccato}
    \\
    {\harmonicByFret 7 a4\2}
  >>
  <<
    {b,,4\4\staccato}
    \\
    {\harmonicByFret 9 fis\2}
  >>
  <<
    {b,,4\4\staccato}
    \\
    {\harmonicByFret 9 fis\2}
  >>
  <<{\harmonicByFret 4 gis2\4}\\ {\harmonicByFret #3.3 e2\3}>> r4
  gis,,,,\2 cis cis b a8\2 gis\2
  <<a,2\3 {cis'4\1( dis\1)}>> <<{cis,2\4}\\ {\harmonicByFret #7 e2\3}>>
  <<{\harmonicByFret #4 cis4\3}\\ {\harmonicByFret #4 fis4\2}>>
  <<{\harmonicByFret #5 a4\3}\\ {\harmonicByFret #4 fis4\2}>>
  <<{b,,,,,,,,,,2\4} \\ {s4 dis8\3(e8\3)}>>

  <<{\harmonicByFret #9 gis2\4}\\ {\harmonicByFret #7 e2\3}>> r4
  \bar "|."
}

akkorde = \chordmode {
  \global
  \partial 4 s4
  e1
  a2 cis:m/g
  fis:m7 b2 e s
  cis1:m
  a 4 b:7 cis2:m
  fis:m7 b:7
  e2 s2
}

\score {
  <<
    % Second system with melody and chords
    \new StaffGroup <<
      \new ChordNames {
        \akkorde
      }
      \new Staff <<
        \new Voice = "melodyVoice" \melodyVoice
      >>
      <<
        \new TabStaff {
          \set Staff.stringTunings = #bass-tuning
          \tabulatur
        }
      >>
    >>
  >>
  \layout {}
}
