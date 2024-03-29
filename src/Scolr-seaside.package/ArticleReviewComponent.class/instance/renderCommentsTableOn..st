rendering
renderCommentsTableOn: html
	| dimensions |
	dimensions := Set withAll: (self coReview reviewDimensions ifEmpty: [ Set with: 'General remarks' ]).
	dimensions addAll: opinionToEdit dimensions.
	dimensions := dimensions asSortedCollection.
	html tbsTable
		beBordered;
		beHover;
		with: [ html
				tableHead: [ html
						tableHeading: 'Review dimension';
						tableHeading: 'Review text' ].
			html
				tableBody: [ dimensions
						do: [ :each | 
							html
								tableRow: [ html tableData: [ html text: each ].
									html
										tableData: [ html textArea
												columns: 80;
												rows: 4;
												value: (opinionToEdit commentInDimension: each);
												callback: [ :value | opinionToEdit comment: value inDimension: each ].
											html
												break;
												small: 'Use two new lines if you want to separate paragraphs.';
												break ] ] ].
					html
						tableRow: [ html
								tableData: [ html submitButton
										callback: [ self addNewReviewDimension ];
										value: 'Add a new dimension' ].
							html
								tableData:
									[ html text: 'Only add a new dimension if you are really sure about it. Dimensions that are never used (left empty) are automatically removed.' ] ] ] ]