rendering
renderClassifyActivityOn: html
	self coReview resultSets size = 0
		ifTrue:
			[ html paragraph: 'You first need to upload some article lists.' ]
		ifFalse: [ html render: classifyArticlesListSubcomponent ]