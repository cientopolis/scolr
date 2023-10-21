rendering
listActiveSessionsOn: html

	listGptRequests ifTrue: [ 
		listGptRequests := false.
		html heading
			level3;
			with: 'Requests to GPT since last cleanup'.
		html unorderedList: [ 
			SlrAssistant requestLog do: [ :each | 
				html listItem: [ 
					html anchor
						callback: [ self showDetailsOfGptrequest: each ];
						with: each dateAndTime printString.
					each isError ifTrue: [ 
						html
							space;
							text: '(error)' ] ] ] ] ]