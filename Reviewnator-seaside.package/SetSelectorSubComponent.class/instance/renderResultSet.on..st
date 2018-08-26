rendering
renderResultSet: resultSet on: html
	| sum |
	sum := resultSet summaryFor: parent currentUser on: self parent coReview.
	html
		tableRow: [ html tableData: resultSet printString.
			html tableData: [ html text: sum included printString ].
			html tableData: [ html text: sum excluded printString ].
			html tableData: [ html text: sum disagreement printString ].
			html tableData: [ html text: sum waiting printString ].
			html
				tableData: [ (parent selectedResulSets includes: resultSet)
						ifTrue: [ html anchor
								callback: [ parent selectedResulSets remove: resultSet ];
								with: 'unselect';
								yourself ]
						ifFalse: [ html anchor
								callback: [ parent selectedResulSets add: resultSet ];
								with: 'select';
								yourself ] ] ]