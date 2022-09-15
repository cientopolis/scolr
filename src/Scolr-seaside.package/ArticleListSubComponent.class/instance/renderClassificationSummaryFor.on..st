renderning-list
renderClassificationSummaryFor: article on: html
	| in out total undecided |
	in := article includeItCount.
	out := article excludeItCount.
	total := article classifications size.
	undecided := total - in - out.
	(self shouldConceal: article)
		ifTrue: [ html
				text: 'In: ?';
				break;
				text: 'Out: ?' ]
		ifFalse: [ html
				text: 'In: ' , in printString;
				break;
				text: 'Out: ' , out printString ]