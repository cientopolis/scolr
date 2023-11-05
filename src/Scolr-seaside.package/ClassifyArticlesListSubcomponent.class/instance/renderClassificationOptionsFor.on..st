rendering
renderClassificationOptionsFor: article on: html

	| classification |
	classification := article classificationBy: self currentUser.
	classification
		ifNil: [ html paragraph: '?' ]
		ifNotNil: [ html paragraph: classification decision ].
	html anchor
		callback: [ self parent classifyArticle: article ];
		with: [ 
			html tbsButton
				beExtraSmall;
				with:
					(classification ifNil: [ 'classify' ] ifNotNil: [ 'change' ]) ].
	classification ifNotNil: [ 
		html space.


		html anchor
			callback: [ self forgetClassificationFor: article ];
			with: [ 
				html tbsButton
					beExtraSmall;
					with: 'forget' ] ]