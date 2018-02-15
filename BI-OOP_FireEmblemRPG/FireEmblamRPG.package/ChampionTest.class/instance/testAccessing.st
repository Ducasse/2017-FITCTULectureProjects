tests
testAccessing
	|champion|
	champion := Champion new.
	champion actualHP: 13.
	self assert: ( champion actualHP = 13 ).
	champion class: 'Tank'. 
	self assert: ( champion class = 'Tank' ). 
	champion imgPath: '/images/tank.img'.
	self assert: ( champion imgPath = '/images/tank.img' ). 
	champion name: 'Arthas'.
	self assert: ( champion name = 'Arthas' ). 
	champion level: 0.
	self assert: ( champion level = 0 ). 
	champion team: 1.
	self assert: ( champion team = 1 ). 
	
	
	
	 