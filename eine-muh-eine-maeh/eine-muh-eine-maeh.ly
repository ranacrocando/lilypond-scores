\version "2.24.0" % Specify the version of LilyPond
#(set-default-paper-size "a5" 'portrait')
\header {
  title = "Eine Muh, eine Mäh (eine Tätärätätä)"
  composer = "Wilhelm Lindemann (1882-1941)"
  tagline = \markup {
    \override #'(font-size . -4)
    \center-align {

      \line {
        Find the source files: \bold \italic \typewriter {
          \with-url
          #"https://github.com/ranacrocando/lilypond-scores/blob/main/eine-muh-eine-maeh/"
          "github.com/ranacrocando/lilypond-scores"
        }
      }

    }
  }
}

muhGlobal = {
  \key f \major
  \time 4/4
}

muhMelodyVerse = \relative c' {
  \muhGlobal
  c8 g' a a a g g4
  c,8 c bes' bes bes a a4
  f8 f f' f e4 d c8. c16 bes8 e, g4 f
  g8 g g g c d e4
  d8 d f f e d c4
  g8 g g g c d e4
  d8 d f b, d c c4
  c8 c c c c4 r8 c8
  c c c c c4\fermata
}
muhMelodyVerseAlternate = \relative c' {
  \muhGlobal
  \stemUp
  s1 s1 s1 s1 s1 s1 s1 s1 s1
  s8 s8 \parenthesize d'8 \parenthesize dis \parenthesize e4
}
muhMelodyChorus = \relative c'{
  \partial 4 b8 c a'4 e8 f c'4 bes8 a a8. g16 g8 g g4 g8 f
  e4 d' c a8 g f4 d' c b,8 c
  a'4 e8 f c'4 bes8 a a8. g16 g8 g g4 g8 f
  e4 d' c e,8 e g8. f16 f8 f f4 r4
  \bar ":|."
}

% Lyrics
muhVerseOne = \lyricmode {
  \set stanza = "1."
  Wenn der Weih -- nachts -- baum uns lacht,
  wenn die Glo -- cke bim bam macht,
  kommt auf lei -- sen Soh -- len
  Rup -- recht an ver -- stoh -- len.
  Zieht mit vol -- len Säc -- ken ein,
  bringt uns Bäc -- ker Leck -- er -- ein.
  Und packt un -- ter La - -- chen aus die schön -- sten Sa - chen.
  Au -- ßer Ku -- chen -- zeug, bringt noch der Gu -- te euch:
}
muhChorus = \lyricmode {
  \set stanza = "Chorus"
  \partial 4 Ei -- ne
  Muh, ei -- ne Mäh, ei --ne Tä -- te -- rä -- tä -- tä,
  ei -- ne Tu -- u -- te, ei -- ne Ru -- u -- te.
  Ei -- ne hopp hopp hopp hopp, ei -- ne Die -- del -- da -- de -- dum,
  ei -- ne Wau -- wau -- wau, Ra -- ta -- tsching -- da -- ra -- ta -- bum.
}

muhVerseTwo = \lyricmode {
  \set stanza = "2."
  Wenn der Schnee zum Berg sich türmt,
  wenn es drau -- ßen friert und stürmt,
  um die Weih -- nachts -- lich -- ter
  fröh -- li -- che Ge -- sich -- ter.
  Al -- le Stu -- ben blitz -- e -- blank,
  denn es kommt im Pol -- ter -- gang,
  durch die Luft, die ka - -- lte,
  Rup -- recht an, der a - lte.
  Und pustet, prus -- tet dann,
  zeigt uns der Weih -- nachts -- mann:
}

muhChordsVerse = \chordmode {
  f2 c f d:m
  d:m bes a4:m g:m c:7 f
  c1 g2:7 c
  c1 g2:7 c
  c f fis4:dim g:aug c:7
}

muhChordsChorus = \chordmode {
  \partial 4 r4
  f1
  g:m
  c
  f2. r4
  f2 fis:dim
  g1:m
  c2 c:7
  f1
}

% Score with layout settings
\score {
  <<
    \new ChordNames {
      \muhChordsVerse
      \muhChordsChorus
    }
    \new StaffGroup <<
      \new Staff {
        <<
          \new Voice = "muhMelody" \muhMelodyVerse
          \new Voice = "muhMelodyAlternate" \muhMelodyVerseAlternate
        >>
        \new Voice = "muhChorus" \muhMelodyChorus
      }
      \new Lyrics \lyricsto "muhMelody" {
        \muhVerseOne
      }
      \new Lyrics \lyricsto "muhMelody" {
        \muhVerseTwo
      }
      \new Lyrics \lyricsto "muhChorus" {
        \muhChorus
      }
    >>
  >>
  \layout { }
}
