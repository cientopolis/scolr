rendering
renderResultSetListOn: html
	html table
		with: [ 
			html
				tableRow: [ 
					html tableData: [ html strong: 'Result set' ].
					html tableData: [ html strong: 'in' ].
					html tableData: [ html strong: 'out' ].
					html tableData: [ html strong: 'conflict' ].
					html tableData: [ html strong: 'waiting' ].
					html tableData: [ html strong: 'display' ] ].
			 self parent coReview resultSets do: [ :each | self renderResultSet: each on: html ] ]