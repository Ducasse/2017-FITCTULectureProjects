adding/removing
addBehaviour: aBehaviour
	"Add another behaviour to my behaviours"
	aBehaviour gameObject: self.
	behaviours add: aBehaviour.
	^aBehaviour