fitering
filteredArticles
	^ self
		filterByTag: (self filterByClassification: self selectedArticles)