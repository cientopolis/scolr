reading
importRow: row ignoreDuplicatesIn: articles
	| article selector |
	article := Article new.
	row
		with: columnLabels
		do: [ :value :label | 
			selector := self columnToSelectorMap at: label asLowercase ifAbsent: nil.
			selector ifNotNil: [ article perform: (selector , ':') asSymbol with: (value ifNil: [ '' ]) ] ].
	(self hasCrititalMissingProperties: article) | (articles select: [ :each | each mightBeADuplicateOf: article ]) notEmpty
		ifTrue: [ importReport ignoreArticle: article ]
		ifFalse: [ self articles add: article ]