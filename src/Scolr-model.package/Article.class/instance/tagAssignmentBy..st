opinions-classifications
tagAssignmentBy: aUser
	^ tagAssignments
		detect: [ :each | each author = aUser ]
		ifNone: [ nil ]