tests-convenience
testPutMapsToReadJSONin
  | readTask |
  TaskVO putMapsToReadJSONin: reader.
  reader on: contentsVO readStream.
  readTask := reader nextAs: TaskVO.
  self assert: readTask equals: taskVO.