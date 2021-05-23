materialize
materializeLegacyTagAssingmnetsFrom: anArticleAsDictionary
	| classifications reviews tagAssignmentPairs tagAssignments |
	tagAssignmentPairs := Dictionary new.
	classifications := anArticleAsDictionary
		at: #classifications
		ifAbsent: [ Set new ].
	reviews := anArticleAsDictionary
		at: #classifications
		ifAbsent: [ Set new ].
	classifications , reviews
		do: [ :each | 
			(each at: 'tags')
				ifNotEmpty: [ :itsTags | 
					(tagAssignmentPairs
						at: (self userNamed: ((each at: 'author') at: 'username'))
						ifAbsentPut: [ Set new ]) addAll: itsTags ] ].
	tagAssignments := tagAssignmentPairs associations
		collect: [ :ass | 
			TagAssignment new
				date: Date today;
				author: ass key;
				tags: ass value;
				yourself ].
	^ tagAssignments