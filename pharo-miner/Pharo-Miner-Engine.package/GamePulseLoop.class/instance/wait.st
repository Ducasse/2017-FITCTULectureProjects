waiting
wait
	| ms |
	ms := (self pulsePeriod - (Time millisecondsSince: pulsestarttime)) max: 1.
	(Delay forMilliseconds: ms) wait.
	Processor yield.