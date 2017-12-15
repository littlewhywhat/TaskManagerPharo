writing
writeTaskBO: taskBO
  ^ String streamContents: [ :stream | (writer on: stream) nextPut: taskBO. ].