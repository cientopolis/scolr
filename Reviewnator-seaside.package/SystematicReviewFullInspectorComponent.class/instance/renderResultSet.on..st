rendering-resultsets
renderResultSet: resultSet on: html
	| sum |
	sum := resultSet summaryFor: currentUser on: self coReview.
	html
		tableRow: [ 
			html tableData: resultSet printString.
			html tableData: [ html text: sum included printString  ].
			html tableData: [ html text: sum excluded printString].
			html tableData: [ html text: sum disagreement  printString ].
			html tableData: [ html text: sum waiting printString ].
			html
				tableData: [ 
					(selectedResulSets includes: resultSet)
						ifTrue: [ 
							html anchor
								callback: [ selectedResulSets remove: resultSet ];
								with: 'unselect';
								yourself ]
						ifFalse: [ 
							html anchor
								callback: [ selectedResulSets add: resultSet ];
								with: 'select';
								yourself ] ] ]