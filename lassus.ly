\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #10
  system-system-spacing #'basic-distance = #10
  last-bottom-spacing #'basic-distance = #10
}
global = {
  \key f \major
  \time 2/4
}
% these two are relative to c'=middle c?
% the starting f is a fourth above middle c
kazMusic = \relative c'' {
  r2 r2 r2 r2 |r8 f8 d16 ( c8) a16~|a4. r8|r2 | r2 |r8 f'8 d16 ( c8) a16~|a4. r8|r2 | r2 |r8 f'8 d16 ( c8) a16~|a1 |r2 | r2 | r2  | r2 | r2  | r2 | r8 f'4 des8 | f8 r8 r4 | r8 f4 c8 |f8 r8 r4 | r 2 | r2 |r2 | r2 | r8 f4 des8 | f8 r8 r4 | r8 f4 c8 |f8 r8 r4 | r 2 | r2 |r2 | r2 |
}
vlnMusic = \relative c'' {r2 r2 r2 r2 r2 d16 ( c8) f,16~|f4 r2 r2 r2 d'16 ( c8) f,16~|f4 r2 r2 r2 d'16 ( c8) f,16~|f4 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
   r8 d'8 d8 d8 d16 bes8 f16~f4 | r8 f'8 f8 f8 f16 d8 bes16~bes4
}
% this one is relative to c which is an octave below c'
% the starting f is a fourth above octave below middle c
% i.e. fifth below middle c
boneMusic = \relative c {
f8 f'8 d16 (c8) a16~|a4.c,8|f8 f8 a8 a8 | c8 c8 f8 c,8
 \repeat volta 2 { f4 r4 r4 r8 f8 a16 aes16 a16 aes16 a16 aes16 a16 aes16  a16 d8 c16 r8 c,8 f4 r4 r4 r8 f8 a16 aes16 a16 aes16 a16 aes16 a16 aes16  a16 f8 g16 r8 c,8 f4 r4 r4 r8 f8 a16 aes16 a16 aes16  a16 aes16 a16 aes16  a16 d8 c16 r8 f8 des4. f8 c4. a8 | c8 a8 c8 c8 f4. c,8 } 

 \repeat volta 2 {f'8 c8 c16 d8 c16 b8 r8 r4 r8 c8 bes16 c8 bes16 a8 r8 r4 r8 a8 a16 bes8 a16 g4 d'4 a4 g8 c,8 f16 e16 f16 g16 a16 g16 a16 bes16 c8 c8 c16 d8 c16 b8 r4 r8 r8 c8 bes16 c8 bes16 a8 r4 r8 r8 a8 a16 bes8 a16 g4 d'4 a4 g4 f16 g16 a16 bes16 c8 c8 } f8}
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
