\version "2.24.0"
#(set-default-paper-size "a4" 'landscape)

\header {
  title = "Lobe den Herren, den mächtigen König der Ehren."
  composer = "Joachim Neander (1650-1680)"
  subtitle = \markup {
    "EG Nr. 316/317; Vorspiel entlehnt von "
    \concat {
      \with-url #"https://www.youtube.com/watch?v=LqKfq1y2BJE" "Ben das Brot"
    }
  }
  tagline=""
}

% Define global settings (key and time signature)
global = {
  \key f \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INTRO: Bass and Chord Section
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Bassline for the introduction
bassIntro = \relative c {
  \clef bass
  \global
  f4 f c' a4. g8 f4~f2 s4 s2.
  f4 f c' aes4. g8 f4
  aes4 aes ees' c4. bes8 aes4 g2.~g2~g8 f8
  e2~e8 ees8 d2. cis2. d2~d8 f8 fis2. g2~g8 f8
  e2. f2. s2. f4 f c' a4. g8 f4
  e4 d c d e f
  \once \override TextSpanner.bound-details.left.text = \markup { \italic "rit." }
  \startTextSpan
  g2.~g2.
  f2.
  \stopTextSpan
  \bar "|."
}

% Chord progression for the introduction (displayed as chord names)
chordIntro = \chordmode {
  \global
  f2. f bes c:7
  f:m f:m aes aes g:4 g
  c d:m a d:m d g:m c f:4 f
  f f
  a:m d:m g:m c:7 f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN: Melody and Chord Section
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Melody section with proper rhythm
melodyVoice = \relative c' {
  \global  % This applies the time and key signature
    \repeat volta 2 {
      f4 f c' a4. g8 f4 e d
      c d e f g2. f
    }
    c'4 c c d2.
    a4 bes c c4. bes8 a4 g2. \breathe
    c,4 d e f g a g2. f
    \bar "|."
}

% Chord progression with adjusted rhythm
akkorde = \chordmode {
  \global
    \repeat volta 2 {
      f2. f a:m
      d:m c:7 f
    }
    f2. bes2. f f c4.:4  c
    a2.:m d:m g2:m c4:7 f2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LYRICS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseOneA = \lyricmode {
  \set stanza = "1."
    Lo -- be den Her -- ren,
    den mäch -- ti -- gen Kö -- nig der Eh -- ren;
}

verseOneB = \lyricmode {
  \set stanza = "1."
    lob ihn, o See -- le,
    ver -- eint mit den himm -- li -- schen Chö -- ren.
}

verseOneC = \lyricmode {
    Kom -- met zu -- hauf,
    Psal -- ter und Har -- fe, wacht auf,
    las -- set den Lob -- ge -- sang hö -- ren!
}

verseTwoA = \lyricmode {
  \set stanza = "2."
    Lo -- be den Her -- ren,
    der al -- les so herr -- lich re -- gier -- et;
}

verseTwoB = \lyricmode {
  \set stanza = "2."
    der dich auf A -- de -- lers Fit -- ti -- chen si -- cher ge -- führ -- et;
}

verseTwoC = \lyricmode {
    der dich er -- hält,
    wie es dir sel -- ber ge -- fällt;
    hast du nicht die -- ses ver -- spü -- ret?
}

verseFourA = \lyricmode {
  \set stanza = "4."
    Lo -- be den Her -- ren,
    der sicht -- bar dein Le -- ben ge -- seg -- net;
}

verseFourB = \lyricmode {
  \set stanza = "4."
    der aus dem Him -- mel mit Strö -- men der Lie -- be ge -- reg -- net;
}

verseFourC = \lyricmode {
    Den -- ke da -- ran,
    was der All -- mäch -- ti -- ge kann,
    der dir mit Lie -- be be -- ge -- gnet!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SCORE LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \markup {
    \column {
      \fill-line { \bold "Vorspiel (Pedal, Posaune)"  }
    }
  }
\score {
  <<
    % First system with bass and chord symbols only for the intro
    \new StaffGroup <<
      \new ChordNames {
        \chordIntro
      }
      \new Staff = "bassIntro" {
        \clef bass
        \bassIntro
      }
    >>
  >>
}
  \markup {
    \column {
      \fill-line { \bold "Strophen" }
    }
  }
\score {
  <<
    % Second system with melody, lyrics, and chords
    \new StaffGroup <<
      \new ChordNames {
        \akkorde
      }
      \new Staff <<
        \new Voice = "melodyVoice" \melodyVoice
        \new Lyrics \lyricsto "melodyVoice" {
          \verseOneA
        }
        \new Lyrics \lyricsto "melodyVoice" {
          \verseOneB
          \verseOneC
        }
        \new Lyrics \lyricsto "melodyVoice" {
          \verseTwoA
        }
        \new Lyrics \lyricsto "melodyVoice" {
          \verseTwoB
          \verseTwoC
        }
        \new Lyrics \lyricsto "melodyVoice" {
          \verseFourA
        }
        \new Lyrics \lyricsto "melodyVoice" {
          \verseFourB
          \verseFourC
        }
      >>
    >>
  >>
  \layout {}
}
