instance creation
onSpace: aSpace
	| gameStartView |
	
	gameStartView := self new.
	gameStartView space: aSpace.
	gameStartView start.
	