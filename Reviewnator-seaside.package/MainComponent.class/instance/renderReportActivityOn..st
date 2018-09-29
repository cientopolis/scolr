rendering
renderReportActivityOn: html
	self coReview reviews
		ifEmpty: [ html paragraph: 'Your report will be available, as soon as some reviews are made.' ]
		ifNotEmpty: [ html render: reportSubcomponent ]