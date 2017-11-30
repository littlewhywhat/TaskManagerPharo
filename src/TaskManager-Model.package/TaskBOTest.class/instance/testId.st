tests-accessing
testId
  | task taskBO id |
  id   := 1.
  task := Task new.
  taskBO := TaskBO new wrap: task.
  self assert: taskBO id equals: nil.
  task id: id.
  self assert: taskBO id equals: id.