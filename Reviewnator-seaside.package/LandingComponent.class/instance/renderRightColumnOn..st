rendering
renderRightColumnOn: html
	html heading
		level: 4;
		with: 'Recent activity'.
	(MainComponent lastFromLog: 6) reversed do: [ :each | html paragraph: each printString ].
	html anchor 
	callback: [ ];
	with: 'View all ...'