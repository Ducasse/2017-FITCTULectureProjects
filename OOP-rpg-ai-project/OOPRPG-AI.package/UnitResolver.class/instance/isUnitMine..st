accessing
isUnitMine: aUnit

^ ((MyTeam indexOf: aUnit) == 0 ) ifTrue: [ false ] ifFalse: [ true ] 