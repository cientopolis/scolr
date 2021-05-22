testing
assertClassificationAndReviewAreOkIn: coReview
	| classification review |
	classification := coReview classifications first.
	self assert: classification date equals: Date today.
	self assert: classification comments equals: 'comment one'.
	self assert: classification toExclude.
	review := coReview reviews first.
	self assert: review date equals: Date today.
	self assert: (review commentInDimension: 'dimension one') equals: 'comment one'.
	self assert: (review commentInDimension: 'dimension two') equals: 'comment two'.
