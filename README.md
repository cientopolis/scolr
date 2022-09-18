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
   load.
```

Then, evaluate this expression to prepare it for deployment.

```Smalltalk
| deployer |

ReviewnatorDeployer
  adminEmail: 'scolr@yourdomain.com';
  smtpServer: 'smtp.yourdomain.com';
  smtpPort: 587;
  smtpUsername: 'scolr@yourdomain.com';
  smtpPassword: 'somesecret';
  prepareForDeploymentOnPort: 8080.

WAAdmin defaultDispatcher defaultName: 'scolr'.

```

Then save your image.

When you open your image again, Reviewnator will be running on:
 <http://localhost:8000/scolr>

## Contributing

Checkout the repository to your local machine.

From the command line, using git commands, checkout the branch/revision you want to work with.

Then, add the cloned repository as a an Iceberg local repository.

## Migrating to a newer version of Pharo

Algouth this code will work on versions 7 and 8 of Pharo, if you have data you created with Pharo 7 or older you will have issues migrating (Fuel changed its serialization format). We will try to solve this soon. 
