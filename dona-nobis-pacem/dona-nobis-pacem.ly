\version "2.24.0"
#(set-default-paper-size "a5" 'portrait)
% sources: https://github.com/ranacrocando/lilypond-scores/blob/main/dona-nobis-pacem/
\header {
  title = "Dona Nobis Pacem"
  composer = "Traditional"
  tagline = \markup {
    \override #'(font-size . -4)
    \center-align {
      \column {
        \line {
          \bold "This work is published under the Public Domain"
          \with-url #"https://commons.wikimedia.org/w/index.php?title=File:Dona_nobis_pacem.png&oldid=702018311"
          "(source)"
        }
      }
    }
  }
}

donaGlobal = {
  \key g \major
  \time 3/4
}

donaMelody = \relative c' {
  \donaGlobal
  g'8(d) d'2 |
  a8(d,) c'2 |
  b4( a) g |
  g fis2 |\break
  e'4( d8 c) b( a) |
  d4.( c8) b4 |
  b8( a g4 fis) |
  g2. |
  \bar ".."\break

  d'2. |
  d |
  d4( c) b |
  b a2 |\break
  e'4 e2|
  d4 d2 |
  d8( c b4 a)|
  g2.|
  \bar ".."\break
  g2.|
  fis |
  g4.( a8) b( c) |
  d4 d,2|
  c'4 c2|\break
  b4 b2|
  fis8( a d4 d,)|
  g2.
  \bar "|."
}

% Lyrics
donaText = \lyricmode {
  \set stanza = "1."
  Do- na no- bis pa- cem pa- cem.
  Do- na no- bis pa- cem.
  \set stanza = "2."
  Do- na no- bis pa- cem.
  Do- na no- bis pa- cem.
  \set stanza = "3."
  Do- na no- bis pa- cem
  Do- na no- bis pa- cem.
}

donaChords = \chordmode {
  g2. d:7 g d c g d:7 g
  g2. d:7 g d c g d:7 g
  g2. d:7 g d c g d:7 g
}

% Score with layout settings
\score {
  <<
    \new ChordNames {
      \donaChords
    }
    \new StaffGroup <<
      \new Staff {
        \new Voice = "donaMelody" \donaMelody
      }
      \new Lyrics \lyricsto "donaMelody" {
        \donaText
      }
    >>
  >>
  \layout { }
}
