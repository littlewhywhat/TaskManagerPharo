tests-writing
testWriteArrayOfTaskBOs
    self assert: (writer writeArrayOfTaskBOs: tasksBO) withSeparatorsCompacted equals: contentsArrayBO.
    self testWriteTaskBO.
    self testWriteTaskVO.