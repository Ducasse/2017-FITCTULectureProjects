copying
generateFrom: template
	| instance |
	
	instance := self new.
	self copyAttributesFrom: template to: instance.
	^instance.
	