initialization
initialize

	| db |
	super initialize.
	db := BookDBInImage new.
	controller := Controller new.
	search := WASearch withDb: db withController: controller withRoot: self.
	controller db: db.
	controller search: search
