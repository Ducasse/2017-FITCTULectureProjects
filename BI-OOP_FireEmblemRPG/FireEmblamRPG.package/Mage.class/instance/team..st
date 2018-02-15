accessing
team: aTeam
		team := aTeam.
		(team = 1)
		ifTrue: [ img := 'Champions/Mage1.png'. imgLogo := 'Champions/Mage1_Logo.png']
		ifFalse: [ img := 'Champions/Mage2.png'. imgLogo := 'Champions/Mage2_Logo.png']