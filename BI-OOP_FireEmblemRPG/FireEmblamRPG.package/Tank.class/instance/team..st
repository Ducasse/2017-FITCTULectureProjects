accessing
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Tank1.png'. imgLogo := 'Champions/Tank1_Logo.png']
		ifFalse: [ img := 'Champions/Tank2.png'. imgLogo := 'Champions/Tank2_Logo.png']