accessing
excludedArticles
	^ self resultSets
		flatCollect: [ :set | set articles select: [ :art | art everyoneAgreesToExcludeIt ] ]