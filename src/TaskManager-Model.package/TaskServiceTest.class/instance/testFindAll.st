tests-finding
testFindAll
   | service tasks taskVO anotherTaskVO taskBO anotherTaskBO |
   
   taskVO := TaskVO new description: 'todo1'.
   anotherTaskVO := TaskVO new description: 'todo1'.

   service := TaskService new.

   taskBO := service add: taskVO.
   anotherTaskBO := service add: anotherTaskVO.

   tasks := OrderedCollection new.
   tasks add: taskBO; add: anotherTaskBO.
   self assertCollection: service findAll equals: tasks.   