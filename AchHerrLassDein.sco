#include "diapason.sco" // notename definitions

#define None #-1#

// rough dynamics
#define muted #0#
#define pp #0.125#
#define p #0.25#
#define n #0.5#
#define f #0.75#
#define ff #1#

// set tempo
t 0 60 22 60 30 45

// soprano
i "Organ"	0 1		$Eb5	$n
i.			+ 1		$D5		.
i.			+ 1		$C5		.
i.			+ 1		$Bb4	.
i.			+ 0.5	$Ab4	.
i.			+ 0.5	$G4		.

i.			+ 1		$C5		.
i.			+ 1		$C5		.
i.			+ 2		$Bb4	.
i.			+ 0.5	$None	.
i.			+ 1		$Eb5	.

i.			+ 1		$D5		.
i.			+ 1		$C5		.
i.			+ 1		$Bb4	.
i.			+ 0.5	$Ab4	.
i.			+ 0.5	$G4		.

i.			+ 1		$C5		.
i.			+ 1		$C5		.
i.			+ 2.5	$Bb4	.
i.			+ 0.5	$None	.
i.			+ 1		$Bb4	.

i.			+ 1		$C5		.
i.			+ 1		$D5		.
i.			+ 0.5	$Eb5	.
i.			+ 0.5	$F5		.
i.			+ 1		$G5		.

i.			+ 1		$F5		.
i.			+ 2		$Eb5	.
i.			+ 1		$D5		.

i.			+ 3		$Eb5	.

// alto
i "Organ"	0 1		$Bb4	$n
i.			+ 1		$Bb4	.
i.			+ 1		$G4		.
i.			+ 1		$G4		.
i.			+ 0.5	$F4		.
i.			+ 0.5	$Eb4	.

i.			+ 1		$Eb4	.
i.			+ 1		$Ab4	.
i.			+ 2		$G4		.
i.			+ 0.5	$None	.
i.			+ 1		$G4		.

i.			+ 0.5	$G4		.
i.			+ 0.5	$F4		.
i.			+ 0.5	$Eb4	.
i.			+ 0.5	$F4		.
i.			+ 0.5	$G4		.
i.			+ 0.5	$F4		.
i.			+ 0.5	$Eb4	.
i.			+ 0.5	$D4		.

i.			+ 0.5	$Eb4	.
i.			+ 0.5	$F4		.
i.			+ 1		$F4		.
i.			+ 2.5	$G4		.
i.			+ 0.5	$None	.
i.			+ 1		$G4		.

i.			+ 0.5	$Ab4	.
i.			+ 0.5	$C5		.
i.			+ 0.5	$Bb4	.
i.			+ 0.5	$Ab4	.
i.			+ 0.5	$G4		.
i.			+ 0.5	$F4		.
i.			+ 1		$Eb4	.

i.			+ 2		$F4		.
i.			+ 1		$G4		.
i.			+ 1		$Ab4	.

i.			+ 3		$G4		.

// tenor
i "Organ"	0 1		$G4		$n
i.			+ 1		$F4		.
i.			+ 1		$Eb4	.
i.			+ 1		$D4		.
i.			+ 1		$Db4	.

i.			+ 0.5	$C4		.
i.			+ 0.5	$Bb3	.
i.			+ 0.5	$C4		.
i.			+ 0.5	$D4		.
i.			+ 2		$Eb4	.
i.			+ 0.5	$None	.
i.			+ 0.5	$G3		.
i.			+ 0.5	$Ab3	.

i.			+ 1		$Bb3	.
i.			+ 0.5	$C4		.
i.			+ 0.5	$D4		.
i.			+ 1		$Eb4	.
i.			+ 0.5	$Ab3	.
i.			+ 0.5	$Bb3	.

i.			+ 0.5	$C4		.
i.			+ 0.5	$Eb4	.
i.			+ 0.5	$D4		.
i.			+ 0.5	$C4		.
i.			+ 2.5	$D4		.
i.			+ 0.5	$None	.
i.			+ 1		$Eb4	.

i.			+ 0.5	$Eb4	.
i.			+ 0.5	$Ab4	.
i.			+ 0.5	$G4		.
i.			+ 0.5	$F4		.
i.			+ 0.5	$Eb4	.
i.			+ 0.5	$Bb3	.
i.			+ 1		$Db4	.

i.			+ 2		$C4		.
i.			+ 2		$Bb3	.

i.			+ 3		$Bb4	.

// bass
i "Organ"	0 1		$Eb3	$n
i.			+ 1		$Bb3	.
i.			+ 1		$C4		.
i.			+ 1		$G3		.
i.			+ 1		$Bb3	.

i.			+ 1		$Ab3	.
i.			+ 1		$Ab2	.
i.			+ 2		$Eb3	.
i.			+ 0.5	$None	.
i.			+ 1		$C3		.

i.			+ 1		$G3		.
i.			+ 1		$Ab3	.
i.			+ 0.5	$Eb3	.
i.			+ 0.5	$D3		.
i.			+ 0.5	$C3		.
i.			+ 0.5	$Bb2	.

i.			+ 1		$Ab2	.
i.			+ 1		$Ab3	.
i.			+ 2.5	$G3		.
i.			+ 0.5	$None	.
i.			+ 1		$Eb3	.

i.			+ 1		$Ab3	.
i.			+ 1		$Bb3	.
i.			+ 0.5	$C4		.
i.			+ 0.5	$D3		.
i.			+ 1		$Eb3	.

i.			+ 1		$Ab2	.
i.			+ 1		$A2		.
i.			+ 2		$Bb2	.

i.			+ 3		$Eb3	.

i "Reverb" 0 36
i "Delay" 0 36

e
