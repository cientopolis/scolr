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
						strong: 'From: ';
						text: resultSet database;
						break;
						strong: 'Search query: ';
						text: resultSet searchString;
						break;
						strong: 'Comments: ';
						break.
					self renderMultilineString: resultSet comments withLineBreaksOn: html ].
			html
				tableData: [ html text: total printString.
					(parent selectedResulSets includes: resultSet)
						ifFalse: [ html text: ' (hidden)' ] ].
			td := html tableData.
			waitingForTheUser > 0
				ifTrue: [ td style: 'color: rgba(255, 0, 0, 0.59);' ].
			td with: [ html text: waitingForTheUser printString ].
			html tableData: [ self renderActionButtonFor: resultSet on: html ] ]