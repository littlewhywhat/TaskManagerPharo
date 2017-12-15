removing
remove: aTaskVO

	| aTask |
	aTask := Task new
		id: aTaskVO id;
		description: aTaskVO description;
		name: aTaskVO name;
		date: aTaskVO date.
	repo remove: aTask.