tests-convenience
testPutMapsToWriteJSONin
   | readContents |
  TaskVO putMapsToWriteJSONin: writer.
  readContents := String streamContents: [ :stream | (writer on: stream) nextPut: taskVO ].
  self assert: readContents withSeparatorsCompacted equals: contentsVO.
  