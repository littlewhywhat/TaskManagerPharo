reading
readArrayOfTaskBOs: contents
  ^ (reader on: contents readStream) 
   nextAs: #ArrayOfTaskBOs.