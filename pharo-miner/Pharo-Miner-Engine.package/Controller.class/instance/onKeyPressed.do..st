initialization
onKeyPressed: aKey do: aBlock
	self
		startCoroutine: (self generateCoroutineWith: [ (self input getKeyState: aKey) ifPressed: aBlock ])