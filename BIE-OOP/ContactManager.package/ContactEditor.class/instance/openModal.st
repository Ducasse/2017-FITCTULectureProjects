open/close
openModal
	| builder dialog content labels |
	builder := UITheme builder.
	labels := OrderedCollection new.
	(contact property keys) do: [ :key | labels addLast:
		((key asString) -> ((builder newTextEntryFor: contact
		getText: key
		setText: ((key,':') asSymbol) help: nil)
		acceptOnCR: false;
		minWidth: 150)) ].
	content := (builder newLabelGroup: (labels asArray)).
	dialog := builder newPluggableDialogWindow: 'Contact editor' for: content.
	builder openModal: dialog.
	dialog cancelled ifFalse: [self onOKevent].