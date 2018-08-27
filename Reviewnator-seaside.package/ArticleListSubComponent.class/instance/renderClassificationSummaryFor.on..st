renderning
renderClassificationSummaryFor: article on: html
	| summary in out total undecided |
	summary := article summaryFor: self currentUser on: self coReview.
	in := summary included.
	out := summary excluded.
	undecided := summary undecided.
	total := in + out + undecided.
	html
		text: 'In: ' , in printString , '/' , total printString;
		break;
		text: 'Out: ' , out printString , '/' , total printString;
		break;
		text: 'Undecided: ' , undecided printString , '/' , total printString