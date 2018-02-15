instance creation
withMessage: message
	| popup |
	popup := self new.
	popup message: message.
	^ popup
	