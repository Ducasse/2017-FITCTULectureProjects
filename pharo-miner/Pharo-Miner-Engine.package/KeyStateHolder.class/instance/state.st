accessing
state
	state ifNil: [ state := KeyState none ].
	^state