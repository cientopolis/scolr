rendering-classification-phase
renderReportOfClassificationTagsIn: articles on: html comment: text
	| aBagOfTags report |
	aBagOfTags := articles flatCollect: [ :each | each classificationTags ] as: Bag.
	aBagOfTags notEmpty
		ifTrue: [ report := (aBagOfTags asSet asSortedCollection
				collect: [ :tag | tag , ' (' , (aBagOfTags occurrencesOf: tag) printString , ')' ])
				fold: [ :a :b | a , ', ' , b ].
			html paragraph: [ html text: text , report ] ]