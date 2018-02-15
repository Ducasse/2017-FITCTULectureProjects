validation
validateEntity: anEntity withMessage: aMsg
	| persons prospects |
	msg := aMsg.
	persons := self personService selectPersonsByCompany: anEntity.
	persons isEmpty
		ifTrue: [ prospects := self prospectService selectProspectsByCompany: anEntity.
			prospects isEmpty
				ifTrue: [ ^ true ] ].
	^ false