initialization
onKeyUp: aKey do: aBlock
	self
		startCoroutine: (self generateCoroutineWith: [ (self input getKeyState: aKey) ifUp: aBlock ])