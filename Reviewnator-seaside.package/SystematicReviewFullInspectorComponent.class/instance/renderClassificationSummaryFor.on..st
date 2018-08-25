rendering-articles
renderClassificationSummaryFor: article on: html

	| summary in out total |
	summary  := article summaryFor: currentUser on: self coReview .
	in := summary included .
	out :=  summary excluded .
	total := in + out.
	html
		text: 'In:' , in printString , '/' , total printString;
		break;
		text: 'Out:' , out printString , '/' , total printString