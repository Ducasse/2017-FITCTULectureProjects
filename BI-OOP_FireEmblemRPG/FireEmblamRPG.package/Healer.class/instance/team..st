operations
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Healer1.png'. imgLogo := 'Champions/Healer1_Logo.png']
		ifFalse: [ img := 'Champions/Healer2.png'. imgLogo := 'Champions/Healer2_Logo.png']