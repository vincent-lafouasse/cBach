ORCHESTRA = instruments.orc

.PHONY: all
all: wav

.PHONY: wav
wav: bach.wav tallis.wav

%.wav: %.sco $(ORCHESTRA)
	csound $(ORCHESTRA) $< -o $@

.PHONY: clean
clean:
	rm -rf $(WAV)

.PHONY: re
re: clean wav

PLAYING = bach.wav
.PHONY: play
play: $(PLAYING)
	ffplay -autoexit -nodisp $(PLAYING)
