convenience
putMapsToWriteJSONin: jsonwriter
  ^ jsonwriter
	      prettyPrint: true;
	      for: Date
	        customDo: [ :mapping | mapping encoder: #printString ];
			 mapInstVarsFor: self;
	      yourself.