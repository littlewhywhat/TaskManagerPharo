baseline
baseline: spec
	"standard baseline method to describe dependencies of TaskManager package"
	<baseline>
	
  spec for: #common do: [
	spec project: 'NeoJSON'
			   with: [ spec
						className: #ConfigurationOfNeoJSON;
						versionString: #stable;
						repository: 'http://mc.stfx.eu/Neo' ].
    spec package: 'TaskManager-Data'.
    spec package: 'TaskManager-Model'.
    spec package: 'TaskManager-Presentation' with: [ spec requires: #( 'NeoJSON' ) ].
    spec group: 'default' with: #('TaskManager-Data' 'TaskManager-Model' 'TaskManager-Presentation')].