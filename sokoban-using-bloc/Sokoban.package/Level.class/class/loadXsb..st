instance creation
loadXsb: xsb
	| trimmedXsb level map width height freeBoxCnt freeGoalCount player |
	trimmedXsb := xsb trimLeft: [ :c | c = Character cr ].
	level := self new.
	player := nil.
	freeBoxCnt := 0.
	freeGoalCount := 0.
	height := trimmedXsb lines size.
	width := (trimmedXsb lines collect: [ :line | line size ]) max.
	map := Array new: width * height.
	trimmedXsb lines
		collectWithIndex: [ :line :r | 
			| r0 |
			r0 := r - 1.
			(line padRightTo: width) asArray
				collectWithIndex: [ :char :c | 
					| c0 index lPos |
					c0 := c - 1.
					index := r0 * width + c0 + 1.
					lPos := LevelPos newAt: r0 @ c0 on: level.
					char = $#
						ifTrue: [ map at: index put: (WallCell newAt: lPos) ].
					char = Character space
						ifTrue: [ map at: index put: (PathCell newEmptyAt: lPos) ].
					char = $.
						ifTrue: [ map at: index put: (GoalCell newEmptyAt: lPos).
							freeGoalCount := freeGoalCount + 1 ].
					char = $@
						ifTrue: [ map at: index put: (PathCell newWithPlayerAt: lPos).
							player ifNotNil: [ self error: 'Multiple players' ].
							player := Player newAt: lPos ].
					char = $+
						ifTrue: [ map at: index put: (GoalCell newWithPlayerAt: lPos).
							freeGoalCount := freeGoalCount + 1.
							player ifNotNil: [ self error: 'Multiple players' ].
							player := Player newAt: lPos ].
					char = $$
						ifTrue: [ map at: index put: (PathCell newWithBoxAt: lPos).
							freeBoxCnt := freeBoxCnt + 1 ].
					char = $*
						ifTrue: [ map at: index put: (GoalCell newWithBoxAt: lPos) ].
					(map at: index) ifNil: [ self error: 'Invalid char' ] ] ].
	freeGoalCount ~= freeBoxCnt
		ifTrue: [ ^ self
				error:
					('{1} free boxes vs {2} goals'
						format:
							{freeBoxCnt.
							level goalCount}) ].
	^ level
		initWithMap: map
		width: width
		height: height
		player: player
		goalCount: freeGoalCount