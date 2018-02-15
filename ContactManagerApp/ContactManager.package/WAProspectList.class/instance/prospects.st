accessing
prospects
	^ prospects
		ifNil: [ prospects := self companyFilter isNotNil
				ifTrue: [ self getAllProspectsWithFilter: self companyFilter ]
				ifFalse: [ self getAllProspects ] ]