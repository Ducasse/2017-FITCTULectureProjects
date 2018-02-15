accessing
persons
	^ persons
		ifNil: [ persons := self companyFilter isNotNil
				ifTrue: [ self getAllPersonsWithFilter: self companyFilter ]
				ifFalse: [ self getAllPersons ] ]