tests-writing
testWriteTaskBO
  self assert: (writer writeTaskBO: taskBO) withSeparatorsCompacted equals: contentsBO.
  