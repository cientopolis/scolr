accessing
selectedArticles
	^ (self parent selectedResulSets collect: #articles) fold: [ :first :second | first , second ]