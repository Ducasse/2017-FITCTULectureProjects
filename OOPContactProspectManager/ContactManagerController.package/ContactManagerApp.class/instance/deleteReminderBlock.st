blocks
deleteReminderBlock
	^[:a|
		user notifications remove: a notification.
		user save.
		appWindow myAnnouncer announce: (HomeButtonPressed new user: user).
		]