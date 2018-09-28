class initialization
lastFromLog: n
	transientEventLog ifEmpty: [ ^ OrderedCollection new ].
	^ transientEventLog last: (n min: transientEventLog size)