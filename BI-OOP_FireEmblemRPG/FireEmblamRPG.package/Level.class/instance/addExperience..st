operations
addExperience: anAmount
	experience := experience + anAmount.
	[ experience >= experienceToNextLevel ]
		whileTrue: [ 
			self levelUp. 
			experience := (experience - experienceToNextLevel).  
			].
		