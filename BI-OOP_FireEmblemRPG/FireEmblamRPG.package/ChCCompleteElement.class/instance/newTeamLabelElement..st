instance creation
newTeamLabelElement: aText 
	|tl|
	tl := ChCTextLabelElement new text: aText; size: 360 @ 40.
	tl relocate: ((self distanceBetweenLists * 2) - 180) @ self distanceOfTeamLabelFromTop .
	^tl

