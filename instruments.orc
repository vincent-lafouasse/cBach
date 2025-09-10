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
	iNote = p4  // a midi style note or -1
	iAmp = p5

	if iNote < 0 then
		aSignal = 0
		outall(aSignal)
	else
		// ---------- Oscillator section ----------
		iFreq = cpsmidinn(iNote)
		iWaveTable = 10		// square
		aOscillator = vco2:a(iAmp, iFreq, iWaveTable)

		// ---------- Chorus section ----------
		iModulationAmplitude = 0.0001
		iChorusSpeed = 0.1
		iChorusInitialPhase = 2 * random(0, 3.14159)

		aLfo = poscil:a(iModulationAmplitude, iChorusSpeed, -1, iChorusInitialPhase)
		kModulatedFrequency = iFreq * (1 + aLfo)
		aModulatedOscillator = vco2:a(iAmp, kModulatedFrequency, iWaveTable)

		aOscillator += aModulatedOscillator
		aOscillator /= 2

		// ---------- Filter section ----------
		//iFilterA = 0.05
		//iFilterD = 0
		//iFilterS = 1
		//iFilterR = 0.05
		//aFilterEnv = madsr:k(iFilterA, iFilterD, iFilterS, iFilterR)

		iCutoff = 7000
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
		outall(aSignal)

		iReverbSendAmount = 1.0
		gaReverbSend += aSignal * iReverbSendAmount
	endif
endin

// reverb
instr Reverb
	iReverbAmount = ampdb:i(0)

	// stereo reverb
	kFeedbackLevel = 0.90	// reverb time
	kReverbCutoff = 9000
	aOutL,aOutR reverbsc gaReverbSend, gaReverbSend, kFeedbackLevel, kReverbCutoff

	// mono reverb
	iReverbTime = 8.0	// secs
	aReverb = iReverbAmount * giVolume * reverb:a(gaReverbSend, iReverbTime)

	// mix
	iStereoReverbAmount = 0.7
	aOutL = iStereoReverbAmount * aOutL + (1 - iStereoReverbAmount) * aReverb
	aOutR = iStereoReverbAmount * aOutR + (1 - iStereoReverbAmount) * aReverb

	outs(aOutL * iReverbAmount * giVolume, aOutR * iReverbAmount * giVolume)

	gaReverbSend  = 0
endin
