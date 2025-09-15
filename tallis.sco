#include "diapason.sco" // notename definitions

#define None #-1#

// rough dynamics
#define muted #0#
#define pp #0.125#
#define p #0.25#
#define n #0.5#
#define f #0.75#
#define ff #1#

// q = 50
t 0 50

// soprano
i "Organ"	0 1.5	$F4		$n
i .			+ 0.5	$F4		.

i .			+ 1		$G4		.
i .			+ 1.5	$A4		.
i .			+ 0.5	$A4		.
i .			+ 0.5	$G4		.
i .			+ 0.5	$F4		.

i .			+ 1		$Bb4	.
i .			+ 1		$A4		.

i "Reverb" 0 40
i "Delay" 0 40

e
