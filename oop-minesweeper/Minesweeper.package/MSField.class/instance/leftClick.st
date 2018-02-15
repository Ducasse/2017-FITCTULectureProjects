actions
leftClick
	marked ifTrue: [ ^ self ].
	self leftClickOnField.
	self announcer announce: MSFieldLeftClickAnnoucement new.

