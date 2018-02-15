performing
sendMessage: aMessage with: anObject
	(self respondsTo: aMessage) ifTrue: [ ^self perform: aMessage with: anObject ]