running
setUp
  | task id description name date |
  reader := TaskJSONStringReader new.
  name := 'task 1'.
  description := 'difficult task'.
  date := Date today.
  id := 8.
  task := Task new id: id; name: name; description: description; date: date.
  taskVO := TaskVO new id: id; name: name; description: description; date: date.
  taskBO := TaskBO new wrap: task.
  contentsVO := '{ "description" : "', description,'", "id" : ', id asString, ', "name" : "', name ,'", "date" : "', date printString, '" }'.
  contentsBO := '{ "task" : { "name" : "', name , '", "date" : "', date printString, '", "description" : "', description,'", "id" : ', id asString, ' } }'.
  contentsArrayBO := '[ ' , contentsBO , ',', contentsBO, ']'.
  tasksBO := { taskBO . taskBO }.