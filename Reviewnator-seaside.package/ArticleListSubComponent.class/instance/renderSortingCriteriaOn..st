renderning
renderSortingCriteriaOn: html

	html text: 'Sort by year ('.
	(html anchor)
		callback: [sortBlock := self sortUpByYearBlock];
		with: 'up'.
	html text: '/'.
	(html anchor)
		callback: [sortBlock := self sortDownByYearBlock];
		with: 'down'.
	html text: ') by title ('.
	(html anchor)
		callback: [sortBlock := self sortUpByTitleBlock];
		with: 'up'.
	html text: '/'.
	(html anchor)
		callback: [sortBlock := self sortDownByTitleBlock];
		with: 'down'.
	html text: ') by authors ('.
	(html anchor)
		callback: [sortBlock := self sortUpByAuthorBlock];
		with: 'up'.
	html text: '/'.
	(html anchor)
		callback: [sortBlock := self sortDownByAuthorBlock];
		with: 'down'.
	html text: ')'.