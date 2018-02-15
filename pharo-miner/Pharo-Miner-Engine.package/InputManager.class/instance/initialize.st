initialization
initialize
	keys := Dictionary newFrom: (Key KeyTable values collect: [ :key | key -> KeyStateHolder new ])