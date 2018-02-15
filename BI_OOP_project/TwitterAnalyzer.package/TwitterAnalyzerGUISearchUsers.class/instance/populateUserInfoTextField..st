as yet unclassified
populateUserInfoTextField: anUser
	"textFieldUserInfo text: userObj asString."
	textFieldUserInfo text: (anUser printWith: VisitorPrinter new).