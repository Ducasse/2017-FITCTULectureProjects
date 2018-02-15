getSet
arrayAccordingToLanguage
	 ^(languageSelected = 'es')
		ifTrue: [ monsterNamesES ]
		ifFalse: [ monsterNamesEN ].