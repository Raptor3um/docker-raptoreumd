raptoreumd config tuning
======================

You can use environment variables to customize config ([see docker run environment options](https://docs.docker.com/engine/reference/run/#/env-environment-variables)):

        docker run -v raptoreumd-data:/raptoreum/.raptoreum --name=raptoreumd-node -d \
            -p 8333:8333 \
            -p 127.0.0.1:8332:8332 \
            -e REGTEST=0 \
            -e DISABLEWALLET=1 \
            -e PRINTTOCONSOLE=1 \
            -e RPCUSER=mysecretrpcuser \
            -e RPCPASSWORD=mysecretrpcpassword \
            kylemanna/raptoreumd

Or you can use your very own config file like that:

        docker run -v raptoreumd-data:/raptoreum/.raptoreum --name=raptoreumd-node -d \
            -p 8333:8333 \
            -p 127.0.0.1:8332:8332 \
            -v /etc/myraptoreum.conf:/raptoreum/.raptoreum/raptoreum.conf \
            kylemanna/raptoreumd
