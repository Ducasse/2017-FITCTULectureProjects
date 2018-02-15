accessing
addEffect: anEffect
	"comment stating purpose of message"

	effects add: anEffect.
	anEffect applyOn: self.