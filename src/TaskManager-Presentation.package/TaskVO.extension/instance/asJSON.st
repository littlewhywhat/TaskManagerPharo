*TaskManager-Presentation
asJSON
  ^ String streamContents: [ :stream |
	    (NeoJSONWriter on: stream)
	      prettyPrint: true;
	      for: Date
	        customDo: [ :mapping | mapping encoder: #printString ];
			 mapInstVarsFor: self class;
	      nextPut: self.
	].
	