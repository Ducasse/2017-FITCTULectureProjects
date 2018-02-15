cleanup
destroySelf
	self announcer announce: DestroySelfEvent.
	self scene deleteGameObject: self