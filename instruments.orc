sr		= 44100		// sample rate
ksmps	= 32		// control period
nchnls	= 2			// mono
0dbfs 	= 1			// full scale

A4 = 415	// reference for cpsmidinn

giVolume = ampdb:i(-30)

gaReverbSend init 0
gaDelaySend init 0

// modelled as a simple square wave subtractive synth
// i produced artefacts at some point but i'm kinda into it
instr Organ
	// parameters
	iNote = p4  // a midi style note or -1
	iAmp = p5

	if iNote < 0 || iAmp <= 0 then
		aSignal = 0
		outall(aSignal)
	else
		// ---------- Oscillator section ----------
		iFreq = cpsmidinn(iNote)
		iWaveTable = 10		// square
		aOscillator = vco2:a(iAmp, iFreq, iWaveTable)

		// ---------- Detune section ----------
		iModulationAmplitude = 0.0001
		iModulationSpeed = 0.1
		iInitialPhase = random(0, 1)
		iLfoWavetable = -1 // sine

		aLfo = poscil:a(iModulationAmplitude, iModulationSpeed, iLfoWavetable, iInitialPhase)
		kModulatedFrequency = iFreq * (1 + aLfo)
		aDetunedOscillator = vco2:a(iAmp, kModulatedFrequency, iWaveTable)

		aOscillator += aDetunedOscillator
		aOscillator /= 2

		// ---------- Filter section ----------
		//iFilterA = 0.05
		//iFilterD = 0
		//iFilterS = 1
		//iFilterR = 0.05
		//aFilterEnv = madsr:k(iFilterA, iFilterD, iFilterS, iFilterR)
		aFilterEnv = 1 // no envelope

		iCutoff = 7000
		aCutoff = iCutoff * aFilterEnv
		iResonance = 0.01
		aFiltered = moogladder:a(aOscillator, aCutoff, iResonance)
		aFiltered = moogladder:a(aFiltered, aCutoff, iResonance)

		// ---------- Amp section ----------
		iAmpAms = 140
		iAmpDms = 100
		iAmpS = 0.9
		iAmpRms = 300
		aAmpEnv = madsr:a(iAmpAms / 1000, iAmpDms / 1000, iAmpS, iAmpRms / 1000)
		aSignal = aFiltered * aAmpEnv

		// ---------- Output section ----------
		aSignal *= giVolume
		outall(aSignal)

		iReverbSendAmount = 1.0
		gaReverbSend += aSignal * iReverbSendAmount

		iDelaySendAmount = 1.0
		gaDelaySend += aSignal * iDelaySendAmount
	endif
endin

instr Reverb
	iReverbVolume = ampdb:i(-3)

	// stereo reverb
	kFeedbackLevel = 0.90	// reverb time
	kReverbCutoff = 9000
	aOutL,aOutR reverbsc gaReverbSend, gaReverbSend, kFeedbackLevel, kReverbCutoff

	// mono reverb
	iReverbTime = 16.0	// secs
	aMonoReverb = reverb:a(gaReverbSend, iReverbTime)

	// mix
	iStereoReverbAmount = 0.8
	aOutL = iStereoReverbAmount * aOutL + (1 - iStereoReverbAmount) * aMonoReverb
	aOutR = iStereoReverbAmount * aOutR + (1 - iStereoReverbAmount) * aMonoReverb

	iEffectiveVolume = iReverbVolume * giVolume;
	outs(aOutL * iEffectiveVolume, aOutR * iEffectiveVolume)

	gaReverbSend  = 0
endin

instr Delay
	iDelayVolume = ampdb:i(-10)
	iDelayTime = 0.6  // secs
	iFeedback = 0.01

	aOut = delayr:a(iDelayTime)
	delayw(gaDelaySend + (aOut * iFeedback))

	outall(aOut * iDelayVolume * giVolume)

	gaDelaySend  = 0
endin
