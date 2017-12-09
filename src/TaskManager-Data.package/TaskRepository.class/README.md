I am a repository with tasks that provides API to create, edit, delete or search tasks in me.

Example:
| repo task sameTask |
repo := TaskRepository new.
task := Task new.
task description: 'Wash clothes'.
"task now has an id"
task := repo add: task.
sameTask := repo findById: task.
task id.
sameTask id.