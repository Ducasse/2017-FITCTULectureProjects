tests
testPrinting
	| xsbIn level xsbOut |
	xsbIn := '
####   ##
#  ########
#+        #
#*$$. #####
#     #  #
# ###### #
###    ###'.
	level := Level loadXsb: xsbIn.
	xsbOut := self toDebugString: level printString.
	self assert: xsbOut equals: xsbIn