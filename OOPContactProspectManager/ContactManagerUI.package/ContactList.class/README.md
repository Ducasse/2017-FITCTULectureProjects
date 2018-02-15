This panels holds all users contacts.

Example: 
|t l|
t := ContactList new.
l := LinkedList new.
l 	add: (Contact new id: 1; firstName: 'John');
	add: (Contact new id: 2; firstName: 'Mary').
t contactList: l.
t myAnnouncer when: ContactClickAnnouncement do: [ :a | Transcript show: 'Hello ', a id asString; cr ].