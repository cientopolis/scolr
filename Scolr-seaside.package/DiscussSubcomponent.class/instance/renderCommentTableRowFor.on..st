rendering-comments
renderCommentTableRowFor: each on: html
	| email code |
	email := self accessCredential ifNil: [ '?' ] ifNotNil: [ each authorEmail ].
	code := self accessCredential ifNil: [ '?' ] ifNotNil: [ each offeredAccessCode ].
	html
		tableRow: [ html
				tableData: [ html
						text: email;
						break;
						text: each timestamp asDate printString ].
			html tableData: [ html text: each text ].
			html tableData: [ html text: code ] ]