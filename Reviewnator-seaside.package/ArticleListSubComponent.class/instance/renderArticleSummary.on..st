renderning-list
renderArticleSummary: article on: html
	html
		emphasis: article title , '. ';
		text: article authors , ' (' , article year , ') '.
	showClassificationComments
		ifTrue: [ article classifications notEmpty
				ifTrue: [ html orderedList
						with: [ article classifications
								do: [ :each | 
									html
										listItem: [ html
												strong: each author username , ': (' , each decision , ') ';
												text: each comments ] ] ] ] ]