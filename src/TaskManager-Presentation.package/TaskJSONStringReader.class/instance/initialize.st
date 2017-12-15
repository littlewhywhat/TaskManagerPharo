initialization
initialize
  reader := JSONReader new
              mapInstVarsFor: TaskBO;
              mapInstVarsFor: TaskVO;
              for: #ArrayOfTaskBOs
                 customDo: [ :mapping | mapping listOfElementSchema: TaskBO ];
              yourself.