getSet
messageAboutDamage: aMonster damage: aDamage targetMonster: aMonsterT
	|text textBase collection|
	textBase := messageAboutDamageEN.
	
	(languageSelected = 'es')
		ifTrue: [ textBase := messageAboutDamageSPA ]
		ifFalse: [ textBase := messageAboutDamageEN ].
		
	text := ''.
	collection := (textBase splitOn: '?').
	text := text , ((collection at: 1) , (self monsterName: aMonster)).
	text := text , ((collection at: 2) , (aDamage asString)).
	text := text , ((collection at: 3) , (self monsterName: aMonsterT)).
	text := text , (collection at: 4).

^text