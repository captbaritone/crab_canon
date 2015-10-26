#(set-global-staff-size 30)
\include "english.ly"
\version "2.18.2"
%\include "letter.ly"

\header{
  title = "Canon super thema regium"
  composer = "J. S. Bach"
}

music = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
}\relative c' {
  c2 ef2 |
  g2 af2 |
  b,2 r4 g'2  | % tied over
  fs2 f2  |
  e2 ef2  |
  d4 df4 c4 |
  b4 g4 c4 f4 |
  ef2 d2 |
  c2 ef2 |
  g8 f8 g8 c8 g8 ef8 d8 ef8 |
  f8 g8 a8 b8 c8 ef,8 f8 g8 |
  af8 d,8 ef8 f8 g8 f8 ef8 d8 |
  ef8 f8 g8 af8 bf8 af8 g8 f8 |
  g8 af8 bf8 c8 df8 bf8 af8 g8 |
  a8 b8 c8 d8 ef8 c8 b8 a8 |
  b8 c8 d8 ef8 f8 d8 g,8 d'8 |
  c8 d8 ef8 f8 ef8 d8 c8 b8 |
  c4 g4 ef4 c4
}

\score {
  \new Staff {
    \key c \minor
    \numericTimeSignature
    \time 4/4
    % For the forward version use:

    \music

    % For the retrograde version use:

    % \retrograde \music

    \bar "|."

  }
}
