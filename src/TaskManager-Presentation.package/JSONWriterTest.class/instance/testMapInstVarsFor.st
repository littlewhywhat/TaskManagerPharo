tests-convenience
testMapInstVarsFor
   | readContents |
  writer := JSONWriter new mapInstVarsFor: TaskVO.
  readContents := String streamContents: [ :stream | (writer on: stream) nextPut: taskVO ].
  self assert: readContents withSeparatorsCompacted equals: contentsVO.

  writer := JSONWriter new mapInstVarsFor: TaskBO.
  readContents := String streamContents: [ :stream | (writer on: stream) nextPut: taskBO ].
  self assert: readContents withSeparatorsCompacted equals: contentsBO.