instance creation
newNextButtonElement 
	|nbe|
	nbe := ChCNextButtonElement new.
	nbe relocate: ((self distanceBetweenLists * 2) - 110) @ self distanceOfNextButtonFromTop .
	^nbe

