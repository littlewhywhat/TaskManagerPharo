instance creation
current
  ^uniqueInstance ifNil: [ uniqueInstance := self new. ]