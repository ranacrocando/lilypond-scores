\version "2.24.0" % Specify the version of LilyPond
#(set-default-paper-size "a4" 'landscape)
% this is based on https://commons.wikimedia.org/w/index.php?title=File:Slane_(anacrucial_version).png&oldid=910130329
% by Cnbrb, licensed under the Creative Commons CC0 1.0 Universal Public Domain Dedication
% sources: https://github.com/ranacrocando/lilypond-scores/blob/main/lord-of-all-hopefulness/

\header {
  title = "Lord of all Hopefulness (Slane)"
  composer = "Jan Struther (1901-1953)"
  tagline = \markup {
    \override #'(font-size . -4)
    \center-align {
      \column {
        \line {
          \bold "This work is dedicated to the public domain under the Creative Commons Zero (CC0) license."
        }
        \line {
          Based on a
          \with-url
          #"https://commons.wikimedia.org/w/index.php?title=File:Slane_(anacrucial_version).png&oldid=910130329"
          "Score by Cnbrb"
        }
      }
    }
  }
}


global = {
  \key ees \major
  \time 3/4
}

% Melody Staff
melody = \relative c' {
  \global
  ees4 ees4 f8 ees8
  c4 bes4 bes8 c8
  ees4 ees4 f4
  g2
  bes8 g
  f4 f f
  f g bes
  c bes g
  bes2
  bes4
  c c8 d ees d
  c4 bes g
  bes ees, d
  c2
  bes4
  ees g bes
  c8 bes g4 ees8 g
  f4 ees ees
  ees2.  \bar "|."
}

% Lyrics
verseOne = \lyricmode {
  \set stanza = "1."
  Lord of all _ hope -- ful -- ness, _ Lord of all joy,\break
  Whose _ trust, ev -- er child -- like, no cares could de -- stroy,\break
  Be there at _ our _ wak -- ing, and give us, we pray,\break
  Your bliss in our hearts, _ Lord, at the break of the day.
}
verseTwo = \lyricmode {
  \set stanza = "2."
  Lord of all _ eag -- er -- ness, _ Lord of all faith,\break
  Whose _ strong hands were skilled at the plane and the lathe,\break
  Be there at _ our _ la -- bours, and give us, we pray,\break
  Your strength in our hearts, _ Lord, at the noon of the day.
}
verseThree = \lyricmode {
  \set stanza = "3."
  Lord of all _ kind -- li -- ness, _ Lord of all grace,\break
  Your _ hands swift to wel -- come, Your arms to em -- brace\break
  Be there at _ our _ ho -- ming, and give us, we pray,\break
  Your love in our hearts, _ Lord, at the eve of the day.
}

chordsOne = \chordmode {
  ees4 c:m f:m/aes_3
  aes4 bes2
  ees4 / g ees
  bes ees2

  ees4/g
  bes f/a f
  bes ees ees/g
  aes ees/g ees
  bes2

  ees4
  aes2 ees4/g
  aes ees ees
  ees/g aes g/b
  c2 :m

  bes4:7/d
  ees4 c:m ees/g
  aes ees ees/g
  bes c:m aes
  ees2.
}
chordsTwo = \chordmode {
  ees2 f4:m/aes_3
  c:m bes/d ees
  c:m ees/bes aes:6
  ees2

  ees4
  bes/d f:7/c bes
  f/a g:m ees
  c:m bes/d ees
  bes2

  g4:m/bes
  aes f:m c:m
  c:m g2:m
  g4:m/bes aes/c bes/d
  c :m/ees f:m

  bes4/d
  c2:m bes8/bes bes/aes
  c4:m/g ees ees/g
  f:m/aes c:m aes:6
  ees2.
}

% Score with layout settings
\score {
  <<
    \new ChordNames {
      \chordsOne
    }
    \new ChordNames {
      \chordsTwo
    }
    \new StaffGroup <<
      \new Staff {
        \new Voice = "melody" \melody
      }
      \new Lyrics \lyricsto "melody" {
        \verseOne
      }
      \new Lyrics \lyricsto "melody" {
        \verseTwo
      }
      \new Lyrics \lyricsto "melody" {
        \verseThree
      }
    >>
  >>
  \layout { }
}
