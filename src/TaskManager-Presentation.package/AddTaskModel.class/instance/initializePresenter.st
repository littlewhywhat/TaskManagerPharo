initialization
initializePresenter
	"initialize presenter"

	buttonAdd action: [
		((textInputDescription text) notNil) ifTrue: [  
			service save: (TaskVO new description: (textInputDescription text)).
		].
		self window delete.
	].