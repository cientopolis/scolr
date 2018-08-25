rendering
renderCommentsTableOn: html
	| dimensions |
	dimensions := Set withAll: self coReview reviewDimensions.
	dimensions addAll: opinionToEdit dimensions.
	html table
		with: [ 
			html
				tableRow: [ 
					html
						tableData: 'Review dimension';
						tableData: 'Review text' ].
			dimensions
				do: [ :each | 
					html
						tableRow: [ 
							html tableData: [ html text: each ].
							html
								tableData: [ 
									html textArea
										columns: 80;
										rows: 4;
										value: (opinionToEdit commentInDimension: each);
										callback: [ :value | opinionToEdit comment: value inDimension: each ] ] ] ].
			html
				tableRow: [ 
					html
						tableData: [ 
							html anchor
								callback: [ self addNewReviewDimension ];
								with: 'Add new' ].
					html tableData: [ html text: 'only add a new dimension if you are really sure about it - it will be available for now on' ] ] ]