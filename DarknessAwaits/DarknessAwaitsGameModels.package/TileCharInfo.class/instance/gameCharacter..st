accessing
gameCharacter: newGameCharacter
	gameCharacter := newGameCharacter.
	Transcript show: 'GameCharacter has changed, lets announce'.
	self hasChanged: true. 
	self announcer announce: ShowCharacterInfoAnnouncement new.