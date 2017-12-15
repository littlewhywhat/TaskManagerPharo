accessing
taskBO: aTaskBO

	taskBO := aTaskBO.
	aTaskBO id notNil
	ifTrue: [self buttonAdd: 'Update Task'].
	self updateWidgets.