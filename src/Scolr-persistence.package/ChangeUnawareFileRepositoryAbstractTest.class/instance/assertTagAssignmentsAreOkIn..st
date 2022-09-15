testing
assertTagAssignmentsAreOkIn: coReview
	self assert: coReview tagAssignments size equals: 2.
	self
		assertCollection: coReview tagsInUse
		equals: (Set with: 'one' with: 'two' with: 'three')