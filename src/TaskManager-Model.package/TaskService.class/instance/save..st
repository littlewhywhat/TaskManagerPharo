adding
save: aTaskVO
	"Saves a task"
	
	| aTask |
	aTask := Task new
		id: aTaskVO id;
		description: aTaskVO description;
		name: aTaskVO name;
		date: aTaskVO date;
		completed: aTaskVO completed.
	repo save: aTask.
	
	^ TaskBO new wrap: aTask.

	