api
send: aScolrEmail

	| client |
	self apiKey ifNil: [ self error: 'API not properly configured' ].

	client := ZnClient new
		          beOneShot;
		          url: 'https://api.mailersend.com/v1/email';
		          headerAt: 'Content-Type' put: 'application/json';
		          headerAt: 'X-Requested-With' put: 'XMLHttpRequest';
		          headerAt: 'Authorization' put: 'Bearer ' , self apiKey;
		          entity: aScolrEmail asZnEntity.
	client post.
	^ client response