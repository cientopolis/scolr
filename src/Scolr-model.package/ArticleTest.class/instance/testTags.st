tests
testTags
	self assert: articleOne tags isEmpty.
	articleOne
		addTagAssignment:
			(TagAssignment new
				tags: (Set with: 'bTag' with: 'aTag');
				yourself).
	self assertCollection: articleOne tags equals: (Set  with: 'aTag' with: 'bTag').
	articleOne
		addTagAssignment:
			(TagAssignment  new
				tags: (Set with: 'aTag' with: 'cTag');
				yourself).
	self assertCollection: articleOne tags equals: (Set  with: 'aTag' with: 'bTag' with: 'cTag').
