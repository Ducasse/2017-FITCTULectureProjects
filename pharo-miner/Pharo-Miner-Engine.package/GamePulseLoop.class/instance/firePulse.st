loop process
firePulse
	self pulseBlock on: Error do: [ :e | Transcript << e; cr. e pass ]