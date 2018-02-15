editing
editProspect: aProspect
	^ self new
		setProspect: aProspect;
		isNew: false;
		yourself