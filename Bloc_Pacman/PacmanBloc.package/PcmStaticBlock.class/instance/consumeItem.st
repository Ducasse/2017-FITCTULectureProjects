as yet unclassified
consumeItem
	"item soSomething"
	item ifNotNil: [ self announcer announce: PcmItemConsumed new ].
	item := nil.