rendering
renderFindAbstractLinkOn: html
	html anchor
		url: 'https://duckduckgo.com/?q=abstract+' , '"' , self article title , '"';
		target: '_new';
		with: [ html tbsGlyphIcon iconSearch ]