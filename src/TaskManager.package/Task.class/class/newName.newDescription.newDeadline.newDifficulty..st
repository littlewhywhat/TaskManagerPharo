initialization
newName: aName newDescription: aDescription newDeadline: aDeadline newDifficulty: aDifficulty
	"Create a new task object with specified parameters"
	
    ^ self new name: aName; description: aDescription; deadline: aDeadline; difficulty: aDifficulty.