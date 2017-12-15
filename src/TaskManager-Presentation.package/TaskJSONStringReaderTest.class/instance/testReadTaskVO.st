tests-reading
testReadTaskVO
  self assert: (reader readTaskVO: contentsVO ) equals: taskVO.
  