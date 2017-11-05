tests-accessing
testWhat
	| task what |
	what := 'Cook breakfast'.
	task := Task new.
   task what: what.
	self assert: task what equals: what.
	