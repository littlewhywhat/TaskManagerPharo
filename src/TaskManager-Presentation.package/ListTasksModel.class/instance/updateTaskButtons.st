private
updateTaskButtons

	listTasks selectedItem notNil
		ifTrue: [ buttonRemove enabled: true. buttonEdit enabled: true. buttonCompleted enabled: true.
			(listTasks selectedItem completed)
				ifTrue: [ buttonCompleted label: 'Renew' ]
				ifFalse: [ buttonCompleted label: 'Complete' ]. 
		]
		ifFalse: [ buttonRemove enabled: false. buttonEdit enabled: false. buttonCompleted enabled: false ]