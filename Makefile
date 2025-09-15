ORCHESTRA = instruments.orc

.PHONY: all
all: wav

.PHONY: wav
wav: AchHerrLassDein.wav tallis.wav

%.wav: %.sco $(ORCHESTRA)
	csound $(ORCHESTRA) $< -o $@

.PHONY: clean
clean:
	rm -rf $(WAV)

.PHONY: re
re: clean wav

PLAYING = tallis.wav
.PHONY: play
play: $(PLAYING)
	ffplay -autoexit -nodisp $(PLAYING)
