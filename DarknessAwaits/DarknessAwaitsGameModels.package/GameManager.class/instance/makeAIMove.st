as yet unclassified
makeAIMove
	|monster myPos target distance movTarget|
	monster := fightOrderQueue getCharacterOnTurn.
	myPos := monster position.
	movTarget := myPos.
	target := player heroes first position.
	player heroes do: [ :h | 
		(h position dist: myPos) < (target dist: myPos) ifTrue:[ target := h position]. 
		 ].
	distance := target dist: myPos.
	(distance <= monster attackRange) ifTrue:[self attackTargetAt: target. ^true].
	
	battleMap map do: [ :each |
		each gameCharacter ifNil:[
			(movTarget dist: target) > (each position dist: target) ifTrue:[
				(myPos dist: each position) <= (monster movementSpeed ) ifTrue:[
				
				movTarget := each position.
				].
				].
			]. 
		 ].
	self moveCharacterTo: movTarget. 
	
	distance := target dist: myPos.
	(distance <= monster attackRange) ifTrue:[self attackTargetAt: target. ^true].
	
	
	