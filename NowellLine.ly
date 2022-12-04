\version "2.16.2"

% First Nowell VlnII p9 page turn
\header {title = "" }

\score {
  <<
    \relative c' {
      \key a \major
      \time 3/4

      \repeat volta 2 {
          e4\staccato r e\staccato   fis\staccato d\staccato b'\staccato a4. (fis8 e fis)
      }
      \alternative {
         { a8  (fis e d cis4) }
         { a8' (fis e d cis4) }
      }
    }
  >>   
}
