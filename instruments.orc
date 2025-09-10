sr		= 44100		// sample rate
ksmps	= 32		// control period
nchnls	= 2			// mono
0dbfs 	= 1			// full scale

A4 = 415	// reference for cpsmidinn

giVolume = ampdb:i(-12)

gaReverbSend init 0

// an organ
//
// modelled as a simple square wave subtractive synth
instr Organ
	// parameters
	iNote = p4
	iAmp = p5

	// ---------- Oscillator section ----------
	iFreq = cpsmidinn(iNote)
	iWaveTable = 10		// square
	aOscillator = vco2:a(iAmp, iFreq, iWaveTable)

	// ---------- Filter section ----------
	//iFilterA = 0.05
	//iFilterD = 0
	//iFilterS = 1
	//iFilterR = 0.05
	//aFilterEnv = madsr:k(iFilterA, iFilterD, iFilterS, iFilterR)

	iCutoff = 3000
	iResonance = 0.01
	aFiltered = moogladder:a(aOscillator, iCutoff /* * aFilterEnv */, iResonance)

	// ---------- Amp section ----------
	iAmpA = 0.14
	iAmpD = 0.1
	iAmpS = 0.9
	iAmpR = 0.3
	aAmpEnv = madsr:a(iAmpA, iAmpD, iAmpS, iAmpR)
	aSignal = aFiltered * aAmpEnv

	// ---------- Output section ----------
	aSignal *= giVolume
	outs(aSignal, aSignal)

	gaReverbSend += aSignal
endin

// reverb
instr 99
	iReverbAmount = ampdb:i(-12)
	iReverbTime = 8.0	// secs
	aReverb = iReverbAmount * giVolume * reverb:a(gaReverbSend, iReverbTime)
	outs(aReverb, aReverb)

	gaReverbSend  = 0
endin
