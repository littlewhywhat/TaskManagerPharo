tests-*TaskManager-Presentation
testAsJSON
  | taskVO id name description date |
  name := 'Task 1'.
  description := 'Difficult task'.
  id := 1.
  date := Date current.
  taskVO := (TaskVO new) id: 1; name: name; description: description; date: date; yourself.
  self assert: taskVO asJSON withSeparatorsCompacted 
       equals: '{ "description" : "' , description ,
               '", "id" : ' , id asString ,
               ', "name" : "' , name , 
               '", "date" : "' , date printString ,
               '" }'.
