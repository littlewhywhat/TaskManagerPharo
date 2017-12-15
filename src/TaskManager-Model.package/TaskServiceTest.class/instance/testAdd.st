tests-adding
testAdd
  | aService aTaskVO aTaskBO aToDo|
  aToDo    := 'todo'.
  aService := TaskService new.
  aTaskVO := TaskVO new description: aToDo.
  aTaskBO := aService add: aTaskVO.
  self assert: aTaskBO description equals: aToDo. 
  