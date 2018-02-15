getSet
messageAboutPerish: aMonster killed: aKilled
	|text textBase collection|
	textBase := messageAboutDamageEN.
	
	(languageSelected = 'es')
		ifTrue: [ textBase := messagePerishSPA ]
		ifFalse: [ textBase := messagePerishEN ].
		
	text := ''.
	collection := (textBase splitOn: '?').
	text := text , ((collection at: 1) , (aKilled asString)).
	text := text , ((collection at: 2) , (self monsterName: aMonster)).
	text := text , (collection at: 3).

^text