\version "2.24.0"
#(set-default-paper-size "a4" 'landscape)
% this is based on
% https://imslp.org/wiki/Special:ReverseLookup/299955 page 13-15
% licensed under the Creative Commons CC0 1.0 Universal Public Domain Dedication

\header {
  title = "Aria Sub Elevatione & Variations"
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
          "Rudolf Walter"
          Find the source files: \bold \italic \typewriter {
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
  \stemUp \slurUp
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
    f) e f2
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
    c des c f,\fermata
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
  \stemUp \slurUp
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
    bes4 des c2
    c2 f,4 as
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
  % Layout block for formatting
  \layout {}
}
