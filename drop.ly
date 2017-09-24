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
sopMusic = \relative c' {
  f2 a4 f c'2. f,4 bes4. bes8 bes4 a 
  g2. g4 e f d c f a g g f1
  \bar "|."
}
sopWords = \lyricmode {
  hi hi hi hi
}
altoMusic = \relative c' {
    c2 f4 c c2. f4 f4. f8 g4 f e2. 
    d4 c c bes a d f f e f1
    \bar "|."
}
VerseOne = \lyricmode {
  Drop, drop, slow tears, 
  And bathe those beau -- teous feet 
  Which brought from Heav'n
  The news and Prince of Peace
}
VerseTwo = \lyricmode {
  Cease not, wet eyes,
  His mer -- cies to en -- treat;
  To cry for ven -- geance:
  sin doth ne -- ver cease.
}
VerseThree = \lyricmode {
  In you deep floods
  Drown all my faults and fears;
  Nor let his eye see
  Sin, but through my tears.
}
tenorMusic = \relative c' {
  a2 c4 a g2. a4 bes4. bes8 ees4 c c2. bes4 g
  f f f a d c4. bes8 a1
  \bar "|."
}
tenorWords = \lyricmode {
  hu hu hu hu
}
bassMusic = \relative c {
  f2 f4 f f(e2) f4 d4. d8 ees4 f 
  c2. g4 c a bes f' d a c c f1 
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
    \new Lyrics \lyricsto "altos" { \VerseThree }

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
