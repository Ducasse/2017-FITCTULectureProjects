rendering
renderRadiobuttonsOn: html
	| group |
	group := 	html radioGroup.
	group radioButton callback: [ radioIsExact := true ]; selected: radioIsExact.
	html text: 'Exact'.
	group radioButton callback: [ radioIsExact := false ]; selected: radioIsExact not.
	html text: 'Pattern'.