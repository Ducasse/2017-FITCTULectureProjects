current
createDefault
	^ self new
		addPerson:
			(Person
				firstName: 'FN1'
				lastName: 'LN1'
				email: 'E1'
				phoneNumber: 'PN1'
				address: 'A1'
				company: 'C1'
				position: 'P1');
		addPerson:
			(Person
				firstName: 'FN2'
				lastName: 'LN2'
				email: 'E2'
				phoneNumber: 'PN2'
				address: 'A2'
				company: 'C2'
				position: 'P2');
		addPerson:
			(Person
				firstName: 'FN1'
				lastName: 'LN3'
				email: 'E3'
				phoneNumber: 'PN3'
				address: 'A3'
				company: 'C3'
				position: 'P3')