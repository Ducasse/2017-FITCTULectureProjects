interaction
restore
	self health restore.
	self money: 0.
	self components tank fuelToMax.
	self direction: MiDirectionEmpty new.
	self facing: MiDirectionRight new vector.
	self position: MiMinerStartPosition.