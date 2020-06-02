# :wheel_of_dharma: Graph Theory Course's PySpark Workspace

## :whale: Docker installation and usage

### Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker-compose](https://docs.docker.com/compose/install/)

### Building and running

First, make sure you are inside this repository's directory:

```bash
cd <path/to/repo>
```

Then, start the container:

```bash
docker-compose up --detach # starts the container in the background of your terminal
```

At this point, the Jupyter Notebook will be running at `http:localhost:8888`.

### Installing new packages

If you wish to install additional packages to the container, do the following:

```bash
docker exec -it pyspark_notebook /bin/bash # execute the container's bash
conda install <package>
# or `pip install <package>`
```

If you need `root` permissions to do this, use the following command:

```bash
docker exec -it --user root pyspark_notebook /bin/bash # execute the container's bash
sudo apt install <package>
# or `sudo apt update && sudo apt upgrade`             # updates installed packages
```

### Wrapping up

Once you're done, you may remove what was created by `up` with the following command:

```bash
docker-compose down # stops containers and removes containers, networks, volumes, and images created by `up`
```

### Permission error

If when stating the docker raises "Permission error" on the terminal, run:
```bash
sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo systemctl restart docker
sudo chmod 666 /var/run/docker.sock
```
Dont worry if some of them raise some error, just execute all.
