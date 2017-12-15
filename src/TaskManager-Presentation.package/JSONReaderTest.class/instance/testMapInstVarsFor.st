tests-convenience
testMapInstVarsFor
  | readTask |
  ( reader mapInstVarsFor: TaskBO) on: contentsBO readStream.
  readTask := reader nextAs: TaskBO.
  self assert: readTask equals: taskBO.

  ( reader mapInstVarsFor: TaskVO) on: contentsVO readStream.
  readTask := reader nextAs: TaskVO.
  self assert: readTask equals: taskVO.