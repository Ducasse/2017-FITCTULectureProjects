changeTextFields
changeScore: arrOfTexts
	self changeBoxesTF: (arrOfTexts at: 3) asString  , '/', boxCnt asString.
	self changeMovesTF: (arrOfTexts at: 1) asString.
	self changeBoxMovesTF: (arrOfTexts at: 2) asString.
	
	