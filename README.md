# reviewnator

A tool to suport collaborative systematic reviews

## Dependencies

Dependencies are now handled via the monticello configuration: ConfigurationOfReviewnator. 

## Building

To build, evaluate the following expresions:

```Smalltalk

Metacello new
   baseline: 'Reviewnator';
   repository: 'bitbucket://casco/reviewnator';
   load.

ReviewnatorDeployer prepareForDeployment.
```

Then save your image.

When you open your image again, Reviewnator will be running on:
 <http://localhost:8080/reviewnator>

## Contributing

Checkout the repository to your local machine. 

From the command line, using git commands, checkout the branch/revision you want to work with.

Then, add the cloned repository as a an Iceberg local repository.
