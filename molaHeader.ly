%% This createsa an acceptable header for MOLA compliant parts

bookTitleMarkup = \markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \left-align \box \bold { \fromproperty #'header:instrument }
    \fill-line { \fromproperty #'header:dedication }
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \larger \larger \bold
        \fromproperty #'header:title
      }
      \fill-line {
        \large \bold
        \fromproperty #'header:subtitle
      }
      \fill-line {
        \smaller \bold
        \fromproperty #'header:subsubtitle
      }
      \fill-line {
        \fromproperty #'header:poet
        \fromproperty #'header:composer
      }
      \fill-line {
        \fromproperty #'header:meter
        \fromproperty #'header:arranger
      }
    }
  }
}
scoreTitleMarkup = \markup { 
  \vspace #2
  \fontsize #2.5 \bold \fromproperty #'header:piece
}

