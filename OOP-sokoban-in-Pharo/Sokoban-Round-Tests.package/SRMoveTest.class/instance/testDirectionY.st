initialization
testDirectionY
	| i |
	i := SRMove withDirectionX: 0 Y: -1.
	self assert: i directionY = -1.
	i := SRMove withDirectionX: -1 Y: 0.
	self assert: i directionY = 0.
	i := SRMove withDirectionX: 1 Y: 1.
	self assert: i directionY = 1.
	i := SRMove withDirectionX: -1 Y: 1.
	self assert: i directionY = 1