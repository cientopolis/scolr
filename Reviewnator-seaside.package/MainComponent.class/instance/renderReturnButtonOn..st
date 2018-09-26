rendering
renderReturnButtonOn: html
	| button |
	button := html tbsNavbarButton.
	self isAdmin
		ifTrue: [ button beWarning ].
	button
		tbsPullRight;
		with: [ html anchor
				callback: [ self logout ];
				with:
					'Log out '
						,
							(self isAdmin
								ifTrue: [ currentUser username, ' (admin access)' ]
								ifFalse: [ currentUser username ]) ]