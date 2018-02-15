tests
testMovable
	|fs1 fs2 fs3 fs4 fs5 fs6 fs7|
	fs1 := FieldStruct new type: Enum me.
	fs2 := FieldStruct new type: Enum teammate.
	fs3 := FieldStruct new type: Enum enemy.
	fs4 := FieldStruct new type: Enum road.
	fs5 := FieldStruct new type: Enum forest.
	fs6 := FieldStruct new type: Enum wall.
	fs7 := FieldStruct new type: Enum hole.
	
	self assert: (fs1 movable) not.
	self assert: (fs2 movable) not.
	self assert: (fs3 movable) not.
	self assert: (fs4 movable).
	self assert: (fs5 movable) not.
	self assert: (fs6 movable) not.
	self assert: (fs7 movable) not.
	
	