rendering hooks
renderReturnButtonOn: html
	html tbsNavbarButton
		tbsPullRight;
		with: [ html anchor
				callback: [ self answer ];
				with: 'Back' ]