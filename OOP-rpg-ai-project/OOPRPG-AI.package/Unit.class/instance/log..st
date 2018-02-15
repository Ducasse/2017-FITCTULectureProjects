logging-Deprecated
log: aMessage
	battle ifNotNil: [ battle ui printEvent: nickname , ': ' , aMessage ]