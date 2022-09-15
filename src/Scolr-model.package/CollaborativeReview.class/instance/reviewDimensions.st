reviews
reviewDimensions
	^ self reviews
		inject: Set new
		into: [ :sub :each | 
			sub
				addAll: each dimensions;
				yourself ]