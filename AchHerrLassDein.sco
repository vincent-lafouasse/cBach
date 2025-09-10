// Octave 2
#define C2	#36#
#define Cs2	#37#
#define Db2	#37#
#define D2	#38#
#define Ds2	#39#
#define Eb2	#39#
#define E2	#40#
#define F2	#41#
#define Fs2	#42#
#define Gb2	#42#
#define G2	#43#
#define Gs2	#44#
#define Ab2	#44#
#define A2	#45#
#define As2	#46#
#define Bb2	#46#
#define B2	#47#
// Octave 3
#define C3	#48#
#define Cs3	#49#
#define Db3	#49#
#define D3	#50#
#define Ds3	#51#
#define Eb3	#51#
#define E3	#52#
#define F3	#53#
#define Fs3	#54#
#define Gb3	#54#
#define G3	#55#
#define Gs3	#56#
#define Ab3	#56#
#define A3	#57#
#define As3	#58#
#define Bb3	#58#
#define B3	#59#
// Octave 4
#define C4	#60#
#define Cs4	#61#
#define Db4	#61#
#define D4	#62#
#define Ds4	#63#
#define Eb4	#63#
#define E4	#64#
#define F4	#65#
#define Fs4	#66#
#define Gb4	#66#
#define G4	#67#
#define Gs4	#68#
#define Ab4	#68#
#define A4	#69#
#define As4	#70#
#define Bb4	#70#
#define B4	#71#
// Octave 5
#define C5	#72#
#define Cs5	#73#
#define Db5	#73#
#define D5	#74#
#define Ds5	#75#
#define Eb5	#75#
#define E5	#76#
#define F5	#77#
#define Fs5	#78#
#define Gb5	#78#
#define G5	#79#
#define Gs5	#80#
#define Ab5	#80#
#define A5	#81#
#define As5	#82#
#define Bb5	#82#
#define B5	#83#

#define None #-1#

// rough dynamics
#define muted #0#
#define pp #0.125#
#define p #0.25#
#define n #0.5#
#define f #0.75#
#define ff #1#

// soprano

i "Organ"	0 1		$Eb5	$n
i.			+ 1		$D5		.
i.			+ 1		$C5		.
i.			+ 1		$Bb4	.
i.			+ 0.5	$Ab4	.
i.			+ 0.5	$G4		.

i.			+ 1		$C5		.
i.			+ 1		$C5		.
i.			+ 2.5	$Bb4	.
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

i.			+ 4		$Eb5	.

// alto

i "Organ"	0 1		$Bb4	$n
i.			+ 1		$Bb4	.
i.			+ 1		$G4		.
i.			+ 1		$G4		.
i.			+ 0.5	$F4		.
i.			+ 0.5	$Eb4	.

i.			+ 1		$Eb4	.
i.			+ 1		$Ab4	.
i.			+ 2.5	$G4		.
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

i.			+ 4		$G4		.

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
i.			+ 2.5	$Eb4	.
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

i.			+ 4		$Bb4	.

// bass

i "Organ"	0 1		$Eb3	$n
i.			+ 1		$Bb3	.
i.			+ 1		$C4		.
i.			+ 1		$G3		.
i.			+ 1		$Bb3	.

i.			+ 1		$Ab3	.
i.			+ 1		$Ab2	.
i.			+ 2.5	$Eb3	.
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

i.			+ 4		$Eb3	.

// reverb
i99 0 30

e
