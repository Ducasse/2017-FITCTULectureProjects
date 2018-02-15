actions
moveFrom: fm1 to: fm2 "FieldModel FieldModel"
	|type champ field|
	field := fm1 field.
	type := field type.
	champ := field champion.
	
	"from"
	field type: fm2 field type; champion: nil.
	fm1 field: field.
	
	"to"
	field := fm2 field.
	field type: type; champion: champ.
	fm2 field: field.