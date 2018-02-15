selfActions
takeDamage: aDamage from: aUnit
	"comment stating purpose of message"
	self takeDamageDeleg takeDamage: aDamage from: aUnit.
	(self dead and: diedAlready not) ifTrue: [ killedBy := aUnit. self die ].