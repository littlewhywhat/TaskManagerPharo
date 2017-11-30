tests-initialization
testInitialize
	| task |
	task := TaskVO new.
	self assert: task description equals: 'nothing'.