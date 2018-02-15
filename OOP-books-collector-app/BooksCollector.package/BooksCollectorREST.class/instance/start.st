action
start
	teapot start.
	rests do: [ :rest | rest start ]. 
	self isRunning: true.