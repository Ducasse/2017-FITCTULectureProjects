as yet unclassified
exportContacts
	| builder contactfile |
	builder := UITheme new builder.
	contactfile := builder textEntry: 'Enter the path to the contacts file' title: 'Export contacts' entryText: nil.
	database exportContacts: contactfile.