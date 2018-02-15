The main Window. It holds Sidebar and Contact details panels.

Example:
|c l |
c := ContactManagerWindow new.
c open.

l := OrderedCollection new.
l add: (Contact new id:1; firstName: 'John'; lastName: 'Aohn'; yourself).
l add: (Contact new id:2; firstName: 'Mary'; lastName: 'Dohn'; yourself).
l add: (Contact new id:3; firstName: 'Sam'; lastName: 'Bohn'; yourself).


c sidebar contactList contacts: l.

c user: (Contact new id:4; firstName: 'John'; lastName: 'Ford'; 
			company: 'Ford motors'; roleInCompany: 'CEO'; email: 'gmail.com';
			phoneNumber: 911; yourself).

c myAnnouncer when: ContactClickAnnouncement do: [ 
	:item | Transcript show: 'Contact was selected with id: ', item contact id asString; cr ].
c myAnnouncer when: LogOutAnnouncement do: [ 
	:item | Transcript show: 'Log out'; cr ].
c myAnnouncer when: CategoryWasChanged do: [ 
	:item | Transcript show: 'Category was changed to: ', item categoryName; cr ].
c myAnnouncer when: OrderMethodWasChanged do: [ 
	:item | Transcript show: 'Order method was changed to: ', item orderMethodName; cr ].
c myAnnouncer when: AddRemindAnnouncement  do: [ 
	:item | Transcript show: 'Remind to call ', item contact firstName; cr ].
c myAnnouncer when: DeleteRemindAnnouncement  do: [ 
	:item | Transcript show: 'Delete remind to call ', item contact firstName; cr ].
c myAnnouncer when: AddContactAnnouncement do: [ 
	:item | Transcript show: 'Add contact'; cr ].
c myAnnouncer when: DeleteContactAnnouncement do: [ 
	:item | Transcript show: 'Delete contact ', item contact firstName; cr ].