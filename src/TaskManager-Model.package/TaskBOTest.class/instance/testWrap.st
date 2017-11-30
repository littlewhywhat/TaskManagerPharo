tests-initialization
testWrap
  | taskBO task |
  task   := Task new id: 0; description: 'todo'.
  taskBO := TaskBO new wrap: task.
  
  self assert: taskBO task equals: task.
  self assert: taskBO id equals: task id.
  self assert: taskBO description equals: task description.
  