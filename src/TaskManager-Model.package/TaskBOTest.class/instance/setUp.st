running
setUp
  | task id description name date |
  name := 'task 1'.
  description := 'difficult task'.
  date := Date today.
  id := 8.
  task := Task new id: id; name: name; description: description; date: date.
  taskBO := TaskBO new wrap: task.
  reader := NeoJSONReader new.
  writer := NeoJSONWriter new.
  contentsBO := '{ "task" : { "name" : "', name , '", "date" : "', date printString, '", "description" : "', description,'", "id" : ', id asString, ' } }'.