ORCHESTRA = instruments.orc
SCORE = AchHerrLassDein.sco
WAV = output.wav

.PHONY: all
all: wav

.PHONY: wav
wav: $(WAV)

$(WAV): $(ORCHESTRA) $(SCORE)
	csound $(ORCHESTRA) $(SCORE) -o $(WAV)

.PHONY: clean
clean:
	rm -rf $(WAV)

.PHONY: re
re: clean wav

.PHONY: play
play: wav
	ffplay -autoexit -nodisp $(WAV)
