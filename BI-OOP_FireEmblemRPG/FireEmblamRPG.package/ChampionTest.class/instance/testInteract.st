tests
testInteract
	|champion zampion|
	zampion := Tank new.
	zampion team: 1.
	champion := Rogue new.
	champion team: 1.
	self assert: ( (zampion interact: champion)asString = 'Cant attack friendly champion').
	champion team: 0.
	zampion interact: champion. 
	self assert: (champion actualHP < champion level abilities health).
	
	
	
	 