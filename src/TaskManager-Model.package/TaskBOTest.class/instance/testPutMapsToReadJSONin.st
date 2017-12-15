tests-convenience
testPutMapsToReadJSONin
  | readTask |
  TaskBO putMapsToReadJSONin: reader.
  reader on: contentsBO readStream.
  readTask := reader nextAs: TaskBO.
  self assert: readTask equals: taskBO.