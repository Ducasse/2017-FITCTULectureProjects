accessing
userName: aUser
	user := aUser.
	userNameLabel label: aUser username.
	self needRebuild: true.
	self buildWithSpec.