actions
changeState
	| tmp |
	tmp := moveCodeOnHold. 
	moveCodeOnHold  := moveCode.
	moveCode := tmp.
