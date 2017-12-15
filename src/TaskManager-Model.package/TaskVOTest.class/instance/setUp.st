running
setUp
  | id description name date |
  writer := NeoJSONWriter new.
  reader := NeoJSONReader new.
  name := 'task 1'.
  description := 'difficult task'.
  date := Date today.
  id := 8.
  taskVO := TaskVO new id: id; name: name; description: description; date: date.
  contentsVO := '{ "description" : "', description,'", "id" : ', id asString, ', "name" : "', name ,'", "date" : "', date printString, '" }'.