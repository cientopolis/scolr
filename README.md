# reviewnator

A tool to suport collaborative systematic reviews

## Dependencies

Dependencies are now handled via the monticello configuration: ConfigurationOfReviewnator. 


## Building with Docker and Docker compose

Read here: https://github.com/cientopolis/scolr-docker

## Building from source


To build (or update), evaluate the following expresion:

```Smalltalk

Metacello new
   baseline: 'Scolr';
   repository: 'github://cientopolis/scolr';
   onConflictUseLoaded;
   onWarningLog; 
   load.
```

Then, evaluate this expression to install it in developent mode.

```Smalltalk

| debug scolrApplication |

debug := true.

"These two env-vars are used by MailerSendAPI - it sure needs to be cleaned up"
OSEnvironment current at: 'NOTIFICATION_EMAIL' put: 'scolr@yourdomain.net' .
OSEnvironment current at: 'ADMIN_EMAIL' put: 'admin-scolr@yourdomain.net' .

debug ifFalse: [
	WAAdmin defaultServerManager adaptors
        do: [ :each | WAAdmin defaultServerManager unregister: each ].
	WAAdmin applicationDefaults
		removeParent: WADevelopmentConfiguration instance.
].

scolrApplication := WAAdmin register: LandingComponent asApplicationAt: LandingComponent relativeUrl.

scolrApplication sessionClass: ScolrSession.

scolrApplication
	addLibrary: JQDeploymentLibrary;
	addLibrary: TBSDeploymentLibrary.

WAAdmin defaultDispatcher defaultName: LandingComponent relativeUrl.

(WAAdmin defaultDispatcher handlerAt: LandingComponent relativeUrl) 
		exceptionHandler: ReviewnatorEmailErrorHandler.

ZnZincServerAdaptor startOn: 8080.

Transcript cr; show: 'Scolr started'; cr; cr.


```

Then save your image.

When you open your image again, Reviewnator will be running on:
 <http://localhost:8000/scolr>

## Email notifications

Scolr currently uses mailersend.com as the notification service. To enable it, you should include an API key inside a mailersend_apikey.secret file, in your working folder. 

## AI support

Scolr currently uses OpenAI's API for a couple of functionalities. To enable id, you should include an API key inside a openai_apikey.secret file, in your working folder. 

## Contributing

Checkout the repository to your local machine.

From the command line, using git commands, checkout the branch/revision you want to work with.

Then, add the cloned repository as a an Iceberg local repository.

## Migrating to a newer version of Pharo

Algouth this code will work on versions 7 and 8 of Pharo, if you have data you created with Pharo 7 or older you will have issues migrating (Fuel changed its serialization format). We will try to solve this soon. 
