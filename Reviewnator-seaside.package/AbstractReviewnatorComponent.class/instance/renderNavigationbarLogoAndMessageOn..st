rendering
renderNavigationbarLogoAndMessageOn: html
	html
		tbsNavbarHeader: [ html image
				tbsPullLeft;
				style: 'padding: 10px;';
				url: ReviewnatorFileLibrary / #reviewnatorsmallPng.
			html tbsNavbarBrand
				with: 'Collaborative Open Literature Reviews' ]