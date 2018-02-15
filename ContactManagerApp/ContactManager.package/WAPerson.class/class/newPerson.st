instance creation
newPerson
	^ self new
		setPerson:  Person  new;
		isNew: true;
		yourself