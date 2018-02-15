rendering
renderCheckBoxFieldOn: html withValue: value withLabel: label withRequired: isReq withCallback: callback
	html
		tbsFormGroup: [ html checkbox
				callback: callback;
				value: (value ifNil: false).
			html label: label.
			isReq
				ifTrue: [ self renderRequiredSpanOn: html ] ]