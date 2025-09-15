ORCHESTRA = instruments.orc

.PHONY: all
all: wav

.PHONY: wav
wav: AchHerrLassDein.wav undertale.wav

%.wav: %.sco $(ORCHESTRA)
	csound $(ORCHESTRA) $< -o $@

.PHONY: clean
clean:
	rm -rf $(WAV)

.PHONY: re
re: clean wav

.PHONY: play
play: wav
	ffplay -autoexit -nodisp undertale.wav
