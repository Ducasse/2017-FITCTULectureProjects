subscription
subscribe
	self gameObject announcer when: UpdateEvent do: [ self update ].
	self gameObject announcer when: StartAnnouncement  do: [ self start ]