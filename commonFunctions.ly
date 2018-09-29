%% Functions I use a lot that I've designed.

attacca = 
{ 
  \once \override Score.RehearsalMark #'break-visibility = 
  #begin-of-line-invisible 
  \once \override Score.RehearsalMark #'direction = #UP 
  \once \override Score.RehearsalMark #'font-size = 1 
  \once \override Score.RehearsalMark #'self-alignment-X = #right 
  \mark \markup{\italic attacca} 
} 

tacetSetup = 
{
  \tag #'treble { \clef "treble" }
  \tag #'alto { \clef "alto" }
  \tag #'tenor { \clef "tenor" }
  \tag #'bass { \clef "bass" }
}

vocalLine = {
  \phrasingSlurUp
  \slurUp
  \dynamicUp
}

#(define (penderecki-tremolo grob) 
   (grob-interpret-markup grob 
     (markup #:vcenter #:smuflglyph "pendereckiTremolo"))) 


alNiente = { \once \override Hairpin.circled-tip = ##t }

pizz = \markup { \italic "pizz." } 

arco = \markup { \italic "arco" } 

legg = \markup { \italic "leggiero" }

conSord = \markup { \italic "con sord." }
viaSord = \markup { \italic "via sord." }
senzaSord = \markup { \italic "senza sord." }

expressive = \markup { \italic "expressive" }

xNote = \once \override NoteHead.style = #'cross

senzaVib = \markup { \italic "senza vibrato" }

moltoExp = \markup { \italic "molto expressivo" }


m = #( 
   make-dynamic-script ( 
      markup #:line ( 
      #:dynamic "m" 
      ) 
  ) 
) 

rrTrax = { \once \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.curved" } \breathe }
