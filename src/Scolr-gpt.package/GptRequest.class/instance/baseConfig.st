configuration
baseConfig

	^ Dictionary new
		  at: 'model' put: 'gpt-4o';
		  at: 'temperature' put: 0.9;
		  at: 'max_tokens' put: 1000;
		  at: 'top_p' put: 1;
		  at: 'frequency_penalty' put: 0.0;
		  at: 'presence_penalty' put: 0.6;
		  yourself