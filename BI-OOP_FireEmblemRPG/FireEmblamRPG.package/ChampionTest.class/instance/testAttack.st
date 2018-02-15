tests
testAttack
	|champion zampion|
	zampion := Tank new.
	zampion team: 1.
	champion := Rogue new.
	champion team: 0.
	zampion attack: champion. 
	self assert: (champion actualHP < champion level abilities health).
	
	
	
	 