instance creation
onKeysLeft: aLeft right: aRight up: anUp down: aDown
	^ self onKeybind: { aLeft . aRight . anUp . aDown }