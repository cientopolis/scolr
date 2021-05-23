fitering
filterByClassification: aCollectionOfArticles
	^ aCollectionOfArticles
		reject: [ :each | 
			activeHidingFilters
				inject: false
				into: [ :show :blockingFilter | 
					show
						or: [ blockingFilter
								value: self coReview
								value: each
								value: self currentUser ] ] ]