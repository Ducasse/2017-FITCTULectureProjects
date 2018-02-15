setting
levelUp
"increase the level by 1 and moves the bar to start with max value and end with new bigger max value"
	self setLevel: self getLevel + 1.
	self setMin: self getMax.
	self setActualValue: self getMax.
	self setMax: self newMax