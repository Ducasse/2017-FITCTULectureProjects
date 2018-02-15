initialization
setLocationOfHeroes: heroes
	1 to: heroes size do: [ 
		:number |
		| position |
		 position := Position InitPosX: 0 posY: number+2.
		 battleMap putCharacter: (heroes at: number) atPosition: position. 
		 ] 