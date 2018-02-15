tests
testHeal
	|champion zampion|
	zampion := Healer new.
	champion := Rogue new.
	champion dealDamage: 5.
	
	zampion heal: champion. 
	self assert: ( champion actualHP = champion level abilities health ).
	
	
	
	 