tests-reading
testReadTaskBO
  self assert: (reader readTaskBO: contentsBO ) equals: taskBO.
  