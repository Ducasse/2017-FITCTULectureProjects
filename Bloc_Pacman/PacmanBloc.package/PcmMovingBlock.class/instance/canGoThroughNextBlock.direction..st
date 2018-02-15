accessing
canGoThroughNextBlock: aPcmMap direction: aPcmDirection
	^ (aPcmMap getBlock: coordinate + (aPcmDirection vector x * 1) + (aPcmDirection vector y * aPcmMap columnsCnt)) canGoThrough: self