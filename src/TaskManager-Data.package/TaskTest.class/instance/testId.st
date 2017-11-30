tests-accessing
testId
  | task id |
  id   := 1.
  task := Task new.
  self assert: task id equals: nil.
  task id: id.
  self assert: task id equals: id.