actions
load: aFileName
	| game |
	game := self basicNew initialize.
	game currentScene constructFrom: (SaveManager new loadSaveFrom: aFileName).
	^ game

