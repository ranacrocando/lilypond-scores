\version "2.24.0"
#(set-default-paper-size "a4" 'landscape)
% this is based on
% https://imslp.org/wiki/Special:ReverseLookup/299955 page 13-15
% licensed under the Creative Commons CC0 1.0 Universal Public Domain Dedication

\paper{
  #(define page-breaking ly:page-turn-breaking)
}

\header {
  title = "Aria sub Elevatione & Variations"
  composer = "Gottlieb Muffat (1690-1770)"
  opus = "Missa in F"
  tagline = \markup {
    \override #'(font-size . -4)
    \center-align {
      \column {
        \line {
          \bold "This work is dedicated to the public domain under the Creative Commons Zero (CC0) license."
        }
        \line {
          Based on
          \with-url
          #"https://imslp.org/wiki/Special:ReverseLookup/299955"
          "Rudolf Walter & Ludwig Doblinger"
          ; Find the source files: \bold \italic \typewriter {
            \with-url
            #"https://github.com/ranacrocando/lilypond-scores/blob/main/muffat-variations/"
            "github.com/ranacrocando/lilypond-scores"
          }
        }
      }
    }
  }
}


global = {
  \key c \minor
  \time 4/4
}

ariaMelodyVoice = \relative c'' {
  \clef treble
  \global
  \repeat volta 2 {
    as4 g8 f c'c,c g'
    f e f g e2
    g4 as g c
    f8 g es d d4 g,
    es'4. d8 c b c d
    b4.\trill c8 c2
  }

  \repeat volta 2 {
    c4 des8 es as,4 bes8 c
    des c bes as g4 es
    as bes c bes8 as
    g4.\trill as8 as2
    g4 as bes f
    g8 as f g e4 c
    c' as8 g f bes as g
    as4 g8.\trill f16 f2\fermata
  }
}

ariaBassVoice = \relative c {
  \clef bass
  \global
  \stemUp
  \slurUp
  \repeat volta 2 {
    c'2 g
    as4. bes8 c4 g
    c2 c
    b4 c b2
    c4 g g2
    g4. f8 e2
  }

  \repeat volta 2 {
    es'2 des4 g,
    as des8 c bes4 c8 des

    c4 es es des8 c
    bes4 des c2
    c2 f,4 as
    bes as g2
    e4 c' as f(
    f) e f2\fermata
  }
}

ariaSecondBassVoice = \relative c {
  \clef bass
  \global
  \stemDown
  \repeat volta 2 {
    f2 es
    des c8 d e d
    c4 f es2
    d4 c g'2
    c,4 b es c
    g'g, c2
  }

  \repeat volta 2 {
    as'4 g f es
    des2 es
    f4 es as des,
    es2 as8 as g f
    e4 f des2
    bes2 c
    c des c f,
  }
}

\score {
  \header{ piece="Aria"}
  <<
    \new StaffGroup <<
      \new Staff = "melodyAndHarmonyStaff" <<
        \clef treble
        \new Voice = "melody" { \ariaMelodyVoice }
      >>

      \new Staff = "bassStaff" <<
        \new Voice = "bass" { \ariaBassVoice }
        \new Voice = "basstwo" { \ariaSecondBassVoice }
      >>
    >>
  >>
  % Layout block for formatting
  \layout {}
}

primaMelodyVoice = \relative c'' {
  \clef treble
  \global
  \repeat volta 2 {
    f,16 e f g as g as bes c g c g c, g' c g
    f e f g as f g f e f e d c8 r8
    g'16 as f g as g as bes g g a b c d es c
    f es f g es d es f d c b a g d' g f
    es d c es d g, g d' c d es f g es d c
    b g es' c b8.\trill c16 c g e g c,4
  }

  \repeat volta 2 {
    c'16 es c es bes g es g as f as f bes es, c' es,
    des' f, c' es, bes' f as es g as g f es es f g
    as c as f bes g es' bes c es as, c bes c as bes
    g bes es, as g as f g as4 r4
    g16 c g c as c f, aes des bes des bes f as g f
    g as g as f as g f e d e f g c, e f
    g c c bes as bes g as f f bes c as g as bes
    c bes as bes g8.\trill f16 f c aes' e f4
  }
}

primaBassVoice = \relative c {
  \clef bass
  \global
  \stemUp
  \slurUp
  \repeat volta 2 {
    c'2 g
    as4. bes8 c4 g
    c2 c
    b4 c b2
    c4 g g2
    g4( g8)  f e4 g8 e
  }

  \repeat volta 2 {
    es'2 des4 g,
    as des8 c bes4 c8 des
    c4 es es des8 c
    bes4 des c r
    c2 f,4 bes
    bes as g2
    e4 c' as f(
    f) e f4 f
  }
}

primaSecondBassVoice = \relative c {
  \clef bass
  \global
  \stemDown
  \repeat volta 2 {
    f2 es
    des c8 d e d
    c4 f es2
    d4 c g'2
    c,4 b es c
    g'g, c4( c16) g c,8
  }

  \repeat volta 2 {
    as''4 g f es
    des2 es
    f4 es as des,
    es2 as8 as g f
    e4 f des2
    bes2 c
    c des c f,4( f16) c' f,8
  }
}


\score {
  \header{ piece="Variatio prima"}
  <<
    \new StaffGroup <<
      \new Staff = "melodyAndHarmonyStaff" <<
        \clef treble
        \new Voice = "melody" { \primaMelodyVoice }
      >>

      \new Staff = "bassStaff" <<
        \new Voice = "bass" { \primaBassVoice }
        \new Voice = "basstwo" { \primaSecondBassVoice }
      >>
    >>
  >>
  \layout {}
}

secundaMelodyVoice = \relative c'' {
  \clef treble
  \key c \minor
  \time 12/8
  \repeat volta 2 {
    f,8 g as g as f c' g c g c, g'
    f e f g as f e f g c,4.
    g'8 c bes as g f g a b c d es
    f g f es d c d es c b g d'
    es g, es' d g, d' c b c c d es
    b c d es g, b c g e c4 r8
  }

  \repeat volta 2 {
    c'4. des4 es8 as,4. bes4 c8
    des es c bes c as g4. es
    as bes c bes8 c as
    g4.(g4) g8 as4. r4.
    g as bes f
    g8 as g f g f e f g e c g'
    c g c as bes g f bes c as bes g
    as bes as g4.\trill f8 c bes as4.
  }
}

secundaBassVoice = \relative c {
  \clef bass
  \key c \minor
  \time 12/8
  \stemUp
  \slurUp
  \repeat volta 2 {
    c'2. g2.
    as4. bes c g
    c2. c
    b4. c b2.
    c4. g g2.
    g4.( g4)  f8 e4 g8 e g c,
  }

  \repeat volta 2 {
    es'2. des4. g,
    as des4 c8 bes8 g as bes c des
    c4. es es des4 c8
    bes c des es bes des c4. r4.
    c2. f,4. as
    bes as g2.
    e4. c' aes f(
    f)( f8) f e f4. f8 c f,
  }
}

secundaSecondBassVoice = \relative c {
  \clef bass
  \key c \minor
  \time 12/8
  \stemDown
  \repeat volta 2 {
    f2. es
    des c4 d8 e4 d8
    c4. f es2.
    d4. c g'2.
    c,4. b es c
    g'g, c2.
  }

  \repeat volta 2 {
    as'8 bes as g as g f g f es f es
    des2. es
    f8 g f es f g as bes as des,4.
    es2. as8 bes as g as f
    e d e f e f des c des des c des
    bes2. c
    c des
    c f,
  }
}


\score {
  \header{ piece="Variatio secunda"}
  <<
    \new StaffGroup <<
      \new Staff = "melodyAndHarmonyStaff" <<
        \clef treble
        \new Voice = "melody" { \secundaMelodyVoice }
      >>

      \new Staff = "bassStaff" <<
        \new Voice = "bass" { \secundaBassVoice }
        \new Voice = "basstwo" { \secundaSecondBassVoice }
      >>
    >>
  >>
  \layout {}
}

twoWayFermata = {
  % https://lsr.di.unimi.it/LSR/Item?id=1162
  \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
  \once \set Staff.caesuraTypeTransform = ##f
  \caesura ^\fermata _\fermata
}

tertiaMelodyVoice = \relative c'' {
  \clef treble
  \global
  \stemUp \slurUp
  \repeat volta 2 {
    as4 g8 f c' c, c g'
    f e f g e4 r4
    g as g c
    f8 g es d d4 g,
    es'4. d8 c b c d
    b4.\trill c8 c16 g c g e4
  }

  \repeat volta 2 {
    c'4 des8 es as,4 bes8 c
    des c bes as g4 es
    as bes c bes8 as
    g4.\trill as8 as4 r4
    g as bes f
    g8 as f g e4 c
    c' as8 g f bes as g
    as4 g8.\trill f16 f c f c a4 \twoWayFermata
  }
}

tertiaBassVoice = \relative c {
  \clef bass
  \global
  \repeat volta 2 {
    f16 c' f, c' e, c' f, c' es, g es g es g es g
    des as' c, as' des, as' bes, bes' c, g' d g e g d g
    c, c' c, c' f, c' f, c' es, c' es, c' es, g es g
    b d, es g c, g' f a g b a c b d b g
    c c, c' c, g' c, g' b, es g d f es g f as
    g g, g' g, f' g, f' g, e'8 c g'16 e g c,
  }

  \repeat volta 2 {
    as'16 es' as, es' g, bes g bes f c' f, c' es, g es g
    des f as es des des' des, c' es, bes' es, bes' es, c' es, des'
    f, c' f, c' es, es' es, es' as, es' as, es' des, des' des, c'
    es, bes' es, c' es, des' es, des' as c as c g c f, c'
    e, c' e, c' f, c' f, c' des, f des f des as' des, as'
    bes, bes' c, as' des, as' bes, bes' c, g' des g e g des g
    c, e c g' c, c' c, bes' des, as' bes, g' c, f c e
    f c f f, c' bes c c, f4 c'16 a c f, \twoWayFermata
  }
}


\score {
  \header{ piece="Variatio tertia"}
  <<
    \new StaffGroup <<
      \new Staff = "melodyAndHarmonyStaff" <<
        \clef treble
        \new Voice = "melody" { \tertiaMelodyVoice }
      >>

      \new Staff = "bassStaff" <<
        \new Voice = "bass" { \tertiaBassVoice }
      >>
    >>
  >>
  \layout {}
}