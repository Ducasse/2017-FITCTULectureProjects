actions
createPortal: aPosition
	"Removes the old portal and creates the new one at given position."
	
	aPosition y = 1 ifTrue: [^ self].
	(self at: portal target) removePortal.
	self portal target: aPosition.
	(self at: portal target) createPortal