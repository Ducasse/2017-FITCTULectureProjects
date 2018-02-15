binding
rebind
	persons := companyFilter isNotNil
		ifTrue: [ self getAllPersonsWithFilter: self companyFilter ]
		ifFalse: [ self getAllPersons ]