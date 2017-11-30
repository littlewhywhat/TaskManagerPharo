I am  a service to manage tasks.

Example:
  | service tasks taskVO anotherTaskVO taskBO anotherTaskBO |
   
   taskVO := TaskVO new description: 'todo1'.
   anotherTaskVO := TaskVO new description: 'todo1'.

   service := TaskService new.

   taskBO := service save: taskVO.
   anotherTaskBO := service save: anotherTaskVO.

   tasks := Bag new.
   tasks add: taskBO; add: anotherTaskBO.
   self assertCollection: service findAll equals: tasks.