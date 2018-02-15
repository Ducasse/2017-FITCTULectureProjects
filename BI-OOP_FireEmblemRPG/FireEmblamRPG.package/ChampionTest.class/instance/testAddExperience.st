tests
testAddExperience
	|champion|
	champion := Rogue new.
	self assert: ( champion level level = 1 ).
	self assert: ( champion level experience = 0 ).
	champion addExperience: 30.
	self assert: ( champion level experience = 30 ).	
	champion addExperience: 120.
	self assert: ( champion level level = 2 ).
	self assert: ( champion level experience = 50 ).
	
	
	
	 