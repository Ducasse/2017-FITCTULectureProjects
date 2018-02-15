updating
update
	super update.
	self rules
		detect: [ :assoc | assoc key value ]
		ifFound: [ :res | self changeImageTo: res value ]