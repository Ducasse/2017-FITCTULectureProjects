printing
printTeamOverviews
	| txt1 txt2 |
	txt1 := String new writeStream.
	txt2 := String new writeStream.
	
	currentUnit ifNotNil: [ ui setCurrentPlayerText: self currentUnit nickname ].
	
	team1
		do: [ :unit | txt1 nextPutAll: (unit nickname , ' (' , unit hp asString , ' HP' , ', ' , unit mp asString, ' MP)', Character cr asString) ].
	team2
		do: [ :unit | txt2 nextPutAll: (unit nickname , ' (' , unit hp asString , ' HP' , ', ' , unit mp asString, ' MP)', Character cr asString) ].
		
	ui setTeam1OverviewText: txt1 contents.
	ui setTeam2OverviewText: txt2 contents