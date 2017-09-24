\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}
global = {
  \key f \major
  \time 4/4
}
% these two are relative to c'=middle c?
% the starting f is a fourth above middle c
vlnMusic = \relative c' {
  f2 a4 f c'2. f,4 bes4. bes8 bes4 a 
  g2. g4 e f d c f a g g f1
  \bar "|."
}
kazMusic = \relative c' {
  f2 a4 f c'2. f,4 bes4. bes8 bes4 a 
  g2. g4 e f d c f a g g f1
  \bar "|."
}
% this one is relative to c which is an octave below c'
% the starting f is a fourth above octave below middle c
% i.e. fifth below middle c
boneMusic = \relative c {
  f2 f4 f f(e2) f4 d4. d8 ees4 f 
  c2. g4 c a bes f' d a c c f1 
}
\score {
  \new ChoirStaff <<
    \new Staff = "violin" <<
      \new Voice = "violins" {
	\voiceOne
	<< \global \vlnMusic >>
      }
    >>
    \new Staff = "kazoo" <<
      \new Voice = "kazoos" {
	\voiceOne
	<< \global \kazMusic >>
      }
    >>
    \new Staff = "trombone" <<
      \clef bass
      \new Voice = "trombones" {
	\voiceOne
	<< \global \boneMusic >>
      }
    >>
  >>
}
