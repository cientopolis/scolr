fitering
filteredArticles
	^ self filterByYear: (self filterByTag: self selectedArticles)