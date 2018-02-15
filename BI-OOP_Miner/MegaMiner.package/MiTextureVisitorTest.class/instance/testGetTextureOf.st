tests
testGetTextureOf
	"5 cases to test if concet works - use blocks to test it if texture is right"
	| visitor texture |
	visitor := MiTextureVisitor getInstance .
	
	texture := MiUndergroundBlock new acceptVisitor: visitor.
	self assert: (texture isNotNil & (texture width > 0) & (texture height > 0) & (texture bitsSize > 1)).
	self assert: (texture = (visitor dictionary at: MiUndergroundBlock asString asSymbol ) ).
	
	texture := MiSurfaceBlock new acceptVisitor: visitor.
	self assert: (texture isNotNil & (texture width > 0) & (texture height > 0) & (texture bitsSize > 1)).
	self assert: (texture = (visitor dictionary at: MiSurfaceBlock asString asSymbol ) ).
	
	texture := MiRepairCenterBlock new acceptVisitor: visitor.
	self assert: (texture isNotNil & (texture width > 0) & (texture height > 0) & (texture bitsSize > 1)).
	self assert: (texture = (visitor dictionary at: MiRepairCenterBlock asString asSymbol ) ).
	
	texture := MiGoldBlock new acceptVisitor: visitor.
	self assert: (texture isNotNil & (texture width > 0) & (texture height > 0) & (texture bitsSize > 1)).
	self assert: (texture = (visitor dictionary at: MiGoldBlock asString asSymbol ) ).
	
	texture := MiDirtBlock new acceptVisitor: visitor.
	self assert: (texture isNotNil & (texture width > 0) & (texture height > 0) & (texture bitsSize > 1)).
	self assert: (texture = (visitor dictionary at: MiDirtBlock asString asSymbol ) ).