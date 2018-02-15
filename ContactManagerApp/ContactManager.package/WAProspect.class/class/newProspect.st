instance creation
newProspect
	^ self new
		setProspect:  Prospect  new;
		isNew: true;
		yourself