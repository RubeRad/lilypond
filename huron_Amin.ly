\version "2.16.2"

\header {
  title = "Huron Carol, in a minor"
}I

\score {
  <<
    \relative c' {
      \key a \minor
      \time 4/4
      \partial 4 e | a b c d | c b a4. g8 | a4 a b g | a2.
      e4 | a b c d | c b a4. g8 | a4 c b g | a2.
      a4 | e' e b c | d4. c8 b4 b | c b a a |b a a( g)
      | e a a2 | g4 f e2 | a g4 e | a2 a4 b | c d e e, |
       a2.
      \bar "|."

    }
    \addlyrics {
     'Twas in the moon of win -- ter -- time When all the birds had fled,
      That might -- y Git -- chi Man -- i -- tou Sent an -- gel choirs
      in -- stead. Be -- fore their light the stars grew dim, And won -- 
      d'ring hunt -- ers heard the hymn Je -- sus, your King is born. 
      Je -- sus is born. In ex -- cel -- sis glo -- ri -- a!
    
    }
    \addlyrics {
      With -- in a lodge of bro -- ken bark The ten -- der babe was found,
      A rag -- ged robe of rab -- bit skin En -- wrapped his beau -- ty 'ruond;
      and as the hunt -- er braves drew nigh The an -- gel song rang loud
      and high Je -- sus, your King, is born. Je -- sus is born. In ex -- cel 
      -- sis glo -- ri -- a!
    }
  >>
}
