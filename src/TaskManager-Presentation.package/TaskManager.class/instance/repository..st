accessing
repository: aRepositoryId
   repository := (repositories at: aRepositoryId ifAbsent: (repositories at: #temporary)) new.