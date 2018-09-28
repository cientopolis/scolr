rendering
renderNavigationbarLogoAndMessageOn: html
	html
		tbsNavbarHeader: [ html image
				tbsPullLeft;
				style: 'padding: 10px;';
				url: ReviewnatorFileLibrary / #reviewnatorsmallPng.
			html tbsNavbarBrand
				with: 'Scolr: Support for Collaborative, Open, Literature Reviews.' ]