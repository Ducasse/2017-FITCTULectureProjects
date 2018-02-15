accessing
announcer
	announcer ifNil: [ announcer := Announcer new ].
	^ announcer