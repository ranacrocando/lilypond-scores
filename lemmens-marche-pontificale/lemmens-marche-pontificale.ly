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
  \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8)} \times 2/3 {\grace{e8(} d4-!) cis8-!}|
  b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4 cis8} |
  b2 \times 2/3 {gis8-! a-! b-!} \times 2/3{a4-! gis8(} |
  \times 2/3{cis4 a8} \times 2/3{fis4 gis8} \times 2/3{a4 b8} \times 2/3{gis4 d'8}|
  \times 2/3{cis4 a8} \times 2/3{fis4 gis8} \times 2/3{a4 b8} \times 2/3{gis4 a8} |
  g1)(|
  g8.) fis16 g8. fis16 g8. g16 b8. a16|
  g4 e8 c4 c8 e g|
  \times 2/3{c4 g8}\times 2/3{e'4 c8}\times 2/3{g'4 e8}\times 2/3{d8 e a,}|
  b2( \times 2/3 {cis8-!) d-! e-!} \times 2/3{d4-! cis8-!} |
  b2( \times 2/3 {cis8-!) e-! d-!} \times 2/3{cis4-! d8-!(} |
  \times 2/3 {b4 cis8} \times 2/3 {d4 e8} \times 2/3 {fis4 e8} \times 2/3 {a4 g8}|
  \times 2/3 {fis4 a8} \times 2/3 {b4 e,8} \times 2/3 {fis4 cis8)} \times 2/3 {\grace{e8(} d4-!) cis8-!}|
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
  cis4 e b s4 |
  e \clef violin g s2 |
  gis4 b s2 |
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
  cis4 e b s4 |
  e \clef violin g s2 |
  gis4 b s2 |
  s1

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
  <fis ais cis> \clef violin d'8. fis16 g8 gis |
  <a, cis e>2 \clef violin <d fis>8. a'16 b8 bis|
  <eis, gis>2 <fis a>4 \clef bass <g, b d g> |
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
  <fis ais cis> \clef violin d'8. fis16 g8 gis |
  <a,( cis e>2 \clef violin <d) fis>8. a'16 b8 bis|
  <cis,( eis gis>2 <fis) a>4 \clef bass <g, b d g> |
  <g a cis e>4. <fis a d>8 q4 r4
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
  g e
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
