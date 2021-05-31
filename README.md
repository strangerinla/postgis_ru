# postgis_ru Docker container

This project includes DOCKERFILE and some other stuff to create [Docker](https://www.docker.com/) containers for postgis databases. 

# Usage

Run `up.bat` from any location to build and run the container.

The folder `./data` will be created if it does not exists.

Use the `./init` directory to store initialization script sql files. They will be executed in alphabetical order if the `./data` directory does not exist. 

# Versions

The container extends [`postgres:12`](https://hub.docker.com/layers/postgres/library/postgres/12/images/sha256-328b452c593fa415c523ac54ec06a1170c4fccf170f41aa967ab159765c44f89) image installing [`postgis-3`](https://postgis.net/2019/10/20/postgis-3.0.0/) package and russian locales. `docker-compose.yml` also contains standalone version of [`Adminer`](https://hub.docker.com/layers/adminer/library/adminer/standalone/images/sha256-7c35ea4895ace6033f7171efb53e515ba929e287b75c8c916dd3e0d7dc4634f6) 
