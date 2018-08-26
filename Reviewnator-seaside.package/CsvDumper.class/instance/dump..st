private
dump: coReview
	| stream sum |
	stream := String new writeStream.
	self stream: self headingRow into: stream.
	coReview allArticles
		do: [ :each | 
			sum := each summaryFor: nil on:  coReview.
			self stream: (self articleSummaryToRow: sum) into: stream ].
	^ stream contents