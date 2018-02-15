class initialization
getIceRepository
	IceRepository registry
		do: [ :each | 
			each name = 'oop'
				ifTrue: [ ^ each ] ].
			^nil.
			