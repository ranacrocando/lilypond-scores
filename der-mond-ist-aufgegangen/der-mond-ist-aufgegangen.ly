\version "2.24.0" % Specify the version of LilyPond
#(set-default-paper-size "a5" 'portrait)
\header {
  title = "Der Mond ist aufgegangen (Abendlied)"
  composer = "Text: Matthias Claudius (1740-1815); Melodie: Johann A.P. Schulz (1747-1800)"
  tagline = \markup {
    \override #'(font-size . -4)
    \center-align {
      \column {
        \line {
          \bold "This work is published under the Creative Commons Attributions-ShareAlike 4.0 license."
        }
        \line {
          Based on a
          \with-url
          #"https://imslp.org/wiki/Special:ReverseLookup/428256"
          "Score by Georg L. Sothilander; "
          Find the source files: \bold \italic \typewriter {
            \with-url
            #"https://github.com/ranacrocando/lilypond-scores/blob/main/der-mond-ist-aufgegangen/"
            "github.com/ranacrocando/lilypond-scores"
          }
        }
      }
    }
  }
}

mondGlobal = {
  \key f \major
  \time 4/4
}

mondMelody = \relative c' {
  \mondGlobal
  \partial 4
  f4 g f bes a g2 f4\breathe
  a a a d c bes2 a4\breathe
  a a a bes a g2 r4
  f g f bes a g2 f4\breathe
  a a a d c bes2 a4\breathe
  a a a bes a g g f
  \bar "|."
}

% Lyrics
mondVerseOne = \lyricmode {
  \set stanza = "1."
  Der Mond ist auf -- ge -- gan -- gen,
  die gold -- nen Stern -- lein pran -- gen
  am Him -- mel hell und klar.
  Der Wald steht schwarz und schwei -- get,
  und aus den Wie -- sen stei -- get
  der wei -- ße Ne -- bel wun -- der -- bar.
}
mondVerseTwo = \lyricmode {
  \set stanza = "2."
  Wie ist die Welt so stil -- le
  und in der Dämm -- rung Hül -- le
  so trau -- lich und so hold
  als ei -- ne stil -- le Kam -- mer,
  wo ihr des Ta -- ges Jam -- mer
  ver -- schla -- fen und ver -- ges -- sen sollt.
}
mondVerseThree = \lyricmode {
  \set stanza = "3."
  Seht ihr den Mond dort ste -- hen?
  Er ist nur halb zu se -- hen
  und ist doch rund und schön.
  So sind wohl man -- che Sa -- chen,
  die wir ge -- trost be -- la -- chen,
  weil uns -- re Au -- gen sie nicht sehn.
}

mondChordsOne = \chordmode {
  \partial 4 f4 c:7/e d:m bes f c:2 c:7 f4
  d:m a/cis d:m bes f g2:m a4
  d:m a d:m g:m d:7 g2.:m
  d4:m ees:6 d:m e:dim7 d/fis g:m c:7 f4
  d:m a d:m bes c:m g2:m a4
  d:m a:m f g:m f g:m c:7 f
}

% Score with layout settings
\score {
  <<
    \new ChordNames {
      \mondChordsOne
    }
    \new StaffGroup <<
      \new Staff {
        \new Voice = "mondMelody" \mondMelody
      }
      \new Lyrics \lyricsto "mondMelody" {
        \mondVerseOne
      }
      \new Lyrics \lyricsto "mondMelody" {
        \mondVerseTwo
      }
      \new Lyrics \lyricsto "mondMelody" {
        \mondVerseThree
      }
    >>
  >>
  \layout { }
}
