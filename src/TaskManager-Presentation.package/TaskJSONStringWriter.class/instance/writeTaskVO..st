writing
writeTaskVO: taskVO
  ^ String streamContents: [ :stream | (writer on: stream) nextPut: taskVO. ].