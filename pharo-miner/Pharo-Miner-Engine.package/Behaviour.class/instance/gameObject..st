accessing
gameObject: aGameObject
	active & gameObject isNotNil ifTrue: [ self unsubscribe ].
	gameObject := aGameObject.
	active & gameObject isNotNil ifTrue: [ self subscribe ]