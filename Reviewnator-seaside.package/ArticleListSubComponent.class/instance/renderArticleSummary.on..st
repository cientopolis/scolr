renderning
renderArticleSummary: article on: html
	| classificacions |
	html
		emphasis: article title , '. ';
		text: article authors , ' (' , article year , ') '.
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