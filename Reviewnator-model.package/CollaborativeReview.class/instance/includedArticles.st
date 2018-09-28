as yet unclassified
includedArticles
	^ self resultSets flatCollect: [ :set | set articles select: [ :art | art everyoneAgreesToIncludeIt ] ]