initialization
renderContentOn: html
	html
		paragraph: [ tags sortedElements 
				do: [ :ass | html text: ass key , ' (' , ass value greaseString , ')' ]
				separatedBy: [ html text: ', ' ] ]