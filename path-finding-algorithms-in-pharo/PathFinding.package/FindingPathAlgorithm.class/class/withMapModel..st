instance creation
withMapModel: aMapModel
	| alg |
	alg := self basicNew.
	alg mapModel: aMapModel.
	alg reset.
	^ alg.