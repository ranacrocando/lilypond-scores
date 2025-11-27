\version "2.24.0" % Specify the version of LilyPond
#(set-default-paper-size "a4" 'landscape)
% this is based on https://imslp.org/wiki/Special:ReverseLookup/12599
% licensed under the Creative Commons CC0 1.0 Universal Public Domain Dedication

\header {
  title = "Marche Pontificale"
  composer = "Jacques-Nicolas Lemmens (1823-1881)"
  subtitle="Trois Sonates pour Orgue"
  piece="2nd Movement from 'Sonata Pontificale'"
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
          #"https://imslp.org/wiki/Special:ReverseLookup/12599"
          "London: Novello & Co., n.d. Plate 3533."
          %Find the source files: \bold \italic \typewriter {
          %  \with-url
          %  #"https://github.com/ranacrocando/lilypond-scores/blob/main/max-reger-lobe-den-herren/"
          %  "github.com/ranacrocando/lilypond-scores"
          %}
        }
      }
    }
  }
}


global = {
  \key d \major
  \time 4/4
  \tempo 4=108
}

melodyVoice = \relative c'' {
  \clef treble
  \global
  \f
  <d a fis>2 <fis d a>8.\staccato  d16\staccato fis8\staccato a\staccato|
  <d,~ fis~ d'>2
  <d fis cis'>
  <<
    \new Voice = "melody" {
      \voiceOne
      b'2( a4) \staccato  \times 2/3 {fis8\staccato g\staccato a\staccato}|
      g4\staccato fis\staccato e2
    }
    \new Voice = "harmony" {
      \voiceTwo
      <b d~ g b>2 <a~ d>2|
      <a cis>4 <a d> <a cis>2
    }
  >> |
  <fis ais cis e fis(>2 <g b d g)>8.\staccato <fis fis'>16\staccato <g g'>8\staccato <gis gis'>8\staccato |
  <a cis e g a(>2 <b d fis b)>8.\staccato <a a'>16\staccato <b b'>8\staccato <bis bis'>8\staccato|
  <cis eis gis b cis~>2 <e fis ais cis e>4\staccato <d fis b d>8\staccato <cis e a cis>\staccato|
  <b d gis b>4. <a cis e a>8 <a cis e a>4 r4|

  <fis a d>2 <a fis'>8.\staccato d16\staccato fis8\staccato a8\staccato|
  <<
    \new Voice = "melody" {
      \relative c'
      \voiceOne
      <d, d'>2 <cis cis'>|
      <b b'> <<a2 {a'4  \times 2/3 {fis8\staccato g\staccato a\staccato}}>> |
      g4\staccato fis\staccato e2\staccato |
      cis4( e4 <b d fis g)>8.\staccato fis'16\staccato g8\staccato gis\staccato |
      e4( g <b, d fis b)>8. a'16 b8 bis
      gis4( b  <d, fis a d\staccato)>4
    }
    \new Voice = "harmony" {
      \relative c'
      \voiceTwo
      fis4 g2 fis4 |
      d e2 d4 |
      <a cis>4 <a d> <a cis>2 |
      <fis ais cis fis[>2 s2 |
      <a cis e a>2 s2 |
      <cis eis gis cis>2
      s4
    }
  >>
  <b d g>8\staccato <a d fis>\staccato |
  <g a cis e>4. <fis a d>8 q4 r4 | \bar ".."

  % intermezzo 1
  fis2 d4 \times 2/3 {e8\staccato( fis\staccato g\staccato)} |
  a4 g8 fis e2
  <<
    {
      \stemDown
      d2. g4~ |
      g4 fis2 \times 2/3 {e8( d cis)} |
      c2 b |
      a4 b cis cis8. cis16 |
      fis4 e d2 |
      cis4 b a r
    }
    \\
    {
      \stemUp
      r4 fis'8. fis16 b2 |
      a2 g |
      fis2 d4 \times 2/3 {e8( fis g)} |
      a4 g8 fis e2 |
      r4 cis'2 b4~|
      b8 a4 gis8 fis4 r
    }
  >> \bar ".."

  % second main theme
  <fis a d>2 <a fis'>8.\staccato d16\staccato fis8\staccato a8\staccato|
  <<
    \new Voice = "melody" {
      \relative c'
      \voiceOne
      <d, d'(>2 <cis cis')>|
      <b b'(> <<a2 {a'4)  \times 2/3 {fis8\staccato g\staccato a\staccato}}>> |
      g4\staccato fis\staccato e2\staccato |
      cis4( e4 <b d fis g)>8.\staccato fis'16\staccato g8\staccato gis\staccato |
      e4( g <b, d fis b\staccato)>8. a'16\staccato b8\staccato bis\staccato
      gis4( b  <d, fis a d)>4
    }
    \new Voice = "harmony" {
      \relative c'
      \voiceTwo
      fis4 g2 fis4 |
      d e2 d4 |
      <a cis>4 <a d> <a cis>2 |
      <fis ais cis fis[>2 s2 |
      <a cis e a>2 s2 |
      <cis eis gis cis>2
      s4
    }
  >>
  <b d g>8\staccato <a d fis>\staccato |
  <g a cis e>4. <fis a d>8 q4 r4 | \bar ".."

  % second interlude
  <<
    \new Voice = "melody" {
      \relative c'
      \voiceOne
      b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4-! cis8-!} |
      b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4-! cis8(} |
      \times 2/3 {b4 cis8} \times 2/3 {d4 e8} \times 2/3 {fis4 e8} \times 2/3 {a4 g8}|
      \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8)} \times 2/3 {\appoggiatura{e8} d4-! cis8-!}|
      b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4 cis8} |
      b2 \times 2/3 {gis8-! a-! b-!} \times 2/3{a4-! gis8(} |
      \times 2/3{cis4 a8} \times 2/3{fis4 gis8} \times 2/3{a4 b8} \times 2/3{gis4 d'8}|
      \times 2/3{cis4 a8} \times 2/3{fis4 gis8} \times 2/3{a4 b8} \times 2/3{gis4 a8} |
      g1)(|
      g8.) fis16 g8. fis16 g8. g16 b8. a16|
      \times 2/3{g4 e8} \times 2/3{c4 g8} \times 2/3{e4 g8} \times 2/3{c8 e g}|
      \times 2/3{c4 g8}\times 2/3{e'4 c8}\times 2/3{g'4 e8}\times 2/3{d8 e a,}|
      b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4-! cis8-!} |
      b2( \times 2/3 {cis8-!) e-! d-!} \times 2/3{cis4-! d8-!(} |
      \times 2/3 {b4 cis8} \times 2/3 {d4 e8} \times 2/3 {fis4 e8} \times 2/3 {a4 g8}|
      \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8)} \times 2/3 {\appoggiatura{e8} d4-! cis8-!}|
      b2 \times 2/3 {cis8-! d-! e-!} \times 2/3{d4-! cis8-!} |
      b2 \times 2/3 {cis8-! fis-! e-!} \times 2/3{d4-! cis8-!} |
      c4 a' g d|
      dis8. e16 b'8. a16 g8. d16 f8. e16|
      e2( e8.) e16 g8. fis16|
      fis2(fis8.) fis16 a8. g16 |
      gis2(gis8.) gis16 b8. a16~|
      a8. a16 b8. a16~a8. a16 b8. a16|
      b8.a16b8.a16
      b8.a16 b8.a16|
    }
    \new Voice = "harmony" {
      \relative c'
      \voiceTwo
      r4 <d,, fis>-! <fis ais> r4|
      r4 <d fis>-! <fis ais> r4|
      s1 |s1|
      r4 <d fis>-! <fis ais> r4|
      r4 <d fis>-! <cis eis> r4|
      r4 d fis eis |
      r4 d fis eis|
      r4 e es d|
      c ais b2 |
      s1|s1|
      r4 <d fis>-! <fis ais> r4|
      r4 <d fis>-! <fis ais> r4|
      s1|s1|
      r4 <d fis>-! <fis ais> r4|
      r4 <d fis> <fis ais> r4|
      c'1~|
      c2. b4 |
      <g~ c>2 <g cis>|
      <a~ d> <a dis>|
      <b~ e> <b f'>|
      <e g>2 <cis~ e~ g~>2|
      <cis e g>1|
    }
  >>
  \bar ".."
  % third main theme
  <fis, a d>2 <a fis'>8.-! d16-! fis8-! a8-!|
  <<
    \new Voice = "melody" {
      \relative c'
      \voiceOne
      <d, d'>2 <cis cis'>|
      <b b'> <<a2 {a'4  \times 2/3 {d,8-! e-! fis-!}}>> |
      g4-! fis-! e2-! |
      cis4( e4 <b d fis g)>8.-! fis'16-! g8-! gis-! |
      e4( g <b, d fis b\staccato)>8. a'16\staccato b8\staccato bis\staccato
      gis4( b  <e, fis ais e')>4
    }
    \new Voice = "harmony" {
      \relative c'
      \voiceTwo
      fis4 g2 fis4 |
      d e2 d4 |
      <a cis>4 <a d> <a cis>2 |
      <fis ais cis fis[>2 s2 |
      <a cis e a>2 s2 |
      <cis eis gis cis>2
      s4
    }
  >>
  <d fis d'>8-! <cis e cis'>-! |
  <b d e b'>4. <a cis e>8 q4 r4 | \bar ".."

  % third interlude
  r8. <f a d>16-! <a d f>8-! <d f a>-!
  <<
    \new Voice { \voiceOne <d~ d'~>2 | <d d'>8.-! <c c'>16-! }
    {\voiceOne <f a>2 | <g bes>4 }
  >>
  <bes, bes'>8-! <a a'>8-! <bes d g>2|
  r8. c16-! <c e>8-! <c e g>-!
  <<
    \new Voice { \voiceOne <c~ c'~>2 | <c c'>8.-! <bes bes'>16-! }
    {\voiceOne <e g>2 | <f a>4 }
  >>
  <a, a'>8-! <g g'>8-! <f f'>4-! <f' g b d f>-! | %the last highest note is a fis in my template but I guess it should be f making it a clear g7
  <e g c e>4-! <g, bes c>8.-! q16-! <f a c>4-! <f a c f>4-! |
  <e g c e>4 \tuplet 3/2{<g bes c>8 q q} <f a c>4 <g c es>-!|
  <fis a d>-! <a c d>8. q16 <g bes d>4-! <g bes d g>-!|
  <fis a d fis>-! \tuplet 3/2{<a c d>8 q q} <g bes d>4 <a d f>-!|
  <gis b e>4-! <b d e>8. q16 <a c e>4-! <a c e a>-!|
  <gis b e gis>-!  \tuplet 3/2{<b d e>8 q q} <a c e>4-! <b d e>8. q16|
  <a c e>4-! <b d e>8. q16 <a c e>4-! <b d e>8. q16|
  <<
    \new Voice {\voiceOne g'2(f8) r8 \tuplet 3/2{f,8 f f }}
    { \voiceTwo <a~ c~ es~>2 <a c es>8 s8 s4}
  >>
}

bassVoice = \relative c {
  \global
  \voiceThree
  <d'( a fis d>2  d4) cis |
  s1*7 |
  s2(~d2)(|
  d4) e2 fis4 |
  <b, g'>4 cis2 d4|
  s1 |
  \clef violin cis4 e d8. fis16 g8 gis |
  e4 g fis8. a16 b8 bis |
  gis4 b a s4 |
  s1

  %intermezzo 1
  a,2 b|
  a4 b cis a8. a16|
  s1*6|

  % second main theme
  d2\staccato  d2(|
  d4) e2 fis4 |
  <b, g'>4 cis2 d4|
  s1 |
  cis4 e d8. fis16 g8 gis|
  e4 \clef violin g fis8. a16 b8 bis |
  gis4 b a s4 |
  s1
  % second interlude
  b,2 \times 2/3 {cis8-! d-! e-!} \times 2/3{d4 cis8} |
  b2 \times 2/3 {cis8 d e} \times 2/3{d4 cis8} |

  \times 2/3 {b4 cis8} \times 2/3 {\showStaffSwitch\change Staff = "up"  \stemDown \tupletDown d4 e8} \times 2/3 {fis4 e8} \times 2/3 {a4 g8}|

  \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8} \times 2/3  {\showStaffSwitch\change Staff = "down" \stemUp \tupletUp \appoggiatura{e8} d4 cis8}|
  b2 \times 2/3 {cis8-! d-! e-!} \times 2/3{d4 cis8} |
  b2 \times 2/3 {gis8-! a-! b-!} \times 2/3{a4 gis8} |
  \times 2/3{cis4 a8}\times 2/3{fis4 gis8}\times 2/3{a4 b8}\times 2/3{gis4 d'8}|
  \times 2/3{cis4 a8}\times 2/3{fis4 gis8}\times 2/3{a4 b8}\times 2/3{gis4 a8}|
  g1~|g1~|
  \times 2/3{g4 e8}\times 2/3{c4 g8}\times 2/3{e4 g8} \times 2/3{c8 e g8}|
  \times 2/3{c4 g8}\times 2/3{e'4 c8}\times 2/3{g'4 e8}\times 2/3{d8 e a,}|
  b2 \times 2/3 {cis8-! d-! e-!} \times 2/3{d4 cis8} |
  b2 \times 2/3 {cis8 e d} \times 2/3{cis4 d8} |
  \clef treble \times 2/3 {b4 cis8} \times 2/3 {d4 e8} \times 2/3 {fis4 e8} \times 2/3 {a4 g8}|
  \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8} \times 2/3 {\appoggiatura{e8} d4-! cis8-!}|
  \clef bass b2 \times 2/3 {cis8 d e} \times 2/3{d4 cis8} |
  b2 \times 2/3 {cis8-! fis-! e-!} \times 2/3{d4 cis8} |
  c1~|c4 e d\showStaffSwitch\change Staff = "up" \stemDown g|
  s1 s1 s1 s1|
  b8.a16b8.a16b8.a16b8.a16|
  \hideStaffSwitch\change Staff = "down" \stemUp

  % third main theme
  d,2(d2)(|
  d4) e2 fis4 |
  <b, g'>4 cis2 d4|
  s1 |
  cis4 e d8.  fis16 g8 gis |
  e4 g fis8. a16 b8 bis |
  \clef treble
  gis4 b fis2 |
  <e gis>4. <a, cis e>8 <a cis e>4 r4|
  \clef bass

  % third interlude
  s1*12
}

secondBassVoice = \relative c {
  \global
  \voiceFour
  s2
  <d'~ fis~>2|
  <b d~ fis~>
  <a d fis>|
  <g b d~ g>2
  <fis a d>|
  <e a e'>4\staccato
  <a d fis>\staccato
  <a cis e>2|
  <fis ais cis e(>2 <b d)>4\staccato r4|
  <a cis e g(>2 <d fis)>4\staccato r4|
  \clef violin
  <cis eis gis b(>2 <fis ais)>4 <b, d fis b>|
  \clef bass
  <gis b e>4. <a cis e>8 <a cis e>4 r4|
  <d, a' d~>2 d'4 cis |
  b2 a |
  g fis |
  < e a e'>4  <a d fis> <a cis e>2 |
  <fis ais cis>2 b4 s4 |
  <a cis e>2 d4 s4|
  <eis gis>2 fis4 \clef bass <g, b d g> |
  <g a cis e>4. <fis a d>8 q4 r4 |

  %intermezzo 1
  d,2 g|
  fis4 g a2|
  r4 d8. d16 g4 e|
  fis b,8. b16 e4 a,|
  <d, d'>2 g|
  fis4 e a2|
  ais4 fis8. fis16 b4 gis8. gis16|
  cis4 cis, fis r4|

  % second main theme
  r8r16 d'16\staccato fis8\staccato a\staccato d4 cis |
  b2 a |
  g fis |
  < e a e'>4  <a d fis> <a cis e>2 |
  <fis ais cis> \clef violin b4 s4 |
  <a( cis e>2 \clef violin d4) s4|
  <cis( eis gis>2 fis4) \clef bass <g, b d g> |
  <g a cis e>4. <fis a d>8 q4 r4

  % second interlude
  r4 <d fis>-! <fis ais> r4|
  r4 <d fis>-! <fis ais> r4|
  s1 |s1|
  r4 <d fis>-! <fis ais> r4|
  r4 <d fis>-! <cis eis> r4|
  s1 |s1|
  r4 cis2 <d f>4|
  es e f fis|
  s1|s1|
  r4 <d fis>-! <fis ais> r4|
  r4 <d fis>-! <fis ais> r4|
  s1 |s1|
  r4 <d fis>-! <fis ais> r4|
  r4 <d fis>-! <fis ais> r4|
  r4 fis g a |
  g1|
  r8. fis16(g8.) a16(bes2)(|
  a8.) gis16(a8.) b16(c2)(|
  b8.) ais16(b8.) cis16(d2)|
  cis2~<a~ cis~> |<g~ a~ cis~> <e g a cis>

  % third main theme
  r8. d16-! fis8-! a-! d4 cis |
  b2 a |
  g fis |
  < a cis e>4  <a d fis> <a cis e>2 |
  <fis ais cis>2 \clef violin b4 s4 |
  <a cis e>2 \clef violin d4 s4|
  <cis eis gis>2 ais'4 a |
  s1

  % third interlude
  r2 r8. d,,16 f8-! a-!|
  <g~ bes~ d~>2 <g bes d>8. g16 bes8-! d-!|
  <g, c e g>2  r8. c,16 e8-! g-!|
  <f~ a~ c~>2 <f a c>4 <d f g b>-!
  <e g c>-! <e g c>8. <e g c>16 <f a c>4 <f a c>|
  <c e g c> \times 2/3{<e g c>8<e g c>8<e g c>8} <f a c>4 <g c es>|
  <fis a d>4 <fis a d>8. <fis a d>16 <g bes d>4 <g bes d>|
  <d fis a d> \times 2/3{<fis a d>8<fis a d>8<fis a d>8} <g bes d>4 <a d f>|
  <gis b e> <gis b e>8. <gis b e>16 <a c e>4 <a c e>4|
  <e gis b e> \times 2/3{<gis b e>8<gis b e>8<gis b e>8} <a c e>4 <gis b e>8. <gis b e>16|
  <a c e>4 <gis b e>8. <gis b e>16 <a c e>4 <gis b e>8. <gis b e>16|
  <a~ c~ es~ g(>2<a c es f)>8 r8 r4|
}

pedalVoice = \relative c {
  \clef bass
  \global
  d,2 d'4 cis
  b2 a
  g fis
  e4\staccato d\staccato a'2
  fis( b4\staccato) r4
  a2( d4\staccato) r4
  cis2( fis4\staccato) b,\staccato
  e2 a,4 r4 |

  r8 r16 d,16 fis8 a8 d4 cis |
  b2 a |
  g fis |
  e4\staccato d\staccato a'2 |
  fis2( b4) r4 |
  a2( d4) r4 |
  cis2( fis4) g\staccato |
  a2 d,4 r4|

  R1 R1 R1 R1 R1 R1 R1 R1

  %second main theme
  r8 r16 d,16 fis8 a d4 cis|
  b2 a |
  g fis|
  e4\staccato d\staccato a'2|
  fis2(b4) r4|
  a2(d4) r4|
  cis2(fis4) g|
  a2 d,4 r

  % second interlude
  r4 b-! fis-! r |
  r4 b-! fis-! r |
  R1 |R1|
  r4 b-! fis-! r |
  r4 b-! cis-! r |
  r4 d b cis|
  r4 d b cis |
  r4 a ais b |
  c cis d dis |
  e r4 r2|
  R1|
  r4 b-! fis-! r |
  r4 b-! fis-! r |
  r4 \tuplet 3/2 {b' bes8} \tuplet 3/2 {a4 g8} \tuplet 3/2 {fis4 e8}|
  \tuplet 3/2 {d4 cis8} \tuplet 3/2 {b4 g8} \tuplet 3/2 {fis4-! r8} \tuplet 3/2 {fis'4-! r8}|
  r4 b,-! fis-! r |
  r4 b-! fis-! r |
  r4 d' e fis|
  g1|
  r8. fis,16(g8.) a16( bes2)(|
  a8.) gis16( a8.) b16( c2)(|
  b8.) ais16( b8.) cis16( d2)|
  cis2 a|
  g e|

  %third main theme
  r8. d16-! fis8-! a-! d4 cis|
  b2 a |
  g fis|
  e4( d  a'2)|
  fis2(b4) r4|
  a2(d4) r4|
  cis2(fis4) b,|
  e2 a,4 \tuplet 3/2{g'8 f e}

  %third interlude
  d2( d8.) c16 bes8 a|
  g2(g8.)  f'16 e8 d8|
  c2(c8.) bes16 a8 g8|
  f4 a d g,|
  c4 r4 r4 f,|
  c' r4 r4 c |
  d r4 r4 g,|
  d' r4 r4 d|
  e r4 r4 a,|
  e' r4 r2|
  r1 | r1|

}


\score {
  <<
    \new PianoStaff <<
      \new Staff = "up" <<
        \set Staff.midiInstrument = "church organ"
        \clef treble
        \new Voice = "melody" { \melodyVoice }
      >>
      \new Staff = "down" <<
        \set Staff.midiInstrument = "church organ"
        \clef bass
        \new Voice = "bass" { \bassVoice }
        \new Voice = "basstwo" { \secondBassVoice }
      >>
    >>
    \new Staff = "pedalStaff" <<

      \set Staff.midiInstrument = "church organ"
      \new Voice = "pedal" { \pedalVoice }
    >>
  >>

  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi{}
}
