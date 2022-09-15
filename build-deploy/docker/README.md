# To build and deploy to the public Docker repository

````
docker build --no-cache -t cientopolis/scolr:latest

docker tag scolr:latest cientopolis/memorias:[commit-hash]

docker push cientopolis/memorias:latest

docker push cientopolis/memorias:[commit-hash]
````

# To deploy / run

````
sudo docker pull cientopolis/scolr:latest

sudo docker compose down

sudo docker compose up -d
````


# About the data folder

The docker-compose file mounts a data folder. 

In the data folder you will find a reviewnator-config.json file, and a reviewnator folder where projects are stored as individual json files.

If missing, the reviewnator-config.json file, and the reviewnator folder will be created.
