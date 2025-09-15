#include "diapason.sco" // notename definitions

#define None #-1#

// rough dynamics
#define muted #0#
#define pp #0.125#
#define p #0.25#
#define n #0.5#
#define f #0.75#
#define ff #1#

// q = 115
t 0 115

// lead
i "Organ"	0 0.5	$Gb5	$n
i .			+ 0.5	$F5		.
i .			+ 0.5	$Eb5	.
i .			+ 0.5	$Db5	.
i .			+ 0.5	$Eb5	.
i .			+ 0.5	$Bb4	.

i .			+ 0.5	$C5		.
i .			+ 0.5	$None	.
i .			+ 0.5	$Ab4	.
i .			+ 0.5	$None	.
i .			+ 0.5	$Eb5	.
i .			+ 0.5	$F5		.

i .			+ 0.5	$Gb5	.
i .			+ 0.5	$None	.
i .			+ 0.5	$Ab5	.
i .			+ 0.5	$None	.
i .			+ 0.5	$Db6	.
i .			+ 0.5	$None	.

i .			+ 3		$Bb5	.

// counter melody
i "Organ"	0 0.5	$None	$n
i .			+ 0.5	$Eb3	.
i .			+ 0.5	$Gb3	.
i .			+ 0.5	$Ab3	.
i .			+ 0.5	$Bb3	.
i .			+ 0.5	$Gb3	.

i .			+ 0.5	$None	.
i .			+ 0.5	$Ab3	.
i .			+ 0.5	$C4		.
i .			+ 0.5	$Eb4	.
i .			+ 0.5	$C4		.
i .			+ 0.5	$Ab3	.

i .			+ 0.5	$None	.
i .			+ 0.5	$Eb3	.
i .			+ 0.5	$F3		.
i .			+ 0.5	$Gb3	.
i .			+ 0.5	$Ab3	.
i .			+ 0.5	$F3		.

i .			+ 0.5	$Gb3	.
i .			+ 0.5	$F3		.
i .			+ 0.5	$Eb3	.
i .			+ 0.5	$Db3	.
i .			+ 0.5	$Eb3	.
i .			+ 0.5	$Bb2	.

// bass
i "Organ"	0 2		$Eb2	$n
i .			+ 1		$Gb2	.

i .			+ 2		$Ab2	.
i .			+ 1		$Ab1	.

i .			+ 1		$Cb2	.
i .			+ 0.5	$Db2	.
i .			+ 0.5	$None	.
i .			+ 0.5	$F2		.
i .			+ 0.5	$None	.

i .			+ 2		$Eb2	.
i .			+ 1		$Bb1	.

i "Reverb" 0 40
i "Delay" 0 40

e
