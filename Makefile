CSOUND_FILE = ./AchHerrLassDein.csd
WAV = output.wav

.PHONY: all
all: wav

.PHONY: wav
wav: build/$(WAV)

build/$(WAV): $(CSOUND_FILE)
	-mkdir -p build
	csound $(CSOUND_FILE) -o build/$(WAV)

.PHONY: clean
clean:
	-rm -rf build

.PHONY: re
re: clean wav

.PHONY: play
play: wav
	ffplay build/$(WAV)
