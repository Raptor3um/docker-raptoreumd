# Debugging

## Things to Check

* RAM utilization -- raptoreumd is very hungry and typically needs in excess of 1GB.  A swap file might be necessary.
* Disk utilization -- The raptoreum blockchain will continue growing and growing and growing.  Then it will grow some more.  At the time of writing, 40GB+ is necessary.

## Viewing raptoreumd Logs

    docker logs raptoreumd-node


## Running Bash in Docker Container

*Note:* This container will be run in the same way as the raptoreumd node, but will not connect to already running containers or processes.

    docker run -v raptoreumd-data:/raptoreum --rm -it kylemanna/raptoreumd bash -l

You can also attach bash into running container to debug running raptoreumd

    docker exec -it raptoreumd-node bash -l


