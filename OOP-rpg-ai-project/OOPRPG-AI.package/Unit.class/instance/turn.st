as yet unclassified
turn
	"comment stating purpose of message"

	ap timesRepeat: [ self step. battle anySideDead ifTrue: [ ^ self ] ].
	^ self