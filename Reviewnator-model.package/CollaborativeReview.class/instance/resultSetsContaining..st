accessing
resultSetsContaining: anArticle
	^ resultSets select: [ :each | each articles contains: [ :art | art title = anArticle title ] ]