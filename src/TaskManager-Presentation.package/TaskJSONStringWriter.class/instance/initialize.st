initialization
initialize
  writer := JSONWriter new.
  writer mapInstVarsFor: TaskVO;
            mapInstVarsFor: TaskBO.