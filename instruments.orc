sr		= 44100		// sample rate
ksmps	= 32		// control period
nchnls	= 2			// mono
0dbfs 	= 1			// full scale

A4 = 415	// reference for cpsmidinn

// mixing console
giOrganVolume = ampdb:i(-6)

giMasterVolume = ampdb:i(-15)

// drier
// giReverbVolume = ampdb:i(-16)
// giDelayVolume = 0

// wetter
giReverbVolume = ampdb:i(0)
giDelayVolume = ampdb:i(-5)

giReverbSendAmount = 1.0
giDelaySendAmount = 1.0

// global buffers (aux send)
gaReverbSend init 0
gaDelaySend init 0

// modeled as a simple square wave subtractive synth
// i produced artefacts at some point but i'm kinda into it
instr Organ
	// parameters
	iNote = p4  // a midi note or -1, basically Option<0-127>
	iAmplitude = p5   // dynamics normalized to [0, 1]

	if iNote < 0 || iAmplitude <= 0 then
		aSignal = 0
		outall(aSignal)
	else
		// ---------- Oscillator section ----------
		iFreq = cpsmidinn(iNote)
		iWaveTable = 10		// square
		aOscillator = vco2:a(iAmplitude, iFreq, iWaveTable)

		// ---------- Unison/Detune ----------
		iSpread = 0.0001 // but just a tiny bit

		iDetunedSeed1 = random(-1, 1)
		iDetunedFreq1 = iFreq * (1 + iSpread * iDetunedSeed1)
		aDetunedOsc1 = vco2:a(iAmplitude, iDetunedFreq1, iWaveTable)

		iDetunedSeed2 = random(-1, 1)
		iDetunedFreq2 = iFreq * (1 + iSpread * iDetunedSeed2)
		aDetunedOsc2 = vco2:a(iAmplitude, iDetunedFreq1, iWaveTable)

		aOscillator += aDetunedOsc1 + aDetunedOsc2
		aOscillator /= 3

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
		aFiltered = moogladder:a(aFiltered, aCutoff, iResonance) // second pass for a steeper cut

		// ---------- Amp section ----------
		iAmplitudeAms = 140
		iAmplitudeDms = 100
		iAmplitudeS = 0.9
		iAmplitudeRms = 300
		aAmpEnv = madsr:a(iAmplitudeAms / 1000, iAmplitudeDms / 1000, iAmplitudeS, iAmplitudeRms / 1000)
		aSignal = aFiltered * aAmpEnv

		// ---------- Output section ----------
		aSignal *= giMasterVolume * giOrganVolume
		outall(aSignal)

		gaReverbSend += aSignal * giReverbSendAmount

		gaDelaySend += aSignal * giDelaySendAmount
	endif
endin

instr +Reverb
	// stereo reverb
	kFeedbackLevel = 0.90
	kReverbCutoff = 9000
	aOutL,aOutR reverbsc gaReverbSend, gaReverbSend, kFeedbackLevel, kReverbCutoff

	// mono reverb
	iReverbTime = 16.0	// secs
	aMonoReverb = reverb:a(gaReverbSend, iReverbTime)

	// mix
	iStereoReverbAmount = 0.8
	aOutL = iStereoReverbAmount * aOutL + (1 - iStereoReverbAmount) * aMonoReverb
	aOutR = iStereoReverbAmount * aOutR + (1 - iStereoReverbAmount) * aMonoReverb

	aOutL *= giReverbVolume * giMasterVolume;
	aOutR *= giReverbVolume * giMasterVolume;

	outs(aOutL, aOutR)

	gaReverbSend  = 0
endin

instr +Delay
	iDelayTime = 0.6  // secs
	iFeedback = 0.01

	aOut = delayr:a(iDelayTime)
	delayw(gaDelaySend + (aOut * iFeedback))

	outall(aOut * giDelayVolume * giMasterVolume)

	gaDelaySend  = 0
endin
