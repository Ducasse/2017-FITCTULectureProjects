as yet unclassified
getInstance
	flag ifFalse: [ instance := ContactDatabase new. flag := true. ].
	^ instance.