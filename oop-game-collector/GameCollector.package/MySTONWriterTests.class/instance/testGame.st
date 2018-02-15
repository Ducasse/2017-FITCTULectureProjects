tests
testGame
	| game |
	(game := STONTestGame new)
		title: 'Mafia I';
		description: 'Game made by czech developers'.
	self 
		assert: (self serialize: game)
		equals: 'TestGame{#title:''Mafia I'',#description:''Game made by czech developers'',#enabled:true}'