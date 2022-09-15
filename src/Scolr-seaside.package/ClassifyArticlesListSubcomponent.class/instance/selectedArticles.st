accessing
selectedArticles
	self parent selectedResulSets ifEmpty: [ ^ Set new ].
	^ (self parent selectedResulSets collect: #articles)
		fold: [ :first :second | first , second ]