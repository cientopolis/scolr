rendering-articles
renderArticleSummary: article on: html
	| classificacions |
	html
		emphasis: article title , '. ';
		text: article authors , ' (' , article year , ') '.
	article uploadedFilename isNil
		ifTrue: [ 
			html anchor
				callback: [ self uploadFileFor: article ];
				with: '(upload file)' ]
		ifFalse: [ 
			html anchor
				callback: [ self download: article ];
				with: '(' , article uploadedFilename , ')' ].
	showClassificationComments
		ifTrue: [ 
			classificacions := self coReview classificationsFor: article.
			classificacions notEmpty
				ifTrue: [ 
					html orderedList
						with: [ 
							classificacions
								do: [ :each | 
									html
										listItem: [ 
											html
												strong: each author username;
												text: ': ' , each comments ] ] ] ] ]