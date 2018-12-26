# reviewnator

A tool to suport collaborative systematic reviews

## Dependencies

Dependencies are now handled via the monticello configuration: ConfigurationOfReviewnator. 

## Building

To build and deploy, evaluate the following expresions:

```Smalltalk

Metacello new
   baseline: 'Reviewnator';
   repository: 'bitbucket://casco/reviewnator';
   load.

ReviewnatorDeployer prepareForDeploymentOnPort: 8000 adminEmail: 'scolr@yourdomain.com' smtp: 'yourdomain'.

WAAdmin defaultDispatcher defaultName: 'scolr'.
```

Then save your image.

When you open your image again, Reviewnator will be running on:
 <http://localhost:8000/scolr>

## Contributing

Checkout the repository to your local machine.

From the command line, using git commands, checkout the branch/revision you want to work with.

Then, add the cloned repository as a an Iceberg local repository.
