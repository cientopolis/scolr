rendering
renderServerStatusOn: html

	| memNow sessionsNow |
	memNow := (Smalltalk vm memorySize / 1048576) truncated printString.
	sessionsNow := self activeSessions.
	html paragraph with: [ 
		html small: [ 
			html text: ' - ' , memNow , 'MB now, '
				, (MaxMemory / 1048576) truncated printString , 'MB top - '
				, sessionsNow printString , ' now, ' , MaxSessions printString
				, ' top  - '
				, (self application sessions size - sessionsNow) printString
				, ' ghosts' ] ]