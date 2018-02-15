adding
addProperty
	| builder propertyname |
	builder := UITheme new builder.
	propertyname := builder textEntry: 'Enter the property name' title: 'Add property' entryText: nil.
	(database byID: (mapping at: selectionIndex)) addProperty: propertyname asSymbol.
	(database byID: (mapping at: selectionIndex)) class compileProperty: propertyname asSymbol.
	self changed: #contacts.