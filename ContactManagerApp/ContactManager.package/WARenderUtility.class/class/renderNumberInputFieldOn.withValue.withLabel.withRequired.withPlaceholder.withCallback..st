rendering
renderNumberInputFieldOn: html withValue: value withLabel: label withRequired: isReq withPlaceholder: placeholder withCallback: callback
	html
		tbsFormGroup: [ html label: label.
			isReq
				ifTrue: [ self renderRequiredSpanOn: html ].
			html numberInput
				tbsFormControl;
				placeholder: placeholder;
				callback: callback;
				value: (value ifNil: '') ]