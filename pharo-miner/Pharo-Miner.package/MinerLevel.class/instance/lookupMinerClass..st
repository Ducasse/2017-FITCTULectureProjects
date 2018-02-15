private
lookupMinerClass: name
	MinerObject allSubclasses detect: [ :class | class name == name ] ifFound: [ :class | ^class ]. 
	self error: 'Corrupted save file.'