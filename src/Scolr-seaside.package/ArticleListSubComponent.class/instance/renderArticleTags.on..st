renderning-list
renderArticleTags: article on: html
	html
		text:
			(self
				stringFromTagSet: (article tags asSortedCollection ifEmpty: [ Set with: '?' ]))