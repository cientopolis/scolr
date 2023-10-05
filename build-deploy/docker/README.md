# To build and deploy to the public Docker repository

````
docker build --no-cache -t scolr:current .

docker tag scolr:current cientopolis/scolr:[commit-hash]

docker tag scolr:current cientopolis/scolr:latest

docker push cientopolis/scolr:[commit-hash]

docker push cientopolis/scolr:latest

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
