accessing
field: aField "FieldStruct"
	"Initialize the card with a given FieldStruct"
	self
		assert: [ aField isNotNil ]
		description: [ 'Field must not be nil' ].

	field := aField.