tests-initialization
testInitialize
	| task |
	task := Task new.
	self assert: task description equals: ''.
	self assert: task name equals: ''.