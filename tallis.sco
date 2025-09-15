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

// alto
i "Organ"	0 1.5	$C4		$n
i .			+ 0.5	$D4		.

i .			+ 1		$E4		.
i .			+ 1.5	$F4		.
i .			+ 0.5	$F4		.
i .			+ 0.5	$E4		.
i .			+ 0.5	$D4		.

i .			+ 1		$F4		.
i .			+ 2		$F4		.

// tenor
i "Organ"	0 1.5	$A3		$n
i .			+ 0.5	$F3		.

i .			+ 1		$C4		.
i .			+ 1.5	$C4		.
i .			+ 0.5	$C4		.
i .			+ 0.5	$C4		.
i .			+ 0.5	$A3		.

i .			+ 1		$D4		.
i .			+ 2		$C4		.

// bass
i "Organ"	0 1.5	$F3		$n
i .			+ 0.5	$D3		.

i .			+ 1		$C3		.
i .			+ 1.5	$F3		.
i .			+ 0.5	$F3		.
i .			+ 0.5	$C3		.
i .			+ 0.5	$D3		.

i .			+ 1		$Bb2	.
i .			+ 3		$F3		.

i "Reverb" 0 40
i "Delay" 0 40

e
