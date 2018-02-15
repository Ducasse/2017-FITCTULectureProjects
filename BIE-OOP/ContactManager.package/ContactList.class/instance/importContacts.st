as yet unclassified
importContacts
	| builder contactfile contactlist |
	builder := UITheme new builder.
	contactfile := builder textEntry: 'Enter the path to the contacts file' title: 'Import contacts' entryText: nil.
	contactfile := contactfile asFileReference.
	contactlist := STON fromString: (contactfile readStreamDo: [ :stream | stream contents ] ).
	contactlist do: [ :contact |
		| transformedcontact |
		transformedcontact := Contact new.
		contact keys do: [ :property |
			transformedcontact class compileProperty: property asSymbol.
			transformedcontact addProperty: property asSymbol.
			transformedcontact property: property asSymbol put: (contact at: property).
		].
		selectionIndex := (database size) + 1.
		mapping addLast: (database addContact: transformedcontact).
	].
	self changed: #contacts; changed: #contactSelected.