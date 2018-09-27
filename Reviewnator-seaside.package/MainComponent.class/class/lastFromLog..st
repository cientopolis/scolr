class initialization
lastFromLog: n
	transientEventLog ifEmpty: [ ^ Set new ].
	^ transientEventLog last: (n min: transientEventLog size)