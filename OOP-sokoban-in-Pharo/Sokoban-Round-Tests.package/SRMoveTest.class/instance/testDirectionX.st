initialization
testDirectionX
	| i |
	i := SRMove withDirectionX: -1 Y: 0.
	self assert: i directionX = -1.
	i := SRMove withDirectionX: 0 Y: -1.
	self assert: i directionX = 0.
	i := SRMove withDirectionX: 1 Y: 1.
	self assert: i directionX = 1.
	i := SRMove withDirectionX: 1 Y: -1.
	self assert: i directionX = 1.