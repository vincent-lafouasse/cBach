ORCHESTRA = instruments.orc

SCORES = bach.sco tallis.sco
WAV = $(SCORES:.sco=.wav)
MP3 = $(SCORES:.sco=.mp3)

.PHONY: all
all: wav

.PHONY: wav
wav: $(WAV)

.PHONY: mp3
mp3: $(MP3)

%.wav: %.sco $(ORCHESTRA)
	csound $(ORCHESTRA) $< -o $@

%.mp3: %.sco $(ORCHESTRA)
	csound $(ORCHESTRA) $< -o $@

.PHONY: clean
clean:
	rm -rf $(WAV)
	rm -rf $(MP3)

.PHONY: re
re: clean wav

PLAYING = bach.wav
.PHONY: play
play: $(PLAYING)
	ffplay -autoexit -nodisp $(PLAYING)
