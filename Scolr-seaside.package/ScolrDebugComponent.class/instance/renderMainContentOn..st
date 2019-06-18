rendering
renderMainContentOn: html
	html heading: 'Sessions'.
	html
		paragraph: [ html
				strong: 'Potentially active (non-expired, authenticated) sessions: ';
				text:
					(self application sessions select: [ :each | each expired not & each authenticated ])
						size printString.
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
				with: 'Active (authenticated/non-expired) sessions'.
			html
				unorderedList: [ (self application sessions select: [ :each | each expired not & each authenticated ])
						do: [ :each | 
							html
								listItem: [ html
										text: each createdTime printString , ' (' , each accessCode , '/' , each user username , ')' ] ] ] ]