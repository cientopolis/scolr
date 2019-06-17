rendering
renderMainContentOn: html
	html heading: 'Sessions'.
	html
		paragraph: [ html
				strong: 'Potentially active (non-expired) sessions: ';
				text: (self application sessions select: [ :each | each expired not ]) size printString.
			html space.
			html anchor
				callback: [ listActive := true ];
				with: '[List]' ].
	html
		paragraph: [ html
				strong: 'Expired sessions: ';
				text: (self application sessions select: [ :each | each expired ]) size printString ].
	html anchor
		callback: [ Smalltalk garbageCollect ];
		with: ' [Garbage collect]'.
	listActive
		ifTrue: [ listActive := false.
			html heading
				level3;
				with: 'Active sessions'.
			html
				unorderedList: [ (self application sessions select: [ :each | each expired not ]) do: [ :each | html listItem: [ html text: each createdTime ] ] ] ]