rendering
renderSummaryOn: html

	html heading
		level: 1;
		with: self coReview title.
	html heading
		level: 2;
		with: 'Introduction'.
	html paragraph: self coReview notes.
	html paragraph: [ html strong: 'Inclusion criteria' ].
	html paragraph: self coReview inclusionCriteria.
	html paragraph: [ html strong: 'Exclusion criteria' ].
	html paragraph: self coReview exclusionCriteria.
	html paragraph: [ html strong: 'Contributors' ].
	html
		unorderedList: [ self coReview contributors do: [ :each | html listItem: each username ] ]