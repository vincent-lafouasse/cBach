noteNames = [
    ["C", 0],
    ["Cs", 1],
    ["Db", 1],
    ["D", 2],
    ["Ds", 3],
    ["Eb", 3],
    ["E", 4],
    ["F", 5],
    ["Fs", 6],
    ["Gb", 6],
    ["G", 7],
    ["Gs", 8],
    ["Ab", 8],
    ["A", 9],
    ["As", 10],
    ["Bb", 10],
    ["B", 11],
]


def printOctave(octave):
    # c4 is 60
    octaveStart = 60 + 12 * (octave - 4)

    print("// Octave {}".format(octave))
    for [name, offset] in noteNames:
        print("#define {}{}\t#{}#".format(name, octave, octaveStart + offset))


if __name__ == "__main__":
    for octave in range(2, 6):
        printOctave(octave)
