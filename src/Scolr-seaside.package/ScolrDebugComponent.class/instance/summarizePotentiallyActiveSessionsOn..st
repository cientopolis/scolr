rendering
summarizePotentiallyActiveSessionsOn: html

	html paragraph: [ 
		html
			strong:
				'Potentially active (non-expired, authenticated) sessions: ';
			text: (self application sessions select: [ :each | 
						 each expired not & each authenticated ]) size printString.
		html space.
		html anchor
			callback: [ listActive := true ];
			with: '[List]' ]