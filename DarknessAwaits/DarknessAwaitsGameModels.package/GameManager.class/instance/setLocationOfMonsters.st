initialization
setLocationOfMonsters
	self generateNewMonsters.
	1 to: monsters size do: [ 
		:number |
		| position |
		 position := Position InitPosX: 9 posY: number+2.
		 battleMap putCharacter: (monsters at: number) atPosition: position. 
		 ] 