rendering
renderNavigationbarOn: html
	html tbsNavbar
		beDefault;
		with: [ html
				tbsContainer: [ html
						tbsNavbarHeader: [ html image
								tbsPullLeft;
								style: 'padding: 10px;';
								url: ReviewnatorFileLibrary / #reviewnatorsmallPng.
							html tbsNavbarBrand with: 'Reviewnator: collaborative, systematic literature reviews' ].
					self renderReturnButtonOn: html ] ]