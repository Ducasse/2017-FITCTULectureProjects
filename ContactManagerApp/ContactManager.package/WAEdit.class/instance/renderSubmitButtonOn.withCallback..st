rendering
renderSubmitButtonOn: html withCallback: callbackBlock
	"Calls validation on click. If sublying entity is valid calls a callback"

	html tbsSubmitButton
		beSuccess;
		bePrimary;
		callback: [ self isValidated: true.
			self isValid
				ifTrue: [ callbackBlock value: tmpEntity ] ];
		with: 'Save'