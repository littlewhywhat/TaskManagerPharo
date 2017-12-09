private
removeTask: aTaskBO
	| aTaskVO |
	
	aTaskVO := TaskVO new
	  id: aTaskBO id;
	  name: aTaskBO name;
	  description: aTaskBO description.
	service remove: aTaskVO.
	
	listTasks items: service findAll.
	listTasks refreshListItems.
	textInputDescription text: nil.
	listTasks resetSelection