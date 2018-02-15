initialization
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Rogue1.png'. imgLogo := 'Champions/Rogue1_Logo.png']
		ifFalse: [ img := 'Champions/Rogue2.png'. imgLogo := 'Champions/Rogue2_Logo.png']