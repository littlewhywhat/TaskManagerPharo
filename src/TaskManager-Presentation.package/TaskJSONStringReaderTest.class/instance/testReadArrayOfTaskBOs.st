tests-reading
testReadArrayOfTaskBOs
    self assert: (reader readArrayOfTaskBOs: contentsArrayBO  ) equals: tasksBO.
    self testReadTaskBO.
    self testReadTaskVO.