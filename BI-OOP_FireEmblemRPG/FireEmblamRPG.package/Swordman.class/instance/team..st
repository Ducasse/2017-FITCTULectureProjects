accessing
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Swordman1.png'. imgLogo := 'Champions/Swordman1_Logo.png']
		ifFalse: [ img := 'Champions/Swordman2.png'. imgLogo := 'Champions/Swordman2_Logo.png']