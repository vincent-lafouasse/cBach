a4 = 69

def cNote(octave):
    c4 = a4 - 9
    return c4 + 12 * (octave - 4)

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
    print("// Octave {}".format(octave))
    octaveStart = cNote(octave)

    for [name, offset] in noteNames:
        print("#define {}{}\t#{}#".format(name, octave, octaveStart + offset))

for octave in range(2, 6):
    printOctave(octave)
