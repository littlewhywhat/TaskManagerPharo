tests-adding
testAdd
  | repo task |
  repo := TaskRepository new.
  task := (repo add: Task new).
  self assert: task id equals: 0.