\paper {
  %top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #15
  %last-bottom-spacing #'basic-distance = #10
}
global = {
  \key g \minor
  \time 4/4
}
sopMusic = \relative c' {
  d'4 d a b c bes a2 g4 r r2
  bes4 bes a g fis g a r
  r2 d4 d a4. bes!8 c4 bes a2 g4 r
  r2 bes4 bes a g fis g a r r2
  a4 bes c a bes a g2 f4 r r2
  bes4 c d d ees d c2 bes4 r r2
  d4 d c d bes c d r
  r2 d4 d c bes a a g r r2 r1 r
}
altoMusic = \relative c' {
  f8[(bes16 a)] bes8[(c)] d4 g, g g a(d,) d r r2
  d4 g g8[(d)] g4 a bes8[(g)] fis!4 r 
  r2 bes8[(c)] d4 d, d g g g(d) d r4
  r2 g4 g es g d g fis r r2
  fis4 g g f f f f(c) c r r2
  g'4 a f bes bes bes g4(c,) d r r2 
  f4 f f a d, g a r
  r2 g4 g8[(f)] e[(d)] d4 ees8[(c)] a4 b r r2 r1 r
}
VerseOne = \lyricmode {
  Now I know thou | shalt make qui -- | et |
  This my con -- science | pla -- guing me |
  Thy good | faith will bring ful -- | fill -- ment
  to what | thou thy -- self have | said |
  that in all these | earth -- ly reach -- | es |
  no one shall be   | lost for ev -- | er |
  but in -- stead have | life for e'er |
  if he | but with faith be | full |
}
tenorMusic = \relative c' {
  bes8[(c)] d4 d d c g'8[(f)] ees!4(d8[c] bes4) r r2
  g4 g a8[(bes)] c4 c d8[(bes)] d4 r
  r2 d4  d,8[(ees!)] f[(g)] a4 g8[(a)] bes[(c)] d4(a) bes r
  r2 d4 g, a bes a c a r r2
  d4 d e c d a8([f]) c'4(g) a r r2
  d8[(g)] c,4 bes8[(c)] d4 g f8([bes,]) c4(f) f r r2
  bes,4 f8[(g)] a[(g)] a[(fis!)] g([bes]) ees4 fis, r
  r2 d'4. bes8 g[(a)] bes[(g)] c[(ees)] fis,![(d')] d4 r r2 r1 r
}
bassMusic = \relative c' {
  bes4 a8[(g)] fis4 f e ees8[(d)] c4(d g,) r r2
  g'8[(f)] ees[(d)] c[(d)] ees4 a, g d' r
  r2 g,8[(a)] bes[(c)] d[(ees)] f4 e8[(fis)] g4 d'(d,) g r
  r2 g8[(g,)] a[(bes)] c4 cis d ees d r r2
  d4 g8[(f!)] e4 f8[(e!)] d4 c8[(bes)] c2 f4 r r2
  g4 f8[(ees)] d[(c')] bes[(a)] g([f]) ees([d]) ees4(f) bes, r r2
  bes8[(c)] d[(ees!)] f([e]) fis([d]) g4 f!8([ees!]) d4 r
  r2 g8[(a)] bes[(d,)] e[(fis)] g[(bes,)] c[(a)] d4 g, r r2 r1 r
  
}
\score {
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" {
	\voiceOne
	<< \global \sopMusic >>
      }
      \new Voice = "altos" {
	\voiceTwo
	<< \global \altoMusic >>
      }
    >>
    \new Lyrics \lyricsto "sopranos" { \VerseOne }

    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
	\voiceOne
	<< \global \tenorMusic >>
      }
      \new Voice = "basses" {
	\voiceTwo << \global \bassMusic >>
      }
    >>
  >>
}