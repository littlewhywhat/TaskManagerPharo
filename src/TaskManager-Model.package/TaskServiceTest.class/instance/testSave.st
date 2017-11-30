tests-adding
testSave
  | aService aTaskVO aTaskBO aToDo|
  aToDo    := 'todo'.
  aService := TaskService new.
  aTaskVO := TaskVO new description: aToDo.
  aTaskBO := aService save: aTaskVO.
  self assert: aTaskBO description equals: aToDo. 
  