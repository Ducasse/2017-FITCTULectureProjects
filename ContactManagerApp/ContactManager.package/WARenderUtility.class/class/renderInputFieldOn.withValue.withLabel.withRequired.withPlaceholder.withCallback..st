rendering
renderInputFieldOn: html withValue: value withLabel: label withRequired: isReq withPlaceholder: placeholder withCallback: callback
	html
		tbsFormGroup: [ html label: label.
			isReq
				ifTrue: [ self renderRequiredSpanOn: html ].
			html textInput
				tbsFormControl;
				placeholder: placeholder;
				callback: callback;
				value: (value ifNil: '') ]