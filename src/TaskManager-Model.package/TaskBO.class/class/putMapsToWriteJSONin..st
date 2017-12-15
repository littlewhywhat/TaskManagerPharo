convenience
putMapsToWriteJSONin: jsonWriter
    ^ jsonWriter
	      prettyPrint: true;
	      for: Date 
	        customDo: [ :mapping | mapping encoder: #printString ];
	      mapInstVarsFor: Task;
	      mapInstVarsFor: self; yourself..
