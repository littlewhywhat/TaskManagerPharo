tests-convenience
testPutMapsToWriteJSONin
   | readContents |
  TaskBO putMapsToWriteJSONin: writer.
  readContents := String streamContents: [ :stream | (writer on: stream) nextPut: taskBO ].
  self assert: readContents withSeparatorsCompacted equals: contentsBO.