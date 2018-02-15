rendering
renderDbChoices: choices on: html withSelectedValue: selectedValue withLabel: label withRequired: isReq withCallback: callback
	| choiceDict choiceIds sel |
	sel := nil.
	choiceDict := Dictionary new.
	choices do: [ :c | choiceDict at: c id value put: c cname ].
	choiceIds := choices collect: [ :c | c id value ].
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