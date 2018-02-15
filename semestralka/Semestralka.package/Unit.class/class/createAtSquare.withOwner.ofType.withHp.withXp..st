construction
createAtSquare: aSquare withOwner: aPlayer ofType: aUnitType withHp: aHp withXp: aXp
| jednotka |
	jednotka := Unit new.
	jednotka	playerOwner: aPlayer;
		square: aSquare;
		health: aHp;
		experience: aXp.
		
		
	(aUnitType = 4)
		ifTrue: [ jednotka unitType: UnitTypeSoldier.] ifFalse: [ 
			(aUnitType = 5) ifTrue: [ jednotka unitType: UnitTypeArcher.] ifFalse: [ 
				(aUnitType  = 6) ifTrue: [ jednotka unitType: UnitTypeMage.]
				 ]
			 ].
		
		^jednotka.
	
	