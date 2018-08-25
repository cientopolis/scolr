initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	" *** Edit the following to properly initialize instance variables ***"
	authors := nil.
	title := nil.
	year := nil.
	sourceTitle := nil.
	volume := nil.
	issue := nil.
	articleNumber := nil.
	pageStart := nil.
	pageEnd := nil.
	pageCount := nil.
	citedBy := nil.
	doi := nil.
	link := nil.
	affiliations := nil.
	authorsWithAffiliations := nil.
	abstract := nil.
	authorKeywords := nil.
	documenttype := nil.
	source := nil.
	eid := nil.
	" *** And replace this comment with additional initialization code *** "
	^self