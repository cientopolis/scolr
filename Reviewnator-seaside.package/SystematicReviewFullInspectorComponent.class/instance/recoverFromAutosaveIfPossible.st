save - restore
recoverFromAutosaveIfPossible

 self error: 'This is a bad idea - it was replicating objects - better keep everything in the singleton and restone on demand'
"	| autosaveFile |
	autosaveFile := Preferences singleton autosaveFile .
	autosaveFile exists
		ifTrue: [ 
			self recoverFromFile: autosaveFile ]"