result-sets
removeResultSet: aResultSet
	| msg countOfReviews |
	msg := 'Are you sure? This action will remove ' , aResultSet articles size printString , ' article. '.
	countOfReviews := aResultSet countOfReviews.
	countOfReviews > 0
		ifTrue: [ msg := msg , ' It will also remove ' , countOfReviews printString , ' reviews that were made to those articles.' ].
	(self
		call:
			(ConfirmDialogComponent
				text: msg))
		ifTrue: [ self coReview removeResultSet: aResultSet.
			self save.
			selectedResulSets remove: aResultSet ifAbsent: [  ] ]