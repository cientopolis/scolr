logging
log: text
	^ MainComponent log: (ReviewnatorLogEvent text: text date: Date today user: self currentUser)