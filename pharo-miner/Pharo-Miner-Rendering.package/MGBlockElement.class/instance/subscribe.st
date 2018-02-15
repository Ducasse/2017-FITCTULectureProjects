subscription
subscribe
	self renderer gameObject announcer
		when: RelocationEvent
			do: [ self onRelocation ];
		when: DestroySelfEvent do: [ self onRemoval ]