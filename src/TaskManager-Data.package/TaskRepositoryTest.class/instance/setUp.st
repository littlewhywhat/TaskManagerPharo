running
setUp
  aTaskWithIdZero := Task new description: 'task with id zero'.
  notEmptyRepository := (TaskRepository new) add: aTaskWithIdZero; yourself.