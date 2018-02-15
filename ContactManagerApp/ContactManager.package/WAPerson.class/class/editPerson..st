editing
editPerson: aPerson
	^ self new
		setPerson: aPerson;
		isNew: false;
		yourself