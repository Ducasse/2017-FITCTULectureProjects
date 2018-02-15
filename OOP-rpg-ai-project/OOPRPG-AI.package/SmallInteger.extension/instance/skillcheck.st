*OOPRPG-AI
skillcheck
	"comment stating purpose of message"

	| dieThrow result|
	dieThrow := OrderedCollection new.
	self timesRepeat: [ dieThrow add: 6 atRandom ].
	result := dieThrow count: [ :i | i > 4 ].
	Transcript show: ('{1}d6 > {2} succeses.' format: { self . result });cr.
	Smalltalk at: #lastSkillcheck put: result.
	^ result.