getSet
messageByKeyword: aWord 
	|text container|
	container := gameMessagesEN.
	
	(languageSelected = 'es')
		ifTrue: [ container := gameMessagesES ].
		
	text := (container at: aWord).	
^text