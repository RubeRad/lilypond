\version "2.20.0"

\header {
  title = "Now Blessed Be the Lord Our God"
  subtitle = "(Trinity Hymnal 11, #1,2)"
  composer = "Psalm 72:18-19"
}        

% Hymnal pages are: 6"    x 9"
% Half-letter is:   5.5" x  8.5"
% But shrink a little bit more than that
#(set! paper-alist (cons '("half-letter" . (cons (* 5 in) (* 8 in))) paper-alist))
\paper {
  #(set-paper-size "half-letter")
}

global = {
  \key bes \major
  \time 4/4
}

%\layout {
%   #(layout-set-staff-size 12)
%} 


SopranoInstrumentName = "S"
SopranoMusic = \relative c' {
  \partial 4 bes8[(d)] f4 f f f8[(g)] aes4 aes g4. 
  f8 g4 bes bes8[(g)] f8[(g)] bes2.
  bes8[(c)] d4 bes bes g f ees d
  bes8[(c)] d(f4) g8 f[(d)] c4 bes2. \bar "|."
}

VerseOne = \lyricmode { \set stanza = "1."
  Now | bless -- ed be the Lord our God,
  the God of Is -- ra -- el,
  for he a -- lone does won -- drous works
  in glo -- ry that ex -- cel.
}

VerseTwo = \lyricmode { \set stanza = "2."
  And bless -- ed be his glor -- ious name,
  to all e -- ter -- ni -- ty;
  the whole earth let his glo -- ry fill.
  A -- men, so let it be.
}

AltoInstrumentName = "A"
AltoMusic =  \relative c'{
 \partial 4 bes8[(d)] | d4 c d bes c2 bes2 
 ees4 f ees2 f4 ees d
 d d2 ees c bes4
 bes8[(c)] a2 bes4 a bes2. 
}

TenorInstrumentName = "T"
TenorMusic = \relative c {
  \partial 4 d8[(f)] f4 ees f d ees2 ees4. 
  f8 bes2. a8[(g)] f2.
  f4 bes2 g2 f2.
  g4 f2 g4 ees d2. \bar "|."
}

BassInstrumentName = "B"
BassMusic = \relative c {
  \partial 4 bes4 bes1 aes4 c ees4. 
  f8 ees4 d c f8[(ees)] d4 c bes
  a g2 c4 bes a g8[(a)] bes4
  ees d2 c4 f, bes2.
}

TwoVoicesPerStaff = ##t  % instead of staff for each voice
tagline = ##f            % suppress lilypond footer

\include "satb.ly"

