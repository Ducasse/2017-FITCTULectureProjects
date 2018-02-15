as yet unclassified
spawnProcess
	[ true ]
		whileTrue: [ (Delay forSeconds: 1) wait.
			MSTimerException signal ]