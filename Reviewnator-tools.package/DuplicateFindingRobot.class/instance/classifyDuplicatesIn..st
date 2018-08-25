tasks
classifyDuplicatesIn: aCollaborativeReview

	| sets duplicates robot |
	sets := aCollaborativeReview resultSets asOrderedCollection.
	robot := aCollaborativeReview newOrExistingUserNamed: self class name.
	alreadySeen := Set withAll: (sets removeFirst articles collect: [:art | art title]).
	duplicates := Set new.
	sets do: 
			[:set |
			set articles
				do: [:art | (alreadySeen includes: art title) ifTrue: [duplicates add: art]].
			alreadySeen addAll: set articles ].
	duplicates do: 
			[:art |
			| cl |
			cl := Classification new.
			cl
				article: art;
				author: robot;
				comments: 'Already present in a different result set';
				date: Date today;
				excludeIt.
			aCollaborativeReview classifications add: cl]