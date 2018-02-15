subscription
subscribe
	self camera gameObject announcer when: RelocationEvent do: [ self refreshPosition ]