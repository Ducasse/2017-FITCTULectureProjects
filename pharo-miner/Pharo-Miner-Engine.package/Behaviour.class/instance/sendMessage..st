performing
sendMessage: aMessage
	(self respondsTo: aMessage) ifTrue: [ ^self perform: aMessage ]