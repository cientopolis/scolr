rendering
renderReturnButtonOn: html
	| button |
	button := html tbsNavbarButton.
	button
		tbsPullRight;
		with: [ html anchor
				callback: [ self logout ];
				with: 'Log out ' , currentUser username ]