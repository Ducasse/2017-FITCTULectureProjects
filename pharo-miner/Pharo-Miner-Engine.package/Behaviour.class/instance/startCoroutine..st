coroutine
startCoroutine: aBlock
	coroutines add: (Generator on: aBlock)