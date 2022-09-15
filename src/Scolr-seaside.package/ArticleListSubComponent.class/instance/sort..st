sorting
sort: aCollectionOfArticles
	^ aCollectionOfArticles
		asSortedCollection: [ :a :b | 
			sortAscending
				ifTrue: [ (a perform: sortSelector) < (b perform: sortSelector) ]
				ifFalse: [ (a perform: sortSelector) > (b perform: sortSelector) ] ]