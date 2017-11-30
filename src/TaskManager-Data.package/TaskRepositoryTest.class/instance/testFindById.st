tests-searching
testFindById
  | repo task anotherTask |
  repo := TaskRepository new.
  task        := (repo add: Task new).
  self assert: task id equals: 0.
  anotherTask := (repo findById: task).
  self assert: anotherTask isNotNil equals: true.
  self assert: task = anotherTask equals: true.