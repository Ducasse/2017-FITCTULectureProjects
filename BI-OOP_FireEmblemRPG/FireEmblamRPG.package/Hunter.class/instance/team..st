accessing
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Hunter1.png'. imgLogo := 'Champions/Hunter1_Logo.png']
		ifFalse: [ img := 'Champions/Hunter2.png'. imgLogo := 'Champions/Hunter2_Logo.png']