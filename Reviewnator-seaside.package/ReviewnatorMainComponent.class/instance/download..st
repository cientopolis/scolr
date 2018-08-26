callbacks - up/downloading
download: article
      | filename stream |

	filename := Preferences singleton uploadFolder / article uploadedFilename.
      filename exists ifTrue: [
	stream := filename readStream.
	stream binary.
	self requestContext respond: 
			[:response |
			response
				contentType: article mimeType;
				document: stream contents;
				attachmentWithFileName: article uploadedFilename]]