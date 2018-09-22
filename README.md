# reviewnator

A tool to suport collaborative systematic reviews

#Dependencies
Dependencies are now handled via the monticello configuration: ConfigurationOfReviewnator. 

#Building

To build, evaluate the following expresions:

```
(IceRepositoryCreator new
   url: 'https://casco@bitbucket.org/casco/reviewnator.git';
   createRepository) updatePackage: 'ConfigurationOfReviewnator'.

(ConfigurationOfReviewnator project version: '1.0') load.

ReviewnatorDeployer prepareForDeployment.
```

Then save your image. 

When you open your image again, Reviewnator will be running on:
 http://localhost:8080/reviewnator


# Contributing
Checkout the repository to your local machine. 

From the command line, using git commands, checkout the branch/revision you want to work with.

Then, add the cloned repository as a an Iceberg local repository.
