\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}
global = {
  \key ees \major
  \time 4/4
}
sopMusic = \relative c' {
  \repeat volta 2 {
    ees2 g bes2. bes4 bes2 bes c1 bes 
    r2 bes ees bes ees4(f) g2 f ees d(c) bes1
    r2 bes ees bes c g aes4(g) f2 ees1
  }
  r2 bes' bes2. aes4 g2 f ees1
  r2 bes' bes2. aes4 g2 f ees1
  r2 f g aes g1
  r2 bes c d ees ees4(f) g2 f ees bes ees bes c g aes4(g) f2 ees1
  \bar "|."
}
sopWords = \lyricmode {
  hi hi hi hi
}
altoMusic = \relative c' {
  \repeat volta 2 {
    bes2 ees g f g f g(f) f1
    r2 f bes2. aes4 g4(aes) bes2 bes c c4(bes2 a4) f1
    r2 g aes g ees ees ees d bes1
  }
  r2 f'2 g2. f4 bes,4(c) d2 c1
  r2 d4(ees) f2 f f4(ees2) d4 bes1
  r2 d2 ees2. d4 ees1
  r2 g2 g4(f) f(g) g2 g4(aes) bes2. aes4 g2 g4(aes) bes(aes) bes(g) aes2 ees ees d bes1
}
VerseOne = \lyricmode {
  Glo -- ri -- | a sing all our | voic -- | es |
  with | An -- gels | all man -- | kind re -- | joic -- | es |
  with | harp and | strings in | sweet -- est | tone |
  No | eye has | ev -- er | seen |
  no | ear has | ev -- er | heard |
  the | joy we | know |
  Our | prais -- es | flow, Hal -- | le -- lu | jah, to | God in | dul -- ci | ju -- bi -- | lo |
}
VerseTwo = \lyricmode {
  Twelve bright | pearls a -- | dorn Thy | Por -- | tals |
  where | Thou hast | gath -- ered | Thine Im -- | mor -- | tals |
  as | An -- gels | round Thy | glo -- rious | Throne |
}
tenorMusic = \relative c' {
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
tenorWords = \lyricmode {
  hu hu hu hu
}
bassMusic = \relative c {
  \repeat volta 2 {
    ees1 ~ees4 g bes(aes) g(f) ees(d) ees(c f2) bes,1
    r2 bes'4(aes) g(aes) g(f) ees2 ees' d4(c) bes(a) bes2(f) bes,1
    r2 ees4(des) c(d) ees2 aes4(bes) c2 f, bes, ees1
  }
  r2 d ees f g4(aes) bes(bes,) c1
  r2 g'2 d4(c) bes2 ees4(c) aes4(bes) ees1
  r2 bes'4(aes) g2 f ees1
  r2 ees'2 a, b c c g4(aes) bes2 c,2 ees4(f) g(f) g(ees) aes,4(bes) c2 f bes, ees1
}
bassWords = \lyricmode {Appendix A: Templates
			ho ho ho ho
		      }
\score {
  \new ChoirStaff <<
    % \new Lyrics = "sopranos" \with {
    %   % this is needed for lyrics above a staff
    %   \override VerticalAxisGroup.staff-affinity = #DOWN
    % }
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
    \new Lyrics \lyricsto "altos" { \VerseOne }
    \new Lyrics \lyricsto "altos" { \VerseTwo }

    % \new Lyrics = "tenors" \with {
    %   % this is needed for lyrics above a staff
    %   \override VerticalAxisGroup.staff-affinity = #DOWN
    % }
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
    %\new Lyrics = "basses"
    %\context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    %\context Lyrics = "altos" \lyricsto "altos" \VerseOne
    %\context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    %\context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
}