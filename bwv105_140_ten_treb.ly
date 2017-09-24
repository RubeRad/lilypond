\version "2.16.2"

\header {
  title = "BWV 105 & 140, Tenor only (treble clef 8va)"
}

\score {
  <<
    \relative c'' {
      \key g \minor
      \time 4/4
      bes8[(c)] d4 d d c g'8[(f)] ees!4(d8[c]) bes4 r r2
      g4 g a8[(bes)] c4 c d8[(bes)] d4 r
      r2 d4  d,8[(ees!)] f[(g)] a4 g8[(a)] bes[(c)] d4(a) bes r
      r2 d4 g, a bes a c a r r2
      d4 d e c d a8([f]) c'4(g) a r r2
      d8[(g)] c,4 bes8[(c)] d4 g f8([bes,]) c4(f) f r r2
      bes,4 f8[(g)] a[(g)] a[(fis!)] g([bes]) ees4 fis, r
      r2 d'4. bes8 g[(a)] bes[(g)] c[(ees)] fis,![(d')] d4 r r2 r1 r
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
    \relative c'' {
      \key ees \major
      \time 4/4
      \repeat volta 2 {
	g2 bes ees d ees bes bes(a) d1
	r2 d ees ees bes ees f f f2.(c4) d1
	r2 ees ees ees4(des) c2 c c4(bes) aes2 g1
      }
      r2 bes2 ees4(d) c(d) ees2 bes4(aes) g1
      r2 bes2 bes4(c) d2 bes4(c2) bes4 g1
      r2 bes2 bes c4(aes) bes1
      r2 ees2 ees d c ees ees d ees ees bes ees ees2. c4 c(bes) aes2 g1
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