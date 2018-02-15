as yet unclassified
doOneTurn
	| unit |
	self anySideDead ifTrue: [ ^ self ].
	unit := self currentUnit.
	unit isHuman ifTrue: [ unit stepDeleg ifNil: [ ^ self ] ].
	unit turn.
	unit update.
	unit isHuman ifTrue: [ unit removeStepDeleg ].
	ui printEvent: ''.
	self nextUnit.
	self updateUiMode.
	self printTeamOverviews.
	self anySideDead ifTrue: [ self printDeadTeam ].
	^ self