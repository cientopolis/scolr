rendering
renderTagsInUseOn: html
	html strong: 'Tags in use: '.
	self parent tagsInUse asSortedCollection
		do: [ :each | 
			(tags includes: each)
				ifFalse: [ html anchor
						onClick:
							(html jQuery
								script: [ :s | 
									s << (s jQuery: #tagsField) append: ', ' , each ]);
						with: each ]
				ifTrue: [ html text: each ] ]
		separatedBy: [ html text: ', ' ].
	html
		break;
		text: 'Use comma to separate tags.'