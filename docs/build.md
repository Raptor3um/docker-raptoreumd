Building
========

The image can be built from source by running:

        docker build .

A recommended security practice is to add an additional unprivileged user to run the daemon as on the host. For example, as a privileged user, run this on the host:

        useradd raptoreumd

To build an image which uses this unprivileged user's id and group id, run:

        docker build --build-arg USER_ID=$( id -u raptoreumd ) --build-arg GROUP_ID=$( id -g raptoreumd ) .

Now, when the container is run with the default options, the raptoreumd process will only have the privileges of the raptoreumd user on the host machine. This is especially important for a process such as raptoreumd which runs as a network service exposed to the internet.
