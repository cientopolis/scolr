rendering
renderTableRowFor: resultSet on: html
	| sum |
	sum := resultSet summaryFor: parent currentUser on: self parent coReview.
	html
		tableRow: [ html
				tableData: [ html
						text: '(' , resultSet articles size printString , ' articles) from: ' , resultSet database;
						break;
						text: 'Search query: ' , resultSet searchString;
						break;
						text: 'Notes: ' , resultSet comments ].
			html tableData: [ html text: sum included printString ].
			html tableData: [ html text: sum excluded printString ].
			html tableData: [ html text: sum disagreement printString ].
			html tableData: [ html text: sum waiting printString ].
			html
				tableData: [ (parent selectedResulSets includes: resultSet)
						ifTrue: [ html tbsButton
								beExtraSmall;
								with: [ html anchor
										callback: [ parent selectedResulSets remove: resultSet ];
										with: 'Deselect' ] ]
						ifFalse: [ html tbsButton
								beExtraSmall;
								with: [ html anchor
										callback: [ parent selectedResulSets add: resultSet ];
										with: 'Select' ] ] ] ]