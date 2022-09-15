accessing
contributors
	"Users that did something"

	^ self classifications , self reviews
		inject: Set new
		into: [ :sub :each | 
			sub
				add: each author;
				yourself ]