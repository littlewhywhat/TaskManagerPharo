tests-initialization
testInitialize
	| task |
	task := Task new.
	self assert: task what equals: 'nothing'.