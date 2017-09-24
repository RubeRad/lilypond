\version "2.16.2"

\header {
  title = "BWV 105 & 140, Alto only"
}

\score {
  <<
    \relative c' {
      \key g \minor
      \time 4/4
      f8[(bes16 a)] bes8[(c)] d4 g, g g a(d,) d r r2
      d4 g g8[(d)] g4 a bes8[(g)] fis!4 r 
      r2 bes8[(c)] d4 d, d g g g(d) d r4
      r2 g4 g es g d g fis r r2
      fis4 g g f f f f(c) c r r2
      g'4 a f bes bes bes g4(c,) d r r2 
      f4 f f a d, g a r
      r2 g4 g8[(f)] e[(d)] d4 ees8[(c)] a4 b r r2 r1 r \bar "|."
    }
    \addlyrics {
      Now I know thou | shalt make qui -- | et |
      This my con -- science | pla -- guing me |
      Thy good | faith will bring ful -- | fill -- ment
      to what | thou thy -- self have | said |
      that in all these | earth -- ly reach -- | es |
      no one shall be   | lost for ev -- | er |
      but in -- stead have | life for e'er |
      if he | but with faith be | full |
    }
  >>
}

\score {
  <<
    \relative c' {
      \key ees \major
      \time 4/4
      \repeat volta 2 {
	bes2 ees g f g f g(f) f1
	r2 f bes2. aes4 g4(aes) bes2 bes c c4(bes2 a4) f1
	r2 g aes g ees ees ees d bes1
      }
      r2 f'2 g2. f4 bes,4(c) d2 c1
      r2 d4(ees) f2 f f4(ees2) d4 bes1
      r2 d2 ees2. d4 ees1
      r2 g2 g4(f) f(g) g2 g4(aes) bes2. aes4 g2 g4(aes) bes(aes) bes(g) aes2 ees ees d bes1 \bar "|."
    }
    \addlyrics {
      Glo -- ri -- | a sing all our | voic -- | es |
      with | An -- gels | all man -- | kind re -- | joic -- | es |
      with | harp and | strings in | sweet -- est | tone |
      No | eye has | ev -- er | seen |
      no | ear has | ev -- er | heard |
      the | joy we | know |
      Our | prais -- es | flow, Hal -- | le -- lu | jah, to | God in | dul -- ci | ju -- bi -- | lo |
    }
    \addlyrics {
      Twelve bright | pearls a -- | dorn Thy | Por -- | tals |
      where | Thou hast | gath -- ered | Thine Im -- | mor -- | tals |
      as | An -- gels | round Thy | glo -- rious | Throne |
    }
  >>
}