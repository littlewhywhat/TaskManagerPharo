adding
add: aTaskVO
	"Saves a task"
	
	| aTask |
	aTask := Task new 
		description: aTaskVO description;
		name: aTaskVO name;
		date: aTaskVO date;
		completed: false.
	repo add: aTask.
	
	^ TaskBO new wrap: aTask.

	