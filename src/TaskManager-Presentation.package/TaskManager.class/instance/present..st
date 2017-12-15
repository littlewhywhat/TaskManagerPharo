accessing
present: aPresentId
  present := (presents at: aPresentId ifAbsent: (presents at: #spec)) new.