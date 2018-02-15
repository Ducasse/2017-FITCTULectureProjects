tests
testBlocked
	| level |
	level := Level
		loadXsb:
			'
###    ###
#*######*#
##      ##
 #      #
 #  .   #
 # .*$  #
 #      #
##$   @ ##
#*######*#
###    ###'.
	self assert: level player levelPos point equals: 7 @ 6.
	self assert: level goalCount equals: 2.
	"try to push box blocked by box"
	level move: Up new.
	level move: Up new.
	level move: Left new.
	level move: Left new.
	level move: Left new.
	self assert: level player levelPos point equals: 5 @ 6.
	self assert: level goalCount equals: 2.
	"push box onto different goal"
	level move: Down new.
	level move: Left new.
	level move: Left new.
	level move: Up new.
	self assert: level player levelPos point equals: 5 @ 4.
	self assert: level goalCount equals: 2.
	"push box off goal"
	level move: Up new.
	self assert: level player levelPos point equals: 4 @ 4.
	self assert: level goalCount equals: 3