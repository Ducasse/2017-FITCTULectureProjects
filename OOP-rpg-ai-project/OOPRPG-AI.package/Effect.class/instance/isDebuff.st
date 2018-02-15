testing
isDebuff
 | debuff |
	debuff := self class = StunEffect.
	debuff := debuff or: self class = SlowEffect.
	^ debuff.