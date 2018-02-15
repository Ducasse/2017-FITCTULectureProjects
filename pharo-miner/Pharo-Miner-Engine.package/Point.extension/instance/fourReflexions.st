*Pharo-Miner-Engine
fourReflexions
	^ Array
		with: self leftRotated transposed
		with: self negated
		with: self rightRotated transposed
		with: self