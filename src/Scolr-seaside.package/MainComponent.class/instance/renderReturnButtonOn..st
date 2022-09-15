rendering
renderReturnButtonOn: html
	| button |
	html anchor
		callback: [ self logout ];
		with: [ button := html tbsNavbarButton.
			button
				tbsPullRight;
				with: 'Log out ' , currentUser username ]