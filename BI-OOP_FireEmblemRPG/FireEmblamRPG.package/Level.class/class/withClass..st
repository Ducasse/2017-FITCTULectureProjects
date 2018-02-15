initialization
withClass: aClass
 | level | 
	level := Level new.
	level abilities: (Abilities withClass: aClass).
	^level