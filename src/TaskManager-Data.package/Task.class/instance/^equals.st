comparing
= aTask
	"Answer whether another task is the same as this task."
	
	((id = aTask id)
		and: ((name = aTask name) 
			and: ((description = aTask description )
				and: (date = aTask date))))
					ifTrue: [ ^ true ]
					ifFalse: [ ^ false ]