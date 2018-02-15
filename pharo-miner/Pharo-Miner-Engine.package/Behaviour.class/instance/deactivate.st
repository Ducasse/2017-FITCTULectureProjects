updating
deactivate
	gameObject ifNotNil: [ self unsubscribe ].
	active := false