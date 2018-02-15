adding
addUnit: aUnit toTeam: aNumber

units add: aUnit.
aUnit battle: self.
aNumber == 1 ifTrue: [team1 add: aUnit. aUnit team: 1].
aNumber == 2 ifTrue: [team2 add: aUnit. aUnit team: 2].