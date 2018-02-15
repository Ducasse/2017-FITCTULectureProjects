initialization
initialize
	database := ContactDatabaseSingleton getInstance.
	mapping ifNil: [ mapping := OrderedCollection new ].
	selectionIndex := 0.