instance creation
newChampionNameLabelElement: aText 
	|tl|
	tl := ChCTextLabelElement new text: aText; size: 130 @ 24.
	tl relocate: (listNum * self distanceBetweenLists + 10) @ self distanceOfChampionNameFromTop .
	^tl

