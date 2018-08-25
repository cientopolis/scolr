rendering-articles
filteredArticles


	^self selectedArticles reject: [:each | activeHidingFilters inject: false into: [:show :blockingFilter | show or: [blockingFilter value: self coReview value: each value: currentUser]]]