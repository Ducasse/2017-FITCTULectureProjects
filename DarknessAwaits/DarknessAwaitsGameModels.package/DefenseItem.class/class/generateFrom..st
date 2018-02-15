copying
generateFrom: template
	| instance |
	
	instance := self new.
	super copyAttributesFrom: template to: instance.
	self copyAttributesFrom: template to: instance.
	^instance.