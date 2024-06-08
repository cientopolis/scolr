private
emailTextForException: anException

	^ String streamContents: [ :stream | 
		  anException signalerContext errorReportOn: stream ]