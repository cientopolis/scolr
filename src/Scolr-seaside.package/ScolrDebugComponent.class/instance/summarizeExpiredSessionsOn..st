rendering
summarizeExpiredSessionsOn: html

	html paragraph: [ 
		html
			strong: 'Expired sessions: ';
			text:
				(self application sessions select: [ :each | each expired ]) size
					printString.
		html space.
		html anchor
			callback: [ Smalltalk garbageCollect ];
			with: ' [Garbage collect]' ]