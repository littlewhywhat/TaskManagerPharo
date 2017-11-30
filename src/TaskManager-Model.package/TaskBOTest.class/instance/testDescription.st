tests-accessing
testDescription
  | task todo |

  todo := 'todo'.
  task := Task new description: todo.
  self assert: (
    TaskBO 
      new wrap:
        (Task new description: todo)
  ) description equals: todo. 