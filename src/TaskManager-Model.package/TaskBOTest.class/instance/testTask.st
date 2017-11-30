tests-accessing
testTask
  | taskBO task |
  task   := Task new description: 'todo'.
  taskBO := TaskBO new wrap: task.

  self assert: taskBO description equals: task description.
  self assert: taskBO id equals: task id.