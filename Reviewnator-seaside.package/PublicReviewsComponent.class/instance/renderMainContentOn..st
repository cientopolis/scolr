rendering
renderMainContentOn: html
	| title |
	html heading
		level: 2;
		with: 'Explore open reviews'.
	html
		unorderedList: [ self configuration accessCredentials
				do: [ :each | 
					title := each cachedCoReviewTitle isNil
						ifTrue: [ 'untitled review' ]
						ifFalse: [ each cachedCoReviewTitle ].
					html listItem: title ] ]