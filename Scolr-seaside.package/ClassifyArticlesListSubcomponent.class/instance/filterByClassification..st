fitering
filterByClassification: aCollectionOfArticles
	^ aCollectionOfArticles
		reject: [ :each | 
			each everyoneAgreesToExcludeIt & hideExcluded
				or: [ each everyoneAgreesToIncludeIt & hideIncluded
						or: [ (each classificationBy: self currentUser) notNil & hideDone ] ] ]