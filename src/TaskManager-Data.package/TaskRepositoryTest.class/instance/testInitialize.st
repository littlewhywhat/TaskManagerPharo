tests-initialization
testInitialize
   | repo task |
	task := Task new.
	repo := TaskRepository new.
	task := (repo findById: task).
	self assert: task equals: nil.