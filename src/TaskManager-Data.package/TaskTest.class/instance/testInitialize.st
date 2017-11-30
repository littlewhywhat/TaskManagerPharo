tests-initialization
testInitialize
	| task |
	task := Task new.
	self assert: task description equals: 'nothing'.