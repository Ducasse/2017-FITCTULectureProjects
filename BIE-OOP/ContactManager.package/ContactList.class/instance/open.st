instance creation
open
	| builder content |
	builder := UITheme builder.
	content := builder newColumn: {
	builder newListFor: self list: #contacts selected: #selectionIndex changeSelected: #selectionIndex: help: nil.
	builder newRow: {
		builder newButtonFor: self action: #addButtonPress label: 'Add' help: nil.
		builder newButtonFor: self action: #editButtonPress getEnabled: #contactSelected label: 'Edit' help: nil. 
		builder newButtonFor: self action: #removeButtonPress getEnabled: #contactSelected label: 'Remove' help: nil.
		builder newButtonFor: self action: #addProperty getEnabled: #contactSelected label: 'Add property' help: nil.
		builder newButtonFor: self action: #importContacts label: 'Import contacts' help: nil.
		builder newButtonFor: self action: #exportContacts label: 'Export contacts' help: nil.
		}
	}.
	(content openInWindowLabeled: 'Contacts') extent: 460@200.