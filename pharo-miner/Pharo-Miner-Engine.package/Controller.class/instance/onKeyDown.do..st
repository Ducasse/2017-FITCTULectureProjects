initialization
onKeyDown: aKey do: aBlock
	self
		startCoroutine: (self generateCoroutineWith: [ (self input getKeyState: aKey) ifDown: aBlock ])