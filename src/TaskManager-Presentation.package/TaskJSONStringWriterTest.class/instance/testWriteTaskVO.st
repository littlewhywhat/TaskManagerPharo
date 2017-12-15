tests-writing
testWriteTaskVO
  self assert: (writer writeTaskVO: taskVO) withSeparatorsCompacted equals: contentsVO.
  