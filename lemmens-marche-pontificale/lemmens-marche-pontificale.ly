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
}

melodyVoice = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \stemDown \slurUp
  \f
  <d a fis>2 <fis d a>8.\staccato  d16 \staccato  fis8  \staccato a \staccato
  <d,~ fis~ d'>2
  <d fis cis'>
  <<
    { \once \stemDown b'2( a4) \staccato  \times 2/3 {fis8\staccato g\staccato a\staccato}}
    \\
    { <b, d~ g b>2 <a d>2}
  >>
}

bassVoice = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  \slurUp
  \stemDown
  <d'( a fis d>2  d4) cis
}
secondBassVoice = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  \slurUp
  \stemDown
  s2
  <d'~ fis~>2
  <b d~ fis~>
  <a d fis>
  <g b d~ g>2
  <fis a d>
}

pedalVoice = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  d,2 d'4 cis
  b2 a
  g fis
}

% Define the staff system
\score {
  <<
    \new StaffGroup <<
      \new Staff = "melodyAndHarmonyStaff" <<
        \clef treble
        \new Voice = "melody" { \melodyVoice }
      >>

      \new Staff = "bassStaff" <<
        \new Voice = "bass" { \bassVoice }
        \new Voice = "basstwo" { \secondBassVoice }
      >>
    >>
    \new Staff = "pedalStaff" <<
      \new Voice = "pedal" { \pedalVoice }
    >>
  >>

  % Layout block for formatting
  \layout {}
}
