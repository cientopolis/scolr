rendering
renderTableRowFor: resultSet on: html
	| td total agreedToInclude agreedToExclude waitingForTheUser |
	total := resultSet articles size.
	agreedToInclude := resultSet countOfArticlesEveryoneAgreesToInclude.
	agreedToExclude := resultSet countOfArticlesEveryoneAgreesToExclude.
	waitingForTheUser := resultSet
		countOfArticlesWaitingForClassificationBy: self currentUser.
	html
		tableRow: [ html
				tableData: [ html
						text: 'From: ' , resultSet database;
						break;
						text: 'Search query: ' , resultSet searchString;
						break;
						text: 'Notes: ' , resultSet comments ].
			html tableData: [ html text: total printString ].
			html tableData: [ html text: agreedToInclude printString ].
			html tableData: [ html text: agreedToExclude printString ].
			td := html tableData.
			waitingForTheUser > 0
				ifTrue: [ td style: 'color: rgba(255, 0, 0, 0.59);' ].
			td with: [ html text: waitingForTheUser printString ].
			html tableData:
				[ self renderActionButtonFor: resultSet on: html ] ]