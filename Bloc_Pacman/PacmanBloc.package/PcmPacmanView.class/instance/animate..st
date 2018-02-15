scripting
animate: aPcmTicker
	tick := (tick + 1) \\ (maxTick + 1).
	aPcmTicker fire: [ self animate: aPcmTicker ] after: animationTime