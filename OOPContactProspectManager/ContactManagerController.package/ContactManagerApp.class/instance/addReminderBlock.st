blocks
addReminderBlock
 ^[ :i | 
		user notifications add: i notification.
		user save.
		appWindow contactDetails reminderList listView items: user notifications.
		]