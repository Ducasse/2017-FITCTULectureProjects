initialize
stopAll
	self allInstancesDo: #stop.
	TCMainServer stopAll.
