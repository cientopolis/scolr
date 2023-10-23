rendering hooks
download: each

	self requestContext respond: [ :response | 
		response
			contentType: (WAMimeType main: 'application' sub: 'x-tar');
			nextPutAll: each readStream contents;
			attachmentWithFileName: each basename ]