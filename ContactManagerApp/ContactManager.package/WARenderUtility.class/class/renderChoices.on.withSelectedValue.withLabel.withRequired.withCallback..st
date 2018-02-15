rendering
renderChoices: choiceDict on: html withSelectedValue: selectedValue withLabel: label withRequired: isReq withCallback: callback
	| choiceIds sel |
	sel := nil.
	choiceIds := choiceDict keys asOrderedCollection.
	choiceIds addFirst: nil.
	selectedValue ifNotNil: [ sel := selectedValue value ].
	html
		tbsFormGroup: [ html label: label.
			isReq
				ifTrue: [ self renderRequiredSpanOn: html ].
			html select
				class: 'form-control';
				list: choiceIds;
				selected: sel;
				enabled: [ :ea | ea notNil ];
				labels: [ :ea | ea ifNil: [ '---' ] ifNotNil: [ choiceDict at: ea ] ];
				callback: callback ]