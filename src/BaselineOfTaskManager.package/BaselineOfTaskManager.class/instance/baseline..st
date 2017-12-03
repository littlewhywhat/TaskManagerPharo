baseline
baseline: spec
	"standard baseline method to describe dependencies of TaskManager package"
	<baseline>
	
  spec for: #common do: [
    spec package: 'TaskManager-Data'.
    spec package: 'TaskManager-Model'.
    spec package: 'TaskManager-Presentation'.
    spec group: 'default' with: #('TaskManager-Data' 'TaskManager-Model' 'TaskManager-Presentation')].