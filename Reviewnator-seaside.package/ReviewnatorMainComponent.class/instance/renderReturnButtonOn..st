rendering
renderReturnButtonOn: html
	html tbsNavbarButton
		tbsPullRight;
		with: [ html anchor
				callback: [ self logout ];
				with: 'Log out' ]