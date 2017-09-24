\version "2.18.2"
\paper {
  %top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #15
  %last-bottom-spacing #'basic-distance = #10
}
global = {
  \key f \major
  \time 4/4
}
oneMusic = \relative c' {
  \partial 4 c4 | f f a a | g f g a | g f a g | f2 r4 g |
  a g f a | c8[(bes) a(g)] a4 c | c2 c | d c4(b) |
  c2. a4 | c a f a | g8[(f) g(a)] g4 f | c'2 bes | a4.(bes8) g4 g | f2 r4
  c'4 |  f f a a | g f g a | g f a g | f2 r4 g |
  a g f a^2 | c8^4[(bes) a(g)] a4 c^3 | c2 c | d c4(b) |
  c2. a4 | c a f^1 a | g8[(f) g(a)] g4 f | c'2^3 bes | a4.^3(bes8) g4 g | f2 r4

  c,8[(bes)] | a[(c f a)] c[(bes a bes)] | g[(f e d)] c[(d c bes)] | a[(c f a)] g[(f g a)] |
  f[(c a c)] f[(a c f)] | a[(g f c)] a[(c f g)] | a[(g f e)] f[(g a bes)] |
  c[(bes a g)] f[(e d c)] | b[(c d e)] f[(g^1 a b)] | c[(g e^0 d^3)] c[(g e d)]
  c[(f a c)] f[(e f a)] | g[(f e d)] c4(d8[e]) | f8[(g a^1 bes)] d4(c8[bes]) |
  a^3[(g) a(bes)] g4.^\prall (f8) | f4 \bar "||"
  
}
twoMusic = \relative c' {
  \partial 4 c4 | f c d c | d d e e | e d c c | f2 r4 c |
  f c a c | f e f e | f2 e | d g | c,2. c4 | f c d c |
  d f e d | c2 d | f2. e4 | f2 r4 
  c'4 | f c d c | d d e e | e d c c | f2 r4 c |
  f c a c | f e f e | f2 e | d g | c,2. c4 | f c d c |
  d f e d | c2 d | f2. e4 | f2 r4
  c,4 |  f f a a | g f g a | g f a g | f2 r4 g |
  a g f a | c8[(bes) a(g)] a4 c | c2 c | d c4(b) |
  c2. a4 | c a f a | g8[(f) g(a)] g4 f | c'2 bes | a4.(bes8) g4 g | f4 \bar "||"
}
\score {
  \new ChoirStaff <<
    \new Staff = "I" <<
      \new Voice = "violinOne" {
	\voiceOne
	<< \global \oneMusic >>
      }
    >>

    \new Staff = "II" <<
      \new Voice = "violinTwo" {
	\voiceOne
	<< \global \twoMusic >>
      }
    >>
  >>
}