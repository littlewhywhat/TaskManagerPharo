writing
writeArrayOfTaskBOs: array
    ^ String streamContents: [ :stream | (writer on: stream) nextPut: array. ].