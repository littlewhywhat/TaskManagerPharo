tests-initialization
testInitialize
  | service |
  service := TaskService new.
  self assertCollection: service findAll equals: OrderedCollection new.