initialization
testWithBox
	| i |
	i := SRMove withBoxAndDirectionX: 1 Y: 0.
	self assert: i withBox = true.
	i := SRMove withDirectionX: 0 Y: -1.
	self assert: i withBox = false.