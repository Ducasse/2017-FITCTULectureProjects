accessing
getDirFrom: start to: end
	
	end - 1 = start
		ifTrue: [ ^ PcmDir right ].
	end + 1 = start
		ifTrue: [ ^ PcmDir left ].
	end + self columnsCnt = start
		ifTrue: [ ^ PcmDir up ].
	end - self columnsCnt = start
		ifTrue: [ ^ PcmDir down ]