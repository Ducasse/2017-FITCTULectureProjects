accessing
selected: aVal
	selected = aVal ifFalse: [ self notifySelected ].
	"self halt."
	"self notifySelected."
	selected := aVal.
