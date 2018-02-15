instance creation
new
	| game |
	game := self basicNew initialize.
	game currentScene randomGenerate.
	^ game.