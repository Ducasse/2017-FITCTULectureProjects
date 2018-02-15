mining
stepSize
	^ self drillingSpeed * self time deltaTime
		clampedBetween: 0
		and: (self gameObject position distanceTo: target position)