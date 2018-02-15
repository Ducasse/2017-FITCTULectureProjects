pulse
allBehavioursDo: aBlock
	| theBehavioursArray |
	theBehavioursArray := behaviours.
	theBehavioursArray do: aBlock