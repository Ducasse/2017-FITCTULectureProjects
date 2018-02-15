initialization
initialize 
	super initialize. 
	self background: (BlBackground paint: (Color gray lighter)). 
	self size: 800@800.
	"self layout: (BlGridLayout vertical cellSpacing: 20).
	self 
		constraintsDo: [ :aLayoutConstraints | 
			aLayoutConstraints horizontal fitContent. 
			aLayoutConstraints vertical fitContent ]"

