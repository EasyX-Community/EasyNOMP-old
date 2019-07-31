## Docker Instructions
-------

***NOTE:*** _LeshaCat will redo docker as soon as done with block explorer/etc_<br />

-------
### Configure Pool

Correct configs appropriately to your environment in docker directory

- Inside THIS directory, create a "config" directory 
- ***mkdir config***
- ***cp -R ../coins/ config/***
- ***cp -R ../pool_configs/ config/***
- ***cp ../config_example.json config/config.json***
- Edit config/config.json, config/coins/*.json, and config/pool_configs/*.json

#### Build Docker
-------
```
cd docker
docker build -t nomp .
docker run -d --name nomp -v $(pwd)/config:/opt/config nomp
```

You will need to expose some ports to make it accessible from outside. You can achieve this by adding option -p HOST_PORT:CONTAINER_PORT in the last step

You can see the logs of the server with ```docker logs -f nomp```, or jump into container with ```docker exec -it nomp```.

***EOF***
