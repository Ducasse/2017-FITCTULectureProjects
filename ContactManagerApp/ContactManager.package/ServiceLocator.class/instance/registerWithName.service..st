registration
registerWithName: aName service: aServiceInit
	| notRegistered |
	notRegistered := (self serviceDict includesKey: aName) not.
	notRegistered
		ifTrue: [ self serviceDict at: aName put: aServiceInit ].
	^ notRegistered