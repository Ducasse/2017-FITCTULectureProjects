rendering
renderStateFieldOn: html
	| states |
	states := self prospectStateService selectAll.
WARenderUtility renderChoices: states on:  html withSelectedValue: tmpEntity state withLabel: 'State' withRequired: true withCallback:  [ :value | tmpEntity state: value ]