*Pharo-Miner-Engine
clampedBetween: min and: max
	^ self min: (min max: max) max: (min min: max).