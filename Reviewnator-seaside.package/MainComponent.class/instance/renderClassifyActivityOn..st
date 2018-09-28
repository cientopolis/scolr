rendering
renderClassifyActivityOn: html
	self coReview resultSets size = 0
		ifTrue: [ html paragraph: 'You first need to upload some article lists.'.
			html
				paragraph: [ html anchor
						callback: [ self uploadResultSet ];
						with: [ html tbsButton
								beExtraSmall;
								with: 'Upload' ] ] ]
		ifFalse: [ html render: setSelectorSubcomponent.
			html render: classifyArticlesListSubcomponent ]