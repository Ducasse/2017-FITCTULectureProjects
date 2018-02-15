updating
activate
	gameObject ifNotNil: [ self subscribe ].
	active := true