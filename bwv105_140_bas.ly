\version "2.16.2"

\header {
  title = "BWV 105 & 140, Bass only"
}

\score {
  <<
    \relative c' {
      \key g \minor
      \time 4/4
      \clef bass
      bes4 a8[(g)] fis4 f e ees8[(d)] c4(d) g, r r2
      g'8[(f)] ees[(d)] c[(d)] ees4 a, g d' r
      r2 g,8[(a)] bes[(c)] d[(ees)] f4 e8[(fis)] g4 d'(d,) g r
      r2 g8[(g,)] a[(bes)] c4 cis d ees d r r2
      d4 g8[(f!)] e4 f8[(e!)] d4 c8[(bes)] c2 f4 r r2
      g4 f8[(ees)] d[(c')] bes[(a)] g([f]) ees([d]) ees4(f) bes, r r2
      bes8[(c)] d[(ees!)] f([e]) fis([d]) g4 f!8([ees!]) d4 r
      r2 g8[(a)] bes[(d,)] e[(fis)] g[(bes,)] c[(a)] d4 g, r r2 r1 r
      \bar "|."
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
    \relative c {
      \key ees \major
      \time 4/4
      \clef bass
      \repeat volta 2 {
	ees1 ~ees4 g bes aes g(f) ees(d) ees(c f2) bes,1
	r2 bes'4(aes) g(aes) g(f) ees2 ees' d4(c) bes(a) bes2(f) bes,1
	r2 ees4(des) c(d) ees2 aes4(bes) c2 f, bes, ees1
      }
      r2 d ees f g4(aes) bes(bes,) c1
      r2 g'2 d4(c) bes2 ees4(c) aes4(bes) ees1
      r2 bes'4(aes) g2 f ees1
      r2 ees'2 a, b c c g4(aes) bes2 c,2 ees4(f) g(f) g(ees) aes,4(bes) c2 f bes, ees1
      \bar "|."
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