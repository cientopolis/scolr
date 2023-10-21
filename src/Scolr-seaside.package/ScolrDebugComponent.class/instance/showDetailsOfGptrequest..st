rendering
showDetailsOfGptrequest: each

	self show: (GptRequestViewerComponent
			 new
			 gptRequest: each;
			 yourself)