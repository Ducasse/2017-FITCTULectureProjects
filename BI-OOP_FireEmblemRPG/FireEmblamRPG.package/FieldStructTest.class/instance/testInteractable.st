tests
testInteractable
	|fs1 fs2 fs3 fs4 fs5 fs6 fs7|
	fs1 := FieldStruct new type: Enum me.
	fs2 := FieldStruct new type: Enum teammate.
	fs3 := FieldStruct new type: Enum enemy.
	fs4 := FieldStruct new type: Enum road.
	fs5 := FieldStruct new type: Enum forest.
	fs6 := FieldStruct new type: Enum wall.
	fs7 := FieldStruct new type: Enum hole.
	
	self assert: (fs1 interactable).
	self assert: (fs2 interactable).
	self assert: (fs3 interactable).
	self assert: (fs4 interactable) not.
	self assert: (fs5 interactable) not.
	self assert: (fs6 interactable) not.
	self assert: (fs7 interactable) not.
	
	