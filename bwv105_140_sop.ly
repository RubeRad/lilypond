\version "2.16.2"

\header {
  title = "BWV 105 & 140, Soprano only"
}

\score {
  <<
    \relative c' {
      \key g \minor
      \time 4/4
      d'4 d a b    | c bes a2         | g4 r r2 |
      bes4 bes a g | fis g a r        |
      r2 d4 d | a4. bes!8 c4 bes | a2 g4 r |
      r2 bes4 bes a g fis g a r r2
      a4 bes c a bes a g2 f4 r r2
      bes4 c d d ees d c2 bes4 r r2
      d4 d c d bes c d r
      r2 d4 d c bes a a g r r2 r1 r \bar "|."
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
	ees2 g bes2. bes4 bes2 bes c1 bes 
	r2 bes ees bes ees4(f) g2 f ees d(c) bes1
	r2 bes ees bes c g aes4(g) f2 ees1
      }
      r2 bes' bes2. aes4 g2 f ees1
      r2 bes' bes2. aes4 g2 f ees1
      r2 f g aes g1
      r2 bes c d ees ees4(f) g2 f ees bes ees bes c g aes4(g) f2 ees1 \bar "|."
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