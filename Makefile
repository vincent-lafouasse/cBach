ORCHESTRA = ./instruments.orc
SCORE = ./AchHerrLassDein.sco
WAV = output.wav

.PHONY: all
all: wav

.PHONY: wav
wav: build/$(WAV)

build/$(WAV): $(ORCHESTRA) $(SCORE)
	-mkdir -p build
	csound $(ORCHESTRA) $(SCORE) -o build/$(WAV)

.PHONY: clean
clean:
	-rm -rf build

.PHONY: re
re: clean wav

.PHONY: play
play: wav
	ffplay build/$(WAV)
