configuring
configure: aConfig
  | aConfigDict |
  aConfigDict := aConfig asDictionary.
  self current service: (aConfigDict at: #service ifAbsent: nil).
  self current repository: (aConfigDict at: #repository ifAbsent: nil).
  self current present: (aConfigDict at: #present ifAbsent: nil).
   