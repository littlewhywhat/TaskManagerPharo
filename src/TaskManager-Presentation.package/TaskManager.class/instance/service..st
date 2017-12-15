accessing
service: aServiceId
  service := (services at: aServiceId ifAbsent: (services at: #local)) new.