comparing
= aTask
	"Answer whether another task is the same as this task."

	(id = (aTask id)) 
		ifFalse:
			[ ^ false ]
		ifTrue: 
		[ 
			(self description = aTask description)
				ifFalse: 
					[ ^ false ]
				ifTrue:
				   [ ^ true ]		
		]
	
	 