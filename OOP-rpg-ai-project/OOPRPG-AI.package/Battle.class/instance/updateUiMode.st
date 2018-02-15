as yet unclassified
updateUiMode
	| unit |
	unit := self currentUnit.
	self anySideDead ifTrue: [ ui mainWindow spectatorMode]
	ifFalse: [ unit isHuman ifFalse: [ ui mainWindow aiMode ] ifTrue: [ ui mainWindow playerMode ] ]